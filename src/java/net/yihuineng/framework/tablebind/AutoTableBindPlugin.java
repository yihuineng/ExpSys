package net.yihuineng.framework.tablebind;

import java.util.List;

import javax.sql.DataSource;

import com.google.common.collect.Lists;
import com.jfinal.kit.StrKit;
import com.jfinal.log.Log;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.IDataSourceProvider;
import com.jfinal.plugin.activerecord.Model;

import net.yihuineng.framework.kit.ClassSearchKit;

/**
 * Created by wangrenhui on 14-4-11.
 */
public class AutoTableBindPlugin extends ActiveRecordPlugin {

	protected final Log log = Log.getLog(getClass());

	private List<Class<? extends Model<?>>> excludeClasses = Lists.newArrayList();
	private List<Class<? extends Model<?>>> includeClasses = Lists.newArrayList();
	private List<String> includeClassPaths = Lists.newArrayList();
	private List<String> excludeClassPaths = Lists.newArrayList();
	// private List<String> includeJars = Lists.newArrayList();
	private boolean autoScan = false;
	// private boolean includeAllJarsInLib;

	public AutoTableBindPlugin(DataSource dataSource) {
		super(dataSource);
	}

	public AutoTableBindPlugin(IDataSourceProvider dataSourceProvider) {
		super(dataSourceProvider);
	}

	public AutoTableBindPlugin(String dataSourceName, IDataSourceProvider dataSourceProvider) {
		super(dataSourceName, dataSourceProvider);
	}

	@SuppressWarnings({ "unchecked" })
	public AutoTableBindPlugin addExcludeClasses(Class<? extends Model<?>>... clazzes) {
		for (Class<? extends Model<?>> clazz : clazzes) {
			excludeClasses.add(clazz);
		}
		return this;
	}

	public AutoTableBindPlugin addExcludeClasses(List<Class<? extends Model<?>>> clazzes) {
		if (clazzes != null) {
			excludeClasses.addAll(clazzes);
		}
		return this;
	}

	public AutoTableBindPlugin addExcludePaths(String... paths) {
		for (String path : paths) {
			excludeClassPaths.add(path);
		}
		return this;
	}

	@SuppressWarnings("unchecked")
	public AutoTableBindPlugin addIncludeClasses(Class<? extends Model<?>>... clazzes) {
		for (Class<? extends Model<?>> clazz : clazzes) {
			includeClasses.add(clazz);
		}
		return this;
	}

	public AutoTableBindPlugin addIncludeClasses(List<Class<? extends Model<?>>> clazzes) {
		if (clazzes != null) {
			includeClasses.addAll(clazzes);
		}
		return this;
	}

	public AutoTableBindPlugin addIncludePaths(String... paths) {
		for (String path : paths) {
			includeClassPaths.add(path);
		}
		return this;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public boolean start() {
		if (includeClasses.size() <= 0) {
			// includeClasses =
			// ClassSearcherExt.of(Model.class).includepaths(includeClassPaths).injars(includeJars).includeAllJarsInLib(includeAllJarsInLib).search();
			includeClasses = ClassSearchKit.of(Model.class).includepaths(includeClassPaths).search("*Model.class");
		}
		TableBind tb = null;
		for (Class modelClass : includeClasses) {
			boolean isexclude = false;
			if (excludeClassPaths.size() > 0) {
				for (String excludepath : excludeClassPaths) {
					if (modelClass.getName().startsWith(excludepath)) {
						log.debug("exclude model:" + modelClass.getName());
						isexclude = true;
						break;
					}
				}
			}
			if (isexclude || excludeClasses.contains(modelClass)) {
				continue;
			}
			
			tb = (TableBind) modelClass.getAnnotation(TableBind.class);
			String tableName = modelClass.getSimpleName().replaceAll("Model$", "");
			if (tb == null) {
				if (!autoScan) {
					continue;
				}
				this.addMapping(tableName, modelClass);
				log.debug("addMapping(" + tableName + ", " + modelClass.getName() + ")");
			} else {
				tableName = tb.tableName();
				if (StrKit.notBlank(tb.pkName())) {
					this.addMapping(tableName, tb.pkName(), modelClass);
					log.debug("addMapping(" + tableName + ", " + tb.pkName() + "," + modelClass.getName() + ")");
				} else {
					this.addMapping(tableName, modelClass);
					log.debug("addMapping(" + tableName + ", " + modelClass.getName() + ")");
				}
			}
		}
		return super.start();
	}

	@Override
	public boolean stop() {
		return super.stop();
	}

	public AutoTableBindPlugin autoScan(boolean autoScan) {
		this.autoScan = autoScan;
		return this;
	}
}
