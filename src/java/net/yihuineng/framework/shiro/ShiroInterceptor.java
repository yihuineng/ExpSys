package net.yihuineng.framework.shiro;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Action;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;

import net.yihuineng.framework.shiro.handler.AuthenticatedAuthzHandler;
import net.yihuineng.framework.shiro.handler.AuthzHandler;
import net.yihuineng.framework.shiro.handler.GuestAuthzHandler;
import net.yihuineng.framework.shiro.handler.MenuPermissionAuthzHandler;
import net.yihuineng.framework.shiro.handler.PermissionAuthzHandler;
import net.yihuineng.framework.shiro.handler.RoleAuthzHandler;
import net.yihuineng.framework.shiro.handler.UserAuthzHandler;

public class ShiroInterceptor implements Interceptor {

	private static final String SLASH = "/";

	/**
	 * Shiro的几种访问控制注解
	 */
	@SuppressWarnings("unchecked")
	private static final Class<? extends Annotation>[] AUTHZ_ANNOTATION_CLASSES = new Class[] { RequiresPermissions.class, RequiresRoles.class, RequiresUser.class, RequiresGuest.class, RequiresAuthentication.class };

	/**
	 * 用来记录那个action或者actionpath中是否有shiro认证注解。
	 */
	private static Map<String, List<AuthzHandler>> authzMaps = null;

	private MenuAuthzProviderIF menuAuthzService; // 菜单权限服务
	
	private boolean devMode = false;

	public ShiroInterceptor(MenuAuthzProviderIF menuAuthzService) {
		this.menuAuthzService = menuAuthzService;
	}

	public boolean getDevMode() {
		return devMode;
	}
	
	public ShiroInterceptor setDevMode(boolean devMode) {
		this.devMode = devMode;
		return this;
	}

	/**
	 * 因为AllActionKey要再JFinal初始化完成后，才能获取到值，因此将authzMaps缓存设计为惰性加载。
	 */
	protected void initAuthzMaps() {
		if (authzMaps == null) {
			synchronized (ShiroInterceptor.class) {
				if (authzMaps == null) {
					loatAuthzMaps();
				}
			}
		}
	}

	/**
	 * 加载权限缓存
	 */
	private void loatAuthzMaps() {
		authzMaps = Maps.newHashMap();

		JFinal jfinal = JFinal.me();
		List<String> allActionKeys = jfinal.getAllActionKeys();

		HashMap<String, ? extends AuthzHandler> menuAuthzMap = buildMenuAuthzMap(allActionKeys);

		for (String actionKey : allActionKeys) {
			// 逐个访问所有注册的Controller，解析Controller及action上的所有Shiro注解。
			// 并依据这些注解，actionKey提前构建好权限检查处理器。
			Action action = jfinal.getAction(actionKey, new String[] { null });
			Class<? extends Controller> controllerClass = action.getControllerClass();
			Method method = action.getMethod();

			// 若该方法上存在ClearShiro注解，则对该action不进行访问控制检查。
			if (isClearShiroAnnotationPresent(method)) {
				continue;
			}

			// 非调试模式下，添加菜单权限映射
			if (!getDevMode()) {
				addAuthzHandler(authzMaps, actionKey, menuAuthzMap.get(actionKey));
			}

			// 获取Controller的所有Shiro注解。
			List<Annotation> controllerAnnotations = getAuthzAnnotations(controllerClass);
			// 获取方法的所有Shiro注解。
			List<Annotation> methodAnnotations = getAuthzAnnotations(method);
			// 依据Controller的注解和方法的注解来生成访问控制处理器。
			List<AuthzHandler> authzHandlerList = createAuthzHandler(controllerAnnotations, methodAnnotations);

			// 生成访问控制处理器成功。
			if (authzHandlerList != null) {
				// 添加注解权限映射
				addAuthzHandler(authzMaps, actionKey, authzHandlerList);
			}
		}
	}

