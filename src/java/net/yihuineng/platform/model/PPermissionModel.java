package net.yihuineng.platform.model;

import java.util.List;

import net.yihuineng.framework.data.ModelKit;
import net.yihuineng.framework.easyui.model.EasyUITreeModelIF;
import net.yihuineng.platform.model.base.PPermissionBM;

public class PPermissionModel extends PPermissionBM<PPermissionModel> implements EasyUITreeModelIF<PPermissionModel> {

	private static final long serialVersionUID = 1L;
	
	public static PPermissionModel dao = new PPermissionModel();
	
	@Override
	public String treeId() {
		return String.valueOf(getId());
	}

	@Override
	public String treeParentId() {
		return String.valueOf(getParentId());
	}
	
	@Override
	public List<PPermissionModel> treeChildren() {
		return get("children");
	}

	@Override
	public void treeSetChildren(List<PPermissionModel> children) {
		put("children", children);
	}
	
	@Override
	public PPermissionModel treeEasyUINodeAttrs() {
		return ModelKit.copyAttr(this, "parentId>pid,permissionName>text,icon>iconCls");
	}
	
	public List<PPermissionModel> findMainMenus() {
		return dao.find("select * from PPermission where type='group' and visiable=1 and parentId='0'");
	}
	
	public List<PPermissionModel> findChildMenus(String parentId) {
		return dao.find("select * from PPermission where Type='menu' and Visiable=1 and parentId=?", parentId);
	}
}