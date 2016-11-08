package net.yihuineng.app.controller;

import java.util.Date;
import java.util.LinkedHashMap;

import com.google.common.collect.Maps;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;

import net.yihuineng.app.model.PAPIModel;
import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.platform.id.IdKit;

public class ApiController extends EasyUIController {

	public void index() {
		String project = getPara("project");
		setAttr("project", project);
	}

	/**
	 * api列表
	 * 
	 * @author yihuineng
	 */
	public void dgApi() {
		String project = getPara("project");
		String keyword = getPara("keyword");

		String sqlSelect = "select *";
		Qb qb = new Qb(" from PAPI where project=? ",project);
		if (StrKit.isNotEmpty(keyword)) {
			qb.append(" and (apiUrl like ? or apiName like ? )", Qb.wrapLike(keyword),
					Qb.wrapLike(keyword));
		}
		qb.append(getOrderBy("id"));

		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), sqlSelect, qb);
		renderEasyUI(page);
	}

	public void addPage() {
		LinkedHashMap<String, String> isEnableOptions = Maps.newLinkedHashMap();
		isEnableOptions.put("1", "启用");
		isEnableOptions.put("0", "停用");
		setAttr("isEnableOptions", isEnableOptions);
	}
	
	public void editPage() {
		long id = getParaToLong("id", 0L);
		
		LinkedHashMap<String, String> isEnableOptions = Maps.newLinkedHashMap();
		isEnableOptions.put("1", "启用");
		isEnableOptions.put("0", "停用");
		setAttr("isEnableOptions", isEnableOptions);
		
		if (id>0) {
			PAPIModel model = PAPIModel.dao.findFirst("select * from PAPI where id=?", id);
			if (model != null) {
				setAttrs(model.toMap());
			}
		}
	}

	public void doSave() {
		String project = getPara("project");
		long id = getParaToLong("id", 0L);
		boolean isEnable = getParaToBoolean("isEnable");
		String apiName=getPara("apiName");
		String apiUrl=getPara("apiUrl");
		String apiParams=getPara("apiParams");
		String apiReturn=getPara("apiReturn");
		int isRepeat=Db.queryInt("select count(*) from PAPI where apiUrl=?",apiUrl);
		PAPIModel model = new PAPIModel();
		if (id == 0) {
			if(isRepeat>0) {
				renderEasyUIError("apiUrl重复");
				return;
			}
			try {
				model.setId(IdKit.newUid());
				model.setAddUser(ShiroKit.getCurrentUser().getUserCode());
				model.setAddTime(new Date());
				model.setIsEnable(isEnable);
				model.setProject(project);
				model.setApiName(apiName);
				model.setApiParams(apiParams);
				model.setApiReturn(apiReturn);
				model.setApiUrl(apiUrl);
				model.save();
				renderEasyUISuccess("操作成功");
			} catch (RuntimeException e) {
				renderEasyUISuccess(e.getMessage());
			}
		}else{
			if(isRepeat>1) renderEasyUIError("apiUrl重复");
			model=model.findById(id);
			model.setAddUser(ShiroKit.getCurrentUser().getUserCode());
			model.setAddTime(new Date());
			model.setIsEnable(isEnable);
			model.setProject(project);
			model.setApiName(apiName);
			model.setApiParams(apiParams);
			model.setApiReturn(apiReturn);
			model.setApiUrl(apiUrl);
			model.update();
			renderEasyUISuccess("操作成功");
		}
	}

	@Before(Tx.class)
	public void doDelete() {
		String[] idArr = getParaValues("idArr[]");
		for (String id : idArr) {
			PAPIModel user = PAPIModel.dao.findById(id);
			if (user != null) {
				PAPIModel.dao.deleteById(id);
			}
		}
		renderEasyUISuccess("删除成功");
	}

}
