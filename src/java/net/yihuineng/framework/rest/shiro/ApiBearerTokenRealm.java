package net.yihuineng.framework.rest.shiro;

import org.apache.shiro.authc.AuthenticationToken;

import com.jfinal.plugin.ehcache.CacheKit;

import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.platform.model.PUserModel;
import net.yihuineng.platform.shiro.DefaultJdbcAuthorizingRealm;

public class ApiBearerTokenRealm extends DefaultJdbcAuthorizingRealm {

	private static final String CACHE_API_BEARERTOKEN = "apiBearerToken";

	@Override
	protected PUserModel findPUserModel(AuthenticationToken token) {
		ApiBearerToken apiToken = (ApiBearerToken) token;
		String bearerToken = apiToken.getToken();

		String userCode = CacheKit.get(CACHE_API_BEARERTOKEN, bearerToken);
		if (StrKit.isNotEmpty(userCode)) {
			return PUserModel.dao.findFirst("select * from PUser where userCode=?", userCode);
		}

		return null;
	}

	@Override
	public boolean supports(AuthenticationToken token) {
		return (token != null) && (token instanceof ApiBearerToken);
	}
}