	@Override
	public void intercept(Invocation ai) {
		initAuthzMaps();
		// 路径权限 //注解权限
		List<AuthzHandler> ahs = getAuthzHandler(ai.getActionKey());
		// 权限验证
		if (assertNoAuthorized(ai, ahs))
			return;
		// 执行正常逻辑
		ai.invoke();
	}

	protected static List<AuthzHandler> getAuthzHandler(String actionKey) {
		return authzMaps.get(actionKey);
	}

	/**
	 * 权限检查
	 *
	 * @param ai
	 * @param ahs
	 * @return
	 */
	private boolean assertNoAuthorized(Invocation ai, List<AuthzHandler> ahs) {

		// 存在访问控制处理器。
		if (ahs != null && ahs.size() > 0) {

			// 登录前访问页面缓存
			if (!ShiroKit.isAuthed()) {
				WebUtils.saveRequest(ai.getController().getRequest());
			}

			// rememberMe自动登录
			Subject subject = SecurityUtils.getSubject();
			if (!subject.isAuthenticated() && subject.isRemembered()) {
				Object principal = subject.getPrincipal();
				if (principal == null) {
					SecurityUtils.getSubject().logout();
				}
			}

			try {
				// 执行权限检查。
				for (AuthzHandler ah : ahs) {
					ah.assertAuthorized();
				}
			} catch (UnauthenticatedException lae) {
				// RequiresGuest，RequiresAuthentication，RequiresUser，未满足时，抛出未经授权的异常。
				// 如果没有进行身份验证，返回HTTP401状态码
				ai.getController().renderError(401);
				return true;
			} catch (AuthorizationException ae) {
				// RequiresRoles，RequiresPermissions授权异常
				// 如果没有权限访问对应的资源，返回HTTP状态码403。
				ai.getController().renderError(403);
				return true;
			} catch (Exception e) {
				// 出现了异常，应该是没有登录。
				ai.getController().renderError(401);
				return true;
			}
		}
		return false;
	}

	private void addAuthzHandler(Map<String, List<AuthzHandler>> authzMaps, String actionKey, AuthzHandler menuAuthzHandler) {
		if (menuAuthzHandler == null) {
			return;
		}

		if (!authzMaps.containsKey(actionKey)) {
			List<AuthzHandler> authzHandlerList = Lists.newArrayList();
			authzHandlerList.add(menuAuthzHandler);
			authzMaps.put(actionKey, authzHandlerList);
		} else {
			authzMaps.get(actionKey).add(menuAuthzHandler);
		}
	}

	private void addAuthzHandler(Map<String, List<AuthzHandler>> authzMaps, String actionKey, List<AuthzHandler> authzHandlerList) {
		if (authzHandlerList == null) {
			return;
		}

		if (!authzMaps.containsKey(actionKey)) {
			authzMaps.put(actionKey, authzHandlerList);
		} else {
			authzMaps.get(actionKey).addAll(authzHandlerList);
		}
	}

	private HashMap<String, ? extends AuthzHandler> buildMenuAuthzMap(List<String> allActionKeys) {
		HashMap<String, MenuPermissionAuthzHandler> authzMap = Maps.newHashMap();
		Map<String, String> urlPermissionMap = menuAuthzService.loadMenuAuthzMap();
		for (Entry<String, String> entry : urlPermissionMap.entrySet()) {
			String url = entry.getKey();
			String permission = entry.getValue();
			String actionKey = getActionKey(allActionKeys, url);
			if (authzMap.containsKey(actionKey)) {
				authzMap.get(actionKey).addPermission(permission);
			} else {
				authzMap.put(actionKey, new MenuPermissionAuthzHandler(permission));
			}
		}
		return authzMap;
	}

	/**
	 * 参考ActionHandler，根据url查找actionKey
	 * 
	 * @param url
	 * @param allActionKeys
	 * @return
	 */
	private String getActionKey(List<String> allActionKeys, String url) {
		if (!url.startsWith("/")) {
			url = "/" + url;
		}
		url = url.replaceAll("[?#].*$", "");
		if (url.endsWith("/")) {
			url = url.substring(0, url.length() - 1);
		}

		if (allActionKeys.contains(url)) {
			return url;
		}

		// --------
		int i = url.lastIndexOf(SLASH);
		if (i != -1) {
			url = url.substring(0, i);
			if (allActionKeys.contains(url)) {
				return url;
			}
		}

		return null;
	}

