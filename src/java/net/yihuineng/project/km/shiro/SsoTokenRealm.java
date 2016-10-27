package net.yihuineng.project.km.shiro;

import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.platform.model.PUserModel;
import net.yihuineng.platform.shiro.DefaultJdbcAuthorizingRealm;

import org.apache.shiro.authc.AuthenticationToken;

public class SsoTokenRealm extends DefaultJdbcAuthorizingRealm {

	@Override
	protected PUserModel findPUserModel(AuthenticationToken token) {
		SsoToken ssoToken = (SsoToken) token;
		String userCode = ssoToken.getUserCode();

		if (StrKit.isNotEmpty(userCode)) {
			return PUserModel.dao.findFirst("select * from PUser where userCode=?", userCode);
		}

		return null;
	}

	@Override
	public boolean supports(AuthenticationToken token) {
		return (token != null) && (token instanceof SsoToken);
	}
}
