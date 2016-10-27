package net.yihuineng.app.config;

import com.jfinal.config.Handlers;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.dialect.SqlServerDialect;

import net.yihuineng.app.api.DriverAccessHandler;
import net.yihuineng.framework.data.YhnContainerFactory;
import net.yihuineng.framework.plugin.DruidPlugin;
import net.yihuineng.framework.routebind.AutoBindRoutes;
import net.yihuineng.framework.tablebind.AutoTableBindPlugin;
import net.yihuineng.platform.config.PlatformConfig;

public class AppConfig extends PlatformConfig {

	@Override
	public void configRoute(Routes routes) {
		super.configRoute(routes);
		
		AutoBindRoutes autoBindRoutes = new AutoBindRoutes();
		autoBindRoutes.addIncludePaths("net/yihuineng/app/api");
		autoBindRoutes.addIncludePaths("net/yihuineng/project");
		routes.add(autoBindRoutes);
	}
	
	@Override
	public void configPlugin(Plugins plugins) {
		super.configPlugin(plugins);
		
		// 配置druid连接池 大数据开源分布式系统 用于监控统计
		DruidPlugin druidDefault = new DruidPlugin();
	    plugins.add(druidDefault);
	    
	    AutoTableBindPlugin arp = new AutoTableBindPlugin(druidDefault);
	    arp.autoScan(true);
	    arp.addIncludePaths("net/yihuineng/app/", "net/yihuineng/project/","net/yihuineng/platform/", "net/yihuineng/codegen/");
	    // 配置大小写不敏感
	    arp.setContainerFactory(new YhnContainerFactory());
	    arp.setDialect(new SqlServerDialect());
	    arp.setDevMode(true);
	    arp.setShowSql(true);

	    plugins.add(arp);
	}
	
	@Override
	public void configHandler(Handlers handlers) {
		super.configHandler(handlers);
		handlers.add(new DriverAccessHandler("/api/"));
	}

}
