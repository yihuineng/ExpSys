package net.yihuineng.platform.controller;

import java.util.Date;
import java.util.List;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.platform.id.IdKit;
import net.yihuineng.platform.model.PPermissionModel;
import net.yihuineng.platform.model.PRoleAuthzModel;
import net.yihuineng.platform.model.PRoleModel;
import net.yihuineng.platform.model.PUserModel;
import net.yihuineng.platform.model.PUserRoleModel;

public class RoleController extends EasyUIController {
	
	public void index() {
		
	}
	
	public void roleDialog() {
		long roleId = getParaToLong("id", 0L);
		if (roleId != 0) {
			PRoleModel role = PRoleModel.dao.findById(roleId);
			setAttrs(role.toMap());
		}
	}
	
	public void treeRole() {
		long treeRootId = 0;
		List<PRoleModel> list = PRoleModel.dao.find("select * from PRole order by id asc");
		renderEasyUITree(list, String.valueOf(treeRootId));
	}

	public void htmlRoleBaseInfo() {
		long roleId = getParaToLong("id", 0L);
		
		PRoleModel role = PRoleModel.dao.findById(roleId);
		if (role!=null) {
			setAttrs(role.toMap());
			
			List<String> authzCodeList = Db.query("select authzCode from PRoleAuthz where roleCode=?", role.getRoleCode());
			setAttr("authzCodes", StrKit.join(authzCodeList));
		}
	}
	
	public void dgUser() {
		String roleCode = getPara("roleCode", "");
		
		Qb qb = new Qb("from PUser where userCode in (select userCode from PUserRole where roleCode=?)", roleCode);
		String keyword = getPara("keyword");
		if (StrKit.isNotEmpty(keyword)) {
			qb.append(" and (userName like ? or realName like ?)", Qb.wrapLike(keyword), Qb.wrapLike(keyword));
		}
		qb.append(getOrderBy("addTime desc"));
		
		Page<PUserModel> page = PUserModel.dao.paginate(getPageNumber(), getPageSize(), "select *", qb);
		
		renderEasyUI(page);
	}
	
	public void tgAuthz() {
		// long roleId = getParaToLong("roleId", 0L);
		//Qb qb = new Qb("from PPermission where userId in (select userId from PUserRole where roleId=?)", roleId);
		//Page<PPermissionModel> page = PPermissionModel.dao.paginate(getPageNumber(), getPageSize(), "select *", qb);
		
		List<PPermissionModel> list = PPermissionModel.dao.find("select * from PPermission order by orderFlag asc");
		renderEasyUITree(list, "0");
	}
	
	public void saveRole() {
		PRoleModel role = getModel(PRoleModel.class);
		if (role.getId() == 0) {
			role.setId(IdKit.newUid());
			if (role.getParentId() == 0) {
				role.setParentId(0);
				role.setInnerCode(IdKit.nextInnerCode("PRole", ""));
			} else {
				PRoleModel parentRole = PRoleModel.dao.findById(role.getParentId());
				String parentInnerCode = parentRole.getInnerCode();
				role.setInnerCode(IdKit.nextInnerCode("PRole", parentInnerCode));
			}
			role.setIsLeaf(true);
			role.setAddUser(ShiroKit.getCurrentUser().getUserCode());
			role.setAddTime(new Date());
			role.save();
		} else {
			role.setModifyUser(ShiroKit.getCurrentUser().getUserCode());
			role.setModifyTime(new Date());
			role.update();
		}

		renderEasyUISuccess("操作成功");
	}
	
	public void deleteRole() {
		long id = getParaToLong("id", 0L);
		
		boolean hasChild = Db.queryInt("select count(1) from PRole where parentId=?", id)>0; 
		if (hasChild) {
			renderEasyUIError("当前角色存在下级角色，请先删除下级角色");
			return ;
		}
		
		Db.update("delete from PUserRole where roleCode in (select roleCode from PRole where id=?)", id);
		Db.update("delete from PRoleAuthz where roleCode in (select roleCode from PRole where id=?)", id);
		PRoleModel.dao.deleteById(id);
		renderEasyUISuccess("操作成功");
	}
	
	public void addUserToRole() {
		String roleCode = getPara("roleCode");
		String userCodes = getPara("userCodes", "");
		
		String[] userCodeArr = userCodes.split(",");
		for (String userCode : userCodeArr) {
			PUserRoleModel userRole = new PUserRoleModel();
			userRole.setId(IdKit.newUid());
			userRole.setRoleCode(roleCode);
			userRole.setUserCode(userCode);
			userRole.setAddUser(ShiroKit.getCurrentUser().getUserCode());
			userRole.setAddTime(new Date());
			userRole.save();
		}
		
		renderEasyUISuccess("操作成功");
	}
	
	public void removeUserFromRole() {
		String roleCode = getPara("roleCode");
		String userCodes = getPara("userCodes");
		userCodes = "'" + userCodes.replaceAll(",", "','") + "'";
		
		Db.update("delete from PUserRole where roleCode=? and userCode in (" + userCodes + ")", roleCode);
		renderEasyUISuccess("操作成功");
	}
	
	public void saveAuthz() {
		String roleCode = getPara("roleCode");
		String authzs = getPara("authzs", "");
		String[] authzArr = authzs.split(",");
		
		Db.update("delete from PRoleAuthz where roleCode=?", roleCode);
		for (String authz : authzArr) {
			if (StrKit.isEmpty(authz)) {
				continue;
			}
			
			PRoleAuthzModel roleAuthz = new PRoleAuthzModel();
			roleAuthz.setId(IdKit.newUid());
			roleAuthz.setRoleCode(roleCode);
			roleAuthz.setAuthzCode(authz);
			roleAuthz.setAddUser(ShiroKit.getCurrentUser().getUserCode());
			roleAuthz.setAddTime(new Date());
			roleAuthz.save();
		}
		
		renderEasyUISuccess("操作成功");
	}

}
