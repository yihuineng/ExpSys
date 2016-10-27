package net.yihuineng.framework.shiro.handler;

import org.apache.shiro.authz.AuthorizationException;

/**
 * 访问控制处理器接口
 * 
 * @author dafei
 *
 */
public interface AuthzHandler {
	/**
	 * 访问控制检查
	 * 
	 * @throws AuthorizationException
	 *             授权异常
	 */
	public void assertAuthorized() throws AuthorizationException;
}