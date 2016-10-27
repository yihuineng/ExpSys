package net.yihuineng.framework.plugin;

import java.sql.SQLException;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSource;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.IPlugin;
import com.jfinal.plugin.activerecord.IDataSourceProvider;

/**
 * DruidPlugin.
 */
public class DruidPlugin implements IPlugin, IDataSourceProvider {
	
	// 基本属性 url、user、password
	private String url;
	private String username;
	private String password;
	private String driverClass = null;	// 由 "com.mysql.jdbc.Driver" 改为 null 让 druid 自动探测 driverClass 值
	
	// 初始连接池大小、最小空闲连接数、最大活跃连接数
	private int initialSize;
	private int minIdle;
	private int maxActive;
	
	// 配置获取连接等待超时的时间
	private long maxWait;
	
	// 配置间隔多久才进行一次检测，检测需要关闭的空闲连接，单位是毫秒
	private long timeBetweenEvictionRunsMillis;
	// 配置连接在池中最小生存的时间
	private long minEvictableIdleTimeMillis;
	// 配置发生错误时多久重连
	private long timeBetweenConnectErrorMillis;
	
	/**
	 * hsqldb - "select 1 from INFORMATION_SCHEMA.SYSTEM_USERS"
	 * Oracle - "select 1 from dual"
	 * DB2 - "select 1 from sysibm.sysdummy1"
	 * mysql - "select 1"
	 */
	private String validationQuery;
	private int validationQueryTimeout;
	private boolean testWhileIdle;
	private boolean testOnBorrow;
	private boolean testOnReturn;
	
	// 是否打开连接泄露自动检测
	private boolean removeAbandoned;
	// 连接长时间没有使用，被认为发生泄露时长
	private long removeAbandonedTimeoutMillis;
	// 发生泄露时是否需要输出 log，建议在开启连接泄露检测时开启，方便排错
	private boolean logAbandoned;
	
	// 是否缓存preparedStatement，即PSCache，对支持游标的数据库性能提升巨大，如 oracle、mysql 5.5 及以上版本
	//private boolean poolPreparedStatements = true;	// oracle、mysql 5.5 及以上版本建议为 true;
	
	// 只要maxPoolPreparedStatementPerConnectionSize>0,poolPreparedStatements就会被自动设定为true，使用oracle时可以设定此值。
	private int maxPoolPreparedStatementPerConnectionSize;
	
	// 配置监控统计拦截的filters
	private String filters;	// 监控统计："stat"    防SQL注入："wall"     组合使用： "stat,wall"
	
	private DruidDataSource ds;
	
	public DruidPlugin() {
		this("default");
	}
	
