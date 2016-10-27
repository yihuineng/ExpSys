package net.yihuineng.platform.model;

import java.util.List;

import net.yihuineng.framework.data.ModelKit;
import net.yihuineng.framework.easyui.model.EasyUITreeModelIF;
import net.yihuineng.platform.model.base.PRoleBM;

public class PRoleModel extends PRoleBM<PRoleModel> implements EasyUITreeModelIF<PRoleModel> {

	private static final long serialVersionUID = 1L;
	
	public static PRoleModel dao = new PRoleModel();

	@Override
	public String treeId() {
		return String.valueOf(getId());
	}

	@Override
	public String treeParentId() {
		return String.valueOf(getParentId());
	}

	@Override
	public List<PRoleModel> treeChildren() {
		return get("children");
	}

	@Override
	public void treeSetChildren(List<PRoleModel> children) {
		put("children", children);
	}

	@Override
	public PRoleModel treeEasyUINodeAttrs() {
		return ModelKit.copyAttr(this, "parentId>pid,roleName>text");
	}

	public PRoleModel clone() {
		try {
			return (PRoleModel) super.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}