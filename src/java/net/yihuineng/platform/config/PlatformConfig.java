package net.yihuineng.platform.config;

import java.util.Set;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.render.FreeMarkerRender;
import com.jfinal.render.ViewType;

import freemarker.ext.beans.BeansWrapper;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModelException;
import net.yihuineng.framework.handler.ResourceHandler;
import net.yihuineng.framework.rest.RestKit;
import net.yihuineng.framework.routebind.AutoBindRoutes;
import net.yihuineng.framework.shiro.ShiroInterceptor;
import net.yihuineng.framework.shiro.freemarker.ShiroTags;
import net.yihuineng.framework.sqlinxml.SqlInXmlPlugin;
import net.yihuineng.platform.controller.IndexController;
import net.yihuineng.platform.controller.PermissionController;
import net.yihuineng.platform.shiro.DefaultMenuAuthzProvider;

public class PlatformConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("application.properties");
		if (isDevMode()) {
			try {
				Prop prop = PropKit.use("application-dev.properties");
				Set<String> devPropNames = prop.getProperties().stringPropertyNames();
				for (String devPropName : devPropNames) {
					PropKit.getProp().getProperties().put(devPropName, prop.get(devPropName));
				}
				PropKit.useless("application-dev.properties");
			} catch (Exception e) {
				System.err.println("未能加载开发配置文件：application-dev.properties");
			}
		}

		me.setDevMode(isDevMode());
		me.setEncoding("UTF-8");
		me.setViewType(ViewType.FREE_MARKER);
		me.setBaseViewPath("/WEB-INF/view/");
		me.setFreeMarkerViewExtension(".ftl");
		

		me.setError401View("/WEB-INF/view/error/401.ftl");
		me.setError403View("/WEB-INF/view/error/403.ftl");
		me.setError404View("/WEB-INF/view/error/404.ftl");
		me.setError500View("/WEB-INF/view/error/500.ftl");
	}

	@Override
	public void configRoute(Routes routes) {
		routes.add("/", IndexController.class);
		AutoBindRoutes autoBindRoutes = new AutoBindRoutes();
		autoBindRoutes.addIncludePaths("net/yihuineng/codegen/", "net/yihuineng/platform/");
		routes.add(autoBindRoutes);
	}

	@Override
	public void configPlugin(Plugins plugins) {
		plugins.add(new EhCachePlugin());
		plugins.add(new SqlInXmlPlugin());
		
		// quartz 任务
		//plugins.add(new QuartzPlugin("job.properties"));
	}

	@Override
	public void configHandler(Handlers handlers) {
		handlers.add(new DruidStatViewHandler("/druid"));
		handlers.add(new ContextPathHandler());
		handlers.add(new ResourceHandler("/apidoc/**", "/javascript/**", "/images/**", "/css/**", "/lib/**", "/**/*.html", "/**/*.css", "/**/*.js", "/**/*.png", "/**/*.gif", "/**/*.jpg"));

		RestKit.buildHandler(handlers);
	}

	@Override
	public void configInterceptor(Interceptors interceptors) {
		// shiro 权限框架
		interceptors.add(new ShiroInterceptor(new DefaultMenuAuthzProvider()).setDevMode(isDevMode()));
	}

	@Override
	public void afterJFinalStart() {
		FreeMarkerRender.setProperty("auto_import", "/WEB-INF/view/common/macro.ftl as p");
		FreeMarkerRender.getConfiguration().setTemplateExceptionHandler(TemplateExceptionHandler.HTML_DEBUG_HANDLER);
		FreeMarkerRender.getConfiguration().setSharedVariable("shiro", new ShiroTags());

		BeansWrapper wrapper = BeansWrapper.getDefaultInstance();
		TemplateHashModel staticModels = wrapper.getStaticModels();
		try {
			FreeMarkerRender.getConfiguration().setSharedVariable("_StrKit", staticModels.get("net.yihuineng.framework.kit.StrKit"));
			FreeMarkerRender.getConfiguration().setSharedVariable("_DateKit", staticModels.get("net.yihuineng.framework.kit.DateKit"));
		} catch (TemplateModelException e) {
			e.printStackTrace();
		}
	};

	protected boolean isDevMode() {
		return getPropertyToBoolean("devMode", false);
	}
}
