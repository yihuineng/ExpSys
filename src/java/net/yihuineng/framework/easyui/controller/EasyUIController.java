package net.yihuineng.framework.easyui.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.common.collect.Lists;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import net.yihuineng.framework.data.BasicTreeModelIF;
import net.yihuineng.framework.data.Model;
import net.yihuineng.framework.easyui.model.EasyUITreeModelIF;
import net.yihuineng.framework.kit.StrKit;

public abstract class EasyUIController extends Controller {

	protected int getPageNumber() {
		return getParaToInt("page", 1);
	}
	
	protected int getPageSize() {
		return getParaToInt("rows", 25);
	}

	protected String getSort() {
		return getPara("sort");
	}

	protected String getOrder() {
		return getPara("order");
	}

	protected String getOrderBy(String defaultOrderBy) {
		String sort = getSort();
		if (StrKit.isEmpty(sort)) {
			return StrKit.isNotEmpty(defaultOrderBy) ? " order by " + defaultOrderBy : "";
		}
		return " order by " + sort + " " + getOrder();
	}

	protected void renderEasyUI(Page<?> page) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("total", page.getTotalRow());
		data.put("rows", page.getList());
		renderJson(data);
	}
	
	protected void renderEasyUIDataGrid(List<?> list) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("rows", list);
		renderJson(data);
	}
	
	protected void renderEasyUISuccess(List<?> list) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("status", 1);
		data.put("rows", list);
		renderJson(data);
	}
	
	protected <M extends Model<M>> void renderEasyUITree(List<M> list) {
		renderJson(buildTree(list));
	}

	protected <M extends Model<M>> void renderEasyUITree(List<M> list, String rootId) {
		renderJson(buildTree(list, rootId));
	}

	protected void renderEasyUISuccess(String message) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("status", 1);
		data.put("message", message);
		renderJson(data);
	}
	
	protected void renderEasyUIError(String message) {
		renderEasyUIError(0, message);
	}
	
	protected void renderEasyUIError(int status, String message) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("status", status);
		data.put("message", message);
		renderJson(data);
	}
	
	protected <M extends Model<M>> List<M> buildTree(List<M> list) {
		return buildTree(list, "0");
	}
	
	protected <M extends Model<M>> List<M> buildTree(List<M> list, String parentId) {
		List<M> nodes = Lists.newArrayList();
		List<M> newList = Lists.newArrayList(list);
		for (int i = 0; i < newList.size(); i++) {
			M model = newList.get(i);
			if (model instanceof BasicTreeModelIF<?>) {//判断是否是treegrid的数据
				@SuppressWarnings("unchecked")
				EasyUITreeModelIF<M> treeModel = (EasyUITreeModelIF<M>) model;

				if (treeModel.treeParentId().equalsIgnoreCase(parentId)) {
					newList.remove(model);
					i--;

					model = treeModel.treeEasyUINodeAttrs();
					List<M> childNodes = buildTree(newList, treeModel.treeId());
					if (childNodes != null && childNodes.size() > 0) {
						treeModel.treeSetChildren(childNodes);
					}
					nodes.add(model);
				}
			}
		}
		return nodes;
	}
	
}
