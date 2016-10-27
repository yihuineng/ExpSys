package net.yihuineng.platform.shiro;

import java.util.List;
import java.util.Set;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;

import com.google.common.collect.Sets;
import com.jfinal.plugin.activerecord.Db;

import net.yihuineng.framework.shiro.User;
import net.yihuineng.platform.model.PUserModel;

public class DefaultJdbcAuthorizingRealm extends AuthorizingRealm {

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		PUserModel pUser = findPUserModel(token);
		if (pUser != null) {
			User user = new User();
			user.setUserCode(pUser.getUserCode());
			user.setUserName(pUser.getUserName());
			user.setRealName(pUser.getRealName());
			user.setBranchAdmin(pUser.getIsBranchAdmin());
			user.setBranchGroupCode(pUser.getBranchGroupCode());
			user.setType(pUser.getType());
			user.setStatus("");

			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, pUser.getPassword(), getName());
			return info;
		} else {
			return null;
		}
	}
	
	protected PUserModel findPUserModel(AuthenticationToken token) {
		UsernamePasswordToken userToken = (UsernamePasswordToken) token;
		String username = userToken.getUsername();
		PUserModel pUser = PUserModel.dao.findFirst("select * from PUser where userName=? and isEnable=1", username);
		return pUser;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		User user = (User) principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		
		PUserModel userModel = PUserModel.dao.findFirst("select * from PUser where userCode=?", user.getUserCode());
		if (userModel == null) {
			SecurityUtils.getSubject().logout();
			return null;
		}

		// 设置角色
		List<String> roleCodeList = Db.query("select roleCode from PUserRole where userCode=?", user.getUserCode());
		Set<String> roleCodeSet = Sets.newHashSet(roleCodeList.iterator());
		info.setRoles(roleCodeSet); 
		
		// 设置权限
		List<String> roleAuthzList = Db.query("select authzCode from PRoleAuthz where roleCode in (select roleCode from PUserRole where userCode=?)", user.getUserCode());
		Set<String> authzCodeSet = Sets.newHashSet(roleAuthzList.iterator());
		info.setStringPermissions(authzCodeSet);

		return info;
	}

	/**
	 * @deprecated
	 * 更新用户授权信息缓存.
	 */
	public void clearCachedAuthorizationInfo(Object principal) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
		clearCachedAuthorizationInfo(principals);
	}

	/**
	 * 清除所有用户授权信息缓存.
	 */
	public void clearAllCachedAuthorizationInfo() {
		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
		if (cache != null) {
			for (Object key : cache.keys()) {
				cache.remove(key);
			}
		}
	}

}
