package net.yihuineng.platform.cache;

import java.util.List;
import java.util.Map;

import com.jfinal.plugin.ehcache.CacheKit;
import com.jfinal.plugin.ehcache.IDataLoader;

import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.data.ModelKit;
import net.yihuineng.platform.model.PUserModel;

public class UserCache {
	
	public static Map<String, String> getUserMap() {
		return CacheKit.get("PUser", "code2Name", new IDataLoader() {
			@Override
			public Map<String, String> load() {
				List<PUserModel> list = PUserModel.dao.find("select userCode,realName from PUser");
				Map<String, String> map = ModelKit.toMap(list, "userCode", "realName");
				return map;
			}
		});
	}
	
	public static String getRealNameByUserCode(final String userCode) {
		return CacheKit.get("PUser-realNameByUserCode", userCode, new IDataLoader() {
			@Override
			public String load() {
				return Db.queryStr("select realName from PUser where userCode=?", userCode);
			}
		});
	}
	
	public static PUserModel getUser(final String userCode) {
		return CacheKit.get("PUserModel", userCode, new IDataLoader() {
			@Override
			public PUserModel load() {
				return PUserModel.dao.findFirst("select * from PUser where userCode=?", userCode);
			}
		});
	}
	
	public static void clear() {
		CacheKit.remove("PUser", "code2Name");
	}
	
	public static String getUserMobile(String userCode) {
		String value = CacheKit.get("UserMobile", userCode);
		if (value == null) {
			value = Db.queryStr("select mobile from Pser where userCode=?", userCode);
			CacheKit.put("UserMobile", userCode, value);
		}
		return value;
	}
	
}
