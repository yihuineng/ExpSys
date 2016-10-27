package net.yihuineng.framework.shiro.handler;

import java.util.Set;

import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.subject.Subject;

import com.google.common.collect.Sets;

/**
 * Created by wangrenhui on 14-1-7.
 */
public class MenuPermissionAuthzHandler extends AbstractAuthzHandler {
	
	private Set<String> perms = Sets.newHashSet();
	
	public MenuPermissionAuthzHandler() {
		
	}

	public MenuPermissionAuthzHandler(String permission) {
		perms.add(permission);
	}
	
	public void addPermission(String permission) {
		perms.add(permission);
	}

	@Override
	public void assertAuthorized() throws AuthorizationException {
		if (perms.size()==0)
			return;

		Subject subject = getSubject();

		boolean hasAtLeastOnePermission = false;
		for (String permission : perms) {
			if (subject.isPermitted(permission)) {
				hasAtLeastOnePermission = true;
				break;
			}
		}
		
		if (!hasAtLeastOnePermission) {
			subject.checkPermission(perms.iterator().next());
		}
	}
}
