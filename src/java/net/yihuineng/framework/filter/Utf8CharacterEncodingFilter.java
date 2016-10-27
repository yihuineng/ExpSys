package net.yihuineng.framework.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Utf8CharacterEncodingFilter implements Filter {
	
	@Override
	public void init(FilterConfig paramFilterConfig) throws ServletException {
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(req, res);
	}

	@Override
	public void destroy() {
		
	}

}
