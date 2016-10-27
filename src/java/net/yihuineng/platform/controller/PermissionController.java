package net.yihuineng.platform.controller;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

import com.google.common.collect.Maps;
import com.jfinal.plugin.activerecord.Db;

import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.OrderKit;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.platform.id.IdKit;
import net.yihuineng.platform.model.PPermissionModel;

public class PermissionController extends EasyUIController {

	public void index() {
	}

	public void getData() {
		List<PPermissionModel> list = PPermissionModel.dao.find("select * from PPermission order by orderFlag asc");
		renderEasyUITree(list, "0");
	}

	public void editDialog() {
		Long id = getParaToLong("id");
		if (id != null) {
			PPermissionModel perm = PPermissionModel.dao.findById(id);
			setAttrs(perm.toMap());
		}
		
		LinkedHashMap<String, String> typeOptions = Maps.newLinkedHashMap();
		typeOptions.put("group", "资源组");
		typeOptions.put("menu", "菜单");
		setAttr("typeOptions", typeOptions);

		LinkedHashMap<String, String> visiableOptions = Maps.newLinkedHashMap();
		visiableOptions.put("1", "可见");
		visiableOptions.put("0", "不可见");
		setAttr("visiableOptions", visiableOptions);
	}

	public void save() {
		PPermissionModel perm = getModel(PPermissionModel.class);
		long orgParentId = getParaToLong("orgParentId", 0L);
		
		if (perm.getId() == 0) {
			perm.setId(IdKit.newUid());
			if (perm.getParentId() == 0) {
				perm.setParentId(0);
				perm.setInnerCode(IdKit.nextInnerCode("PPermission", ""));
			} else {
				PPermissionModel parentPerm = PPermissionModel.dao.findById(perm.getParentId());
				String parentInnerCode = parentPerm.getInnerCode();
				perm.setInnerCode(IdKit.nextInnerCode("PPermission", parentInnerCode));
			}
			perm.setIsLeaf(true);
			perm.setOrderFlag(OrderKit.getDefaultOrder());
			perm.setAddUser(ShiroKit.getCurrentUser().getUserCode());
			perm.setAddTime(new Date());
			perm.save();
		} else {
			if (orgParentId != perm.getParentId()) {
				PPermissionModel parentPerm = PPermissionModel.dao.findById(perm.getParentId());
				String parentInnerCode = parentPerm.getInnerCode();
				perm.setInnerCode(IdKit.nextInnerCode("PPermission", parentInnerCode));
				
				Db.update("update PPermission set isLeaf=0 where id=?", perm.getParentId());
			}
			perm.setModifyUser(ShiroKit.getCurrentUser().getUserCode());
			perm.setModifyTime(new Date());
			perm.update();
		}

		renderEasyUISuccess("操作成功");
	}

	public void delete() {
		Long id = getParaToLong("id");
		if (id == null) {
			renderEasyUIError("非法参数");
			return;
		}
		
		PPermissionModel perm = new PPermissionModel();
		perm.setId(id);
		perm.delete();
		renderEasyUISuccess("删除成功");
	}

}