	public DruidPlugin(String dbConfigName) {
		// 基本属性 url、user、password
		this.url = PropKit.get("db." + dbConfigName + ".url");
		this.username = PropKit.get("db." + dbConfigName + ".username");
		this.password = PropKit.get("db." + dbConfigName + ".password");
		this.driverClass = PropKit.get("db." + dbConfigName + ".driverClass");
		
		// 初始连接池大小、最小空闲连接数、最大活跃连接数
		this.initialSize = PropKit.getInt("db." + dbConfigName + ".initialSize", DruidDataSource.DEFAULT_INITIAL_SIZE);
		this.minIdle = PropKit.getInt("db." + dbConfigName + ".minIdle", DruidDataSource.DEFAULT_MIN_IDLE);
		this.maxActive = PropKit.getInt("db." + dbConfigName + ".maxActive", DruidDataSource.DEFAULT_MAX_ACTIVE_SIZE);
		
		// 配置获取连接等待超时的时间
		this.maxWait = PropKit.getInt("db." + dbConfigName + ".maxWait", DruidDataSource.DEFAULT_MAX_WAIT);
		
		// 配置间隔多久才进行一次检测，检测需要关闭的空闲连接，单位是毫秒
		this.timeBetweenEvictionRunsMillis = PropKit.getLong("db." + dbConfigName + ".timeBetweenEvictionRunsMillis", DruidDataSource.DEFAULT_TIME_BETWEEN_EVICTION_RUNS_MILLIS);
		
		// 配置连接在池中最小生存的时间
		this.minEvictableIdleTimeMillis = PropKit.getLong("db." + dbConfigName + ".minEvictableIdleTimeMillis", DruidDataSource.DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS);
		
		// 配置发生错误时多久重连
		this.timeBetweenConnectErrorMillis = PropKit.getLong("db." + dbConfigName + ".timeBetweenConnectErrorMillis", DruidDataSource.DEFAULT_TIME_BETWEEN_CONNECT_ERROR_MILLIS);
		
		this.validationQuery = PropKit.get("db." + dbConfigName + ".validationQuery");
		this.validationQueryTimeout = PropKit.getInt("db." + dbConfigName + ".validationQueryTimeout", -1);
		this.testOnBorrow = PropKit.getBoolean("db." + dbConfigName + ".testOnBorrow", DruidDataSource.DEFAULT_TEST_ON_BORROW);
		this.testOnReturn = PropKit.getBoolean("db." + dbConfigName + ".testOnReturn", DruidDataSource.DEFAULT_TEST_ON_RETURN);
		this.testWhileIdle = PropKit.getBoolean("db." + dbConfigName + ".testWhileIdle", DruidDataSource.DEFAULT_WHILE_IDLE);
		
		// 是否打开连接泄露自动检测
		this.removeAbandoned = PropKit.getBoolean("db." + dbConfigName + ".removeAbandoned", false);
		// 连接长时间没有使用，被认为发生泄露时长
		this.removeAbandonedTimeoutMillis = PropKit.getLong("db." + dbConfigName + ".removeAbandonedTimeoutMillis", 300 * 1000L);
		// 发生泄露时是否需要输出 log，建议在开启连接泄露检测时开启，方便排错
		this.logAbandoned = PropKit.getBoolean("db." + dbConfigName + ".logAbandoned", false);
		
		// 只要maxPoolPreparedStatementPerConnectionSize>0,poolPreparedStatements就会被自动设定为true，使用oracle时可以设定此值。
		this.maxPoolPreparedStatementPerConnectionSize = PropKit.getInt("db." + dbConfigName + ".maxPoolPreparedStatementPerConnectionSize", 10);
		
		// 配置监控统计拦截的filters 监控统计："stat"    防SQL注入："wall"     组合使用： "stat,wall"
		this.filters = PropKit.get("db." + dbConfigName + ".filters");; 
	}
	
	public boolean start() {
		ds = new DruidDataSource();
		
		ds.setUrl(url);
		ds.setUsername(username);
		ds.setPassword(password);
		if (driverClass != null)
			ds.setDriverClassName(driverClass);
		ds.setInitialSize(initialSize);
		ds.setMinIdle(minIdle);
		ds.setMaxActive(maxActive);
		ds.setMaxWait(maxWait);
		ds.setTimeBetweenConnectErrorMillis(timeBetweenConnectErrorMillis);
		ds.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMillis);
		ds.setMinEvictableIdleTimeMillis(minEvictableIdleTimeMillis);
		
		ds.setValidationQuery(validationQuery);
		ds.setValidationQueryTimeout(validationQueryTimeout);
		ds.setTestWhileIdle(testWhileIdle);
		ds.setTestOnBorrow(testOnBorrow);
		ds.setTestOnReturn(testOnReturn);
		
		ds.setRemoveAbandoned(removeAbandoned);
		ds.setRemoveAbandonedTimeoutMillis(removeAbandonedTimeoutMillis);
		ds.setLogAbandoned(logAbandoned);
		
		//只要maxPoolPreparedStatementPerConnectionSize>0,poolPreparedStatements就会被自动设定为true，参照druid的源码
		ds.setMaxPoolPreparedStatementPerConnectionSize(maxPoolPreparedStatementPerConnectionSize);
		
		if (StrKit.notBlank(filters))
			try {ds.setFilters(filters);} catch (SQLException e) {throw new RuntimeException(e);}

		return true;
	}
	
	public boolean stop() {
		if (ds != null)
			ds.close();
		return true;
	}
	
	public DataSource getDataSource() {
		return ds;
	}
	
}
