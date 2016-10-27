package net.yihuineng.project.km.shiro;

import org.apache.shiro.authc.AuthenticationToken;

public class SsoToken implements AuthenticationToken {
	
	private static final long serialVersionUID = 1L;
	
	private String userCode;
	
	public SsoToken(String userCode) {
		this.userCode = userCode;
	}
	
	public String getUserCode() {
		return userCode;
	}

	@Override
	public Object getPrincipal() {
		return userCode;
	}

	@Override
	public Object getCredentials() {
		return userCode;
	}

}
