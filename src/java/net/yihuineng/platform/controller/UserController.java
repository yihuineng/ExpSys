package net.yihuineng.platform.controller;

import java.util.Date;
import java.util.LinkedHashMap;

import com.google.common.collect.Maps;
import com.jfinal.aop.Before;
import com.jfinal.kit.HashKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.framework.shiro.ClearShiro;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.platform.id.IdKit;
import net.yihuineng.platform.model.PRoleModel;
import net.yihuineng.platform.model.PUserModel;
import net.yihuineng.platform.model.PUserRoleModel;

public class UserController extends EasyUIController {

	public void index() {
	}

	/**
	 * 用户列表
	 * 
	 * @author yihuineng
	 */
	public void dgUser() {
		String keyword = getPara("keyword");

		String sqlSelect = "select *";
		Qb qb = new Qb(" from PUser U where 1=1");
		if (StrKit.isNotEmpty(keyword)) {
			qb.append(" and (userCode like ? or userName like ? or realName like ?)", Qb.wrapLike(keyword),
					Qb.wrapLike(keyword), Qb.wrapLike(keyword));
		}
		qb.append(getOrderBy("id"));

		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), sqlSelect, qb);
		renderEasyUI(page);
	}

	/**
	 * addUserPage
	 * 
	 * @author yihuineng
	 */
	public void addUserPage() {
		LinkedHashMap<String, String> isEnableOptions = Maps.newLinkedHashMap();
		isEnableOptions.put("1", "启用");
		isEnableOptions.put("0", "停用");
		setAttr("isEnableOptions", isEnableOptions);
	}

	public void doSave() {
		long id = getParaToLong("id", 0L);
		String newPassword = getPara("newPassword");
		String realName = getPara("realName");
		String userName = getPara("userName");
		String email = getPara("email");
		String mobile = getPara("mobile");
		String roles = getPara("roles");
		PUserModel model = new PUserModel();
		if (id == 0) {// add
			try {
				PUserModel user = PUserModel.dao.findFirst("select * from PUser where userName =?", userName);
				if (user != null) {
					throw new RuntimeException("用户名已存在，请重新填写");
				}
				boolean isEnable = getParaToBoolean("isEnable");
				model.setId(IdKit.newUid());
				model.setUserName(userName);
				model.setUserCode(userName);
				model.setIsBranchAdmin(false);
				model.setType("A");
				model.setPassword(HashKit.md5(newPassword));
				model.setAddUser(ShiroKit.getCurrentUser().getUserCode());
				model.setAddTime(new Date());
				model.setRealName(realName);
				model.setBranchGroupCode("0000");
				model.setIsEnable(isEnable);
				model.setMobile(mobile);
				model.setEmail(email);
				model.save();
				if (StrKit.isNotEmpty(roles)) {
					String[] roleArr = roles.split(",");
					for (int i = 0; i < roleArr.length; i++) {
						PRoleModel role = PRoleModel.dao.findById(roleArr[i]);
						PUserRoleModel userRole = new PUserRoleModel();
						userRole.setId(IdKit.newUid());
						userRole.setRoleCode(role.getRoleCode());
						userRole.setUserCode(model.getUserCode());
						userRole.setAddUser(ShiroKit.getCurrentUser().getUserCode());
						userRole.setAddTime(new Date());
						userRole.save();
					}

				}
				renderEasyUISuccess("操作成功");
			} catch (RuntimeException e) {
				renderEasyUISuccess(e.getMessage());
			}
		}
	}

	@Before(Tx.class)
	public void doDelete() {
		String[] userIdArr = getParaValues("userIdArr[]");
		for (String id : userIdArr) {
			PUserModel user = PUserModel.dao.findById(id);
			if (user != null) {
				PUserModel.dao.deleteById(id);
				Db.update("delete from PUserRole where userCode =?", user.getUserCode());
			}
		}
		renderEasyUISuccess("用户删除成功");
	}

	@ClearShiro
	public void userSelectDialog() {

	}

	@ClearShiro
	public void dgUserSelect() {
		Qb qb = new Qb("from PUser where isEnable=1");
		String keyword = getPara("keyword");
		String branchGroupCode = getPara("branchGroupCode");
		if (StrKit.isNotEmpty(keyword)) {
			qb.append(" and (userName like ? or realName like ?)", Qb.wrapLike(keyword), Qb.wrapLike(keyword));
		}
		if (StrKit.isNotEmpty(branchGroupCode)) {
			qb.append(" and branchGroupCode like ?", Qb.wrapLike(branchGroupCode));
		}
		qb.append(getOrderBy("addTime desc"));

		Page<PUserModel> page = PUserModel.dao.paginate(getPageNumber(), getPageSize(), "select *", qb);

		renderEasyUI(page);
	}

	public void selectDialog() {
		String userCodes = getPara("userCodes");
		String realNames = getPara("realNames");
		if (StrKit.isNotEmpty(userCodes)) {
			setAttr("realNames", realNames);
			setAttr("userCodes", userCodes);
		} else {
			setAttr("realNames", "");
			setAttr("userCodes", "");
		}
	}

	public void doUserSort() {
		//Null
		renderEasyUISuccess("");
	}

}
