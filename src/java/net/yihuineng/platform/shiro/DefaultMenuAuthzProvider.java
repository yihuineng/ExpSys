package net.yihuineng.platform.shiro;

import java.util.List;
import java.util.Map;

import com.google.common.collect.Maps;

import net.yihuineng.framework.shiro.MenuAuthzProviderIF;
import net.yihuineng.platform.model.PPermissionModel;

public class DefaultMenuAuthzProvider implements MenuAuthzProviderIF {

	@Override
	public Map<String, String> loadMenuAuthzMap() {
		// 加载数据库的url配置
		Map<String, String> authzJdbcMaps = Maps.newIdentityHashMap();

		List<PPermissionModel> permissions = PPermissionModel.dao.find("select * from PPermission");
		for (PPermissionModel permission : permissions) {
			authzJdbcMaps.put(permission.getUrl(), permission.getPermissionCode());
		}

		return authzJdbcMaps;
	}

}