package net.yihuineng.framework.rest.shiro;

import org.apache.shiro.authc.AuthenticationToken;

public class ApiBearerToken implements AuthenticationToken {
	
	private static final long serialVersionUID = 1L;
	
	private String token;
	
	public ApiBearerToken(String token) {
		this.token = token;
	}
	
	public String getToken() {
		return token;
	}

	@Override
	public Object getPrincipal() {
		return token;
	}

	@Override
	public Object getCredentials() {
		return token;
	}

	
}
