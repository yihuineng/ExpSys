package net.yihuineng.framework.data;

import java.util.List;

public interface BasicTreeModelIF<M extends Model<M>> {

	public String treeId();

	public String treeParentId();
	
	public List<M> treeChildren();

	public void treeSetChildren(List<M> children);

}
