package net.yihuineng.platform.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;

import com.jfinal.kit.HashKit;
import com.jfinal.plugin.activerecord.Db;

import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.framework.shiro.ClearShiro;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.framework.shiro.ShiroMethod;
import net.yihuineng.platform.model.PPermissionModel;

public class IndexController extends EasyUIController {

	public void index() {
		if (!ShiroKit.isAuthed()) {
			redirect("/login");
			return;
		}

		setAttr("currentUser", ShiroKit.getCurrentUser());

		List<PPermissionModel> list = PPermissionModel.dao.findMainMenus();
		for (int i = list.size() - 1; i >= 0; i--) {
			PPermissionModel perm = list.get(i);
			if (!ShiroMethod.hasPermission(perm.getPermissionCode())) {
				list.remove(i);
			}
		}
		setAttr("mainMenus", list);
	}
	
	public void desktop() {
		renderHtml("欢迎使用...");
	}

	public void treeMenus() {
		Long pid = getParaToLong("pid");
		if (pid == null) {
			return;
		}
		
		List<PPermissionModel> list = PPermissionModel.dao.find("select * from PPermission where parentId=? order by orderFlag asc", pid);
		for (int i = list.size()-1; i >= 0; i--) {
			PPermissionModel perm = list.get(i);
			if (!ShiroMethod.hasPermission(perm.getPermissionCode())) {
				list.remove(i);
			}
		}
		renderEasyUITree(list, String.valueOf(pid));
	}
	
	@ClearShiro
	public void login() {
		String userName = getPara("username");
		String password = getPara("password");
		if (StrKit.isNotEmpty(userName, password)) {
			try {
				SecurityUtils.getSubject().login(new UsernamePasswordToken(userName, password, false, null));
			} catch (AuthenticationException e) {
			}
		}
		
		if (ShiroKit.isAuthed()) {
			redirect(getRequest().getContextPath()+"/");
		}
	}
	
	public void logout() {
		
	}
	
	public void modifyPasswordDialog() {
		
	}
	
	public void modifyPassword() {
		String oldPassword = getPara("oldPassword");
		String newPassword = getPara("newPassword");
		
		String userCode = ShiroKit.getCurrentUser().getUserCode();
		boolean exist = Db.queryInt("select count(1) from PUser where userCode=? and password=?", userCode , HashKit.md5(oldPassword))>0; 
		if (exist) {
			Db.update("update PUser set password=? where userCode=?", HashKit.md5(newPassword), userCode);
			renderEasyUISuccess("密码修改成功");
		} else {
			renderEasyUIError("原始密码不正确");
		}
	}
	
}