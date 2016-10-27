package net.yihuineng.app.api;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;

import com.google.common.collect.Lists;
import com.jfinal.core.Action;
import com.jfinal.core.JFinal;
import com.jfinal.handler.Handler;
import com.jfinal.kit.JsonKit;
import com.jfinal.log.Log;

import net.yihuineng.framework.rest.ApiAnonymous;
import net.yihuineng.framework.rest.ApiSkipDriverAccess;
import net.yihuineng.framework.rest.RestResponse;
import net.yihuineng.framework.rest.shiro.ApiBearerToken;
import net.yihuineng.framework.shiro.ShiroKit;

public class DriverAccessHandler extends Handler {

	private final Log log = Log.getLog(getClass());

	private boolean initialized = false;
	private String[] baseUrls;
	private List<String> anonymousUrls = Lists.newArrayList();
	private List<String> skipDriverAccessUrls = Lists.newArrayList();

	public DriverAccessHandler(String... baseUrls) {
		this.baseUrls = baseUrls;
	}

	private void init() {
		if (!initialized) {
			synchronized (DriverAccessHandler.class) {
				if (!initialized) {
					
					JFinal jfinal = JFinal.me();
					List<String> allActionKeys = jfinal.getAllActionKeys();

					// 逐个访问所有注册的Controller，解析Controller及action上的所有api注解。
					for (String actionKey : allActionKeys) {
						Action action = jfinal.getAction(actionKey, new String[] { null });
						if (!matchBaseUrl(actionKey)) {
							continue;
						}

						Method method = action.getMethod();
						if (method.getAnnotation(ApiAnonymous.class) != null) {
							anonymousUrls.add(actionKey);
						} else if (method.getAnnotation(ApiSkipDriverAccess.class) != null) {
							skipDriverAccessUrls.add(actionKey);
						}
					}
					
					initialized = true;
				}
			}
		}
	}

	@Override
	public void handle(String target, HttpServletRequest request, HttpServletResponse response, boolean[] isHandled) {
		if (!matchBaseUrl(target)) {
			nextHandler.handle(target, request, response, isHandled);
			return;
		}
		
		init(); // 惰性初始化该实例，解析接口访问注解

		if (!authToken(request, response)) {
			if (!anonymousUrls.contains(target)) {
				out(response, -1004, "无效的用户凭证");
				isHandled[0] = true;
				return;
			} else {
				nextHandler.handle(target, request, response, isHandled);
				return;
			}
		}

		if (skipDriverAccessUrls.contains(target)) {
			nextHandler.handle(target, request, response, isHandled);
			return;
		}

		// 检查设备是否有备案
		/*/
		RestResponse restResponse = new RestResponse();
		String ua = request.getHeader("user-agent");
		boolean result = new DriverAccessService(ShiroKit.getCurrentUser().getUserCode(), ua).check(restResponse);

		if (result) {
			nextHandler.handle(target, request, response, isHandled);
		} else {
			out(response, restResponse);
			isHandled[0] = true;
		}
		//*/
		nextHandler.handle(target, request, response, isHandled);
	}

	protected boolean matchBaseUrl(String target) {
		if (baseUrls != null && baseUrls.length > 0) {
			for (String url : baseUrls) {
				if (target.startsWith(url)) {
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * 根据token进行身份认证
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	protected boolean authToken(HttpServletRequest request, HttpServletResponse response) {
		String authorization = request.getHeader("authorization");
		if (authorization == null || !authorization.startsWith("Bearer ")) {
			return ShiroKit.isAuthed();
		}

		String bearerToken = authorization.substring(7);
		try {
			SecurityUtils.getSubject().login(new ApiBearerToken(bearerToken));
			return true;
		} catch (AuthenticationException e) {
			log.debug("认证失败：无效的api bearer token", e);
			return false;
		}
	}

	protected void out(HttpServletResponse response, int status, String message) {
		out(response, new RestResponse().setError(status, message));
	}

	protected void out(HttpServletResponse response, RestResponse restResponse) {
		try {
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			response.setContentType("application/json; charset=utf-8");

			response.getWriter().print(JsonKit.toJson(restResponse));
		} catch (IOException e) {
			log.error(e.getMessage(), e);
		}
	}

}
