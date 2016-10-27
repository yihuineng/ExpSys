package net.yihuineng.framework.easyui.model;

import net.yihuineng.framework.data.BasicTreeModelIF;
import net.yihuineng.framework.data.Model;

public interface EasyUITreeModelIF<M extends Model<M>> extends BasicTreeModelIF<M> {
	
	public M treeEasyUINodeAttrs();

}