	/**
	 * 依据Controller的注解和方法的注解来生成访问控制处理器。
	 *
	 * @param controllerAnnotations
	 *            Controller的注解
	 * @param methodAnnotations
	 *            方法的注解
	 * @return 访问控制处理器
	 */
	private List<AuthzHandler> createAuthzHandler(List<Annotation> controllerAnnotations, List<Annotation> methodAnnotations) {
		// 没有注解
		if (controllerAnnotations.size() == 0 && methodAnnotations.size() == 0) {
			return null;
		}
		// 至少有一个注解
		List<AuthzHandler> authzHandlers = new ArrayList<AuthzHandler>(5);
		for (int index = 0; index < 5; index++) {
			authzHandlers.add(null);
		}

		// 逐个扫描注解，若是相应的注解则在相应的位置赋值。
		scanAnnotation(authzHandlers, controllerAnnotations);
		// 逐个扫描注解，若是相应的注解则在相应的位置赋值。函数的注解优先级高于Controller
		scanAnnotation(authzHandlers, methodAnnotations);

		// 去除空值
		List<AuthzHandler> finalAuthzHandlers = new ArrayList<AuthzHandler>();
		for (AuthzHandler a : authzHandlers) {
			if (a != null) {
				finalAuthzHandlers.add(a);
			}
		}
		return finalAuthzHandlers;
	}

	/**
	 * 逐个扫描注解，若是相应的注解则在相应的位置赋值。 注解的处理是有顺序的，依次为RequiresRoles，RequiresPermissions，
	 * RequiresAuthentication，RequiresUser，RequiresGuest
	 *
	 * @param authzArray
	 * @param annotations
	 */
	private void scanAnnotation(List<AuthzHandler> authzArray, List<Annotation> annotations) {
		if (null == annotations || 0 == annotations.size()) {
			return;
		}
		for (Annotation a : annotations) {
			if (a instanceof RequiresRoles) {
				authzArray.set(0, new RoleAuthzHandler(a));
			} else if (a instanceof RequiresPermissions) {
				authzArray.set(1, new PermissionAuthzHandler(a));
			} else if (a instanceof RequiresAuthentication) {
				authzArray.set(2, AuthenticatedAuthzHandler.me());
			} else if (a instanceof RequiresUser) {
				authzArray.set(3, UserAuthzHandler.me());
			} else if (a instanceof RequiresGuest) {
				authzArray.set(4, GuestAuthzHandler.me());
			}
		}
	}

	/**
	 * 返回该方法的所有访问控制注解
	 *
	 * @param method
	 * @return
	 */
	private List<Annotation> getAuthzAnnotations(Method method) {
		List<Annotation> annotations = new ArrayList<Annotation>();
		for (Class<? extends Annotation> annClass : AUTHZ_ANNOTATION_CLASSES) {
			Annotation a = method.getAnnotation(annClass);
			if (a != null) {
				annotations.add(a);
			}
		}
		return annotations;
	}

	/**
	 * 返回该Controller的所有访问控制注解
	 *
	 * @return
	 */
	private List<Annotation> getAuthzAnnotations(Class<? extends Controller> targetClass) {
		List<Annotation> annotations = new ArrayList<Annotation>();
		for (Class<? extends Annotation> annClass : AUTHZ_ANNOTATION_CLASSES) {
			Annotation a = targetClass.getAnnotation(annClass);
			if (a != null) {
				annotations.add(a);
			}
		}
		return annotations;
	}

	/**
	 * 该方法上是否有ClearShiro注解
	 *
	 * @param method
	 * @return
	 */
	private boolean isClearShiroAnnotationPresent(Method method) {
		Annotation a = method.getAnnotation(ClearShiro.class);
		if (a != null) {
			return true;
		}
		return false;
	}
}
