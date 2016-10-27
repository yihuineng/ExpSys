package net.yihuineng.framework.routebind;

import java.util.List;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.jfinal.config.Routes;
import com.jfinal.core.Controller;
import com.jfinal.kit.StrKit;
import com.jfinal.log.Log;

import net.yihuineng.framework.kit.ClassSearchKit;
import net.yihuineng.framework.kit.SourceCodeSpecKit;

/**
 * Created by wangrenhui on 14-1-2.
 */
public class AutoBindRoutes extends Routes {

	private boolean autoScan = true;

	private List<Class<? extends Controller>> excludeClasses = Lists.newArrayList();
	private List<Class<? extends Controller>> includeClasses = Lists.newArrayList();
	private List<String> includeClassPaths = Lists.newArrayList();
	private List<String> excludeClassPaths = Lists.newArrayList();

	protected final Log logger = Log.getLog(getClass());

	private String suffix = "Controller";

	public AutoBindRoutes autoScan(boolean autoScan) {
		this.autoScan = autoScan;
		return this;
	}

	@SuppressWarnings({ "unchecked" })
	public AutoBindRoutes addExcludeClasses(Class<? extends Controller>... clazzes) {
		for (Class<? extends Controller> clazz : clazzes) {
			excludeClasses.add(clazz);
		}
		return this;
	}

	public AutoBindRoutes addExcludeClasses(List<Class<? extends Controller>> clazzes) {
		if (clazzes != null) {
			excludeClasses.addAll(clazzes);
		}
		return this;
	}

	public AutoBindRoutes addExcludePaths(String... paths) {
		for (String path : paths) {
			excludeClassPaths.add(path);
		}
		return this;
	}

	@SuppressWarnings({ "unchecked" })
	public AutoBindRoutes addIncludeClasses(Class<? extends Controller>... clazzes) {
		for (Class<? extends Controller> clazz : clazzes) {
			includeClasses.add(clazz);
		}
		return this;
	}

	public AutoBindRoutes addIncludeClasses(List<Class<? extends Controller>> clazzes) {
		if (clazzes != null) {
			includeClasses.addAll(clazzes);
		}
		return this;
	}

	public AutoBindRoutes addIncludePaths(String... paths) {
		for (String path : paths) {
			includeClassPaths.add(path);
		}
		return this;
	}

	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void config() {
		List<Class<? extends Controller>> controllerClasses = ClassSearchKit.of(Controller.class).includepaths(includeClassPaths).search();
		ControllerKey controllerKey = null;
		for (Class controller : controllerClasses) {
			if (excludeClasses.contains(controller)) {
				continue;
			}
			controllerKey = (ControllerKey) controller.getAnnotation(ControllerKey.class);
			if (controllerKey == null) {
				if (!autoScan) {
					continue;
				}
				this.add(controllerKey(controller), controller);
				logger.debug("routes.add(" + controllerKey(controller) + ", " + controller.getName() + ")");
			} else if (StrKit.isBlank(controllerKey.path())) {
				this.add(controllerKey.value(), controller);
				logger.debug("routes.add(" + controllerKey.value() + ", " + controller.getName() + ")");
			} else {
				this.add(controllerKey.value(), controller, controllerKey.path());
				logger.debug("routes.add(" + controllerKey.value() + ", " + controller + "," + controllerKey.path() + ")");
			}
		}
	}

	private String controllerKey(Class<Controller> clazz) {
		Preconditions.checkArgument(clazz.getSimpleName().endsWith(suffix), clazz.getSimpleName() + " does not has a @ControllerKey annotation and it's name is not end with " + suffix);
		String simpleName = clazz.getSimpleName();
		String controllerKey = clazz.getPackage().getName().replaceAll("^net.yihuineng", "").replaceAll("\\.controller$", "\\.").replaceAll("\\.controller\\.", "\\.").replaceAll("\\.", "/");
		if (!controllerKey.endsWith("/")) {
			controllerKey += "/";
		}
		if (!simpleName.equalsIgnoreCase(suffix)) {
			controllerKey += SourceCodeSpecKit.getLowerCamelCase(simpleName.replace(suffix, ""));
		}
		return controllerKey;
	}

	public AutoBindRoutes suffix(String suffix) {
		this.suffix = suffix;
		return this;
	}

}
