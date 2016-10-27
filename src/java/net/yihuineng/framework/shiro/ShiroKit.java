package net.yihuineng.framework.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.subject.Subject;

public class ShiroKit {

	public static User getCurrentUser() {
		Subject subject = SecurityUtils.getSubject();
		if (subject != null) {
			return (User) subject.getPrincipal();
		}
		return null;
	}

	/**
	 * 判断是否已经登录
	 *
	 * @return boolean
	 */
	public static boolean isAuthed() {
		Subject subject = SecurityUtils.getSubject();
		if (subject == null || subject.getPrincipal() == null || (!subject.isAuthenticated() && !subject.isRemembered())) {
			return false;
		} else {
			return true;
		}
	}

	public static Session getSession() {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		if (session == null) {
			throw new UnknownSessionException("Unable found required Session");
		} else {
			return session;
		}
	}

}
