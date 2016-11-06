package net.yihuineng.app.api.km.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.kit.DateKit;
import net.yihuineng.framework.rest.RestApiController;
import net.yihuineng.framework.routebind.ControllerKey;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.framework.shiro.User;
import net.yihuineng.platform.id.IdKit;
import net.yihuineng.project.km.model.KM_LABELModel;
import net.yihuineng.project.km.model.KM_MD_TEMPModel;
import net.yihuineng.project.km.model.KM_Q_AModel;

@ControllerKey("/api/km")
public class KmApiController extends RestApiController {
	/**
	 * delete QA by id
	 * @author yihuineng
	 */
	public void doDelete() {
		Long id = getParaToLong("id");
		KM_Q_AModel model = KM_Q_AModel.dao.findById(id);
		model.delete();
		restResponse.setSuccess("删除成功");
	}
	
	
	
	
	/**
	 * 删除模板
	 * @author yihuineng
	 */
	public void delTemp() {
		Long id = getParaToLong("id");
		KM_MD_TEMPModel model = KM_MD_TEMPModel.dao.findById(id);
		model.delete();
		restResponse.setSuccess("删除成功");
	}

	/**
	 * Q&A是否稳定，解决明确，无疑问
	 * @author yihuineng
	 */
	public void setStable() {
		Long id = getParaToLong("id");
		boolean isStable=getParaToBoolean("IsStable");
		KM_Q_AModel model = KM_Q_AModel.dao.findById(id);
		model.setIsStable(isStable);
		model.update();
		restResponse.setSuccess("操作成功");
	}
	
	/**
	 * 更新父标签
	 * @author yihuineng
	 */
	public void setFLabels() {
		Long id = getParaToLong("id");
		String fLabels = getPara("FLabels");
		KM_LABELModel model= KM_LABELModel.dao.findById(id);
		model.setFLabels(fLabels);
		model.update();
		restResponse.setSuccess("操作成功");
	}
	
	/**
	 * 清理无主标签
	 * @author yihuineng
	 */
	public void cleanLabel() {
		List<KM_LABELModel> list=KM_LABELModel.dao.find("select * from KM_LABEL");
		for (KM_LABELModel model : list) {
			int count=Db.queryInt("select * from KM_Q_A where QLabel like ? ",Qb.wrapLike(model.getLabelName()));
			if(count==0){
				model.delete();
			}
		}
		restResponse.setSuccess("操作成功");
	}
	
	/**
	 * 获得所有标签
	 * @author yihuineng
	 */
	public void getAllLabel() {
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		List<KM_LABELModel> labellist = KM_LABELModel.dao.find("select * from KM_LABEL");
		int i=1;
		for (KM_LABELModel label : labellist) {
			Map<String, Object> recMap = new HashMap<String, Object>();
			recMap.putAll(label.toMap());
			ResultList.put(i, recMap);
			i++;
		}
		// 返回数据
		restResponse.put("Lables", ResultList.values().toArray());
	}
	
	
	
	/**
	 * 获得模板id&名称列表
	 * @author yihuineng
	 */
	public void getTempList() {
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		List<KM_MD_TEMPModel> list = KM_MD_TEMPModel.dao.find("select * from KM_LABEL");
		int i=1;
		for (KM_MD_TEMPModel model : list) {
			Map<String, Object> recMap = new HashMap<String, Object>();
			recMap.putAll(model.toMap());
			ResultList.put(i, recMap);
			i++;
		}
		// 返回数据
		restResponse.put("TempList", ResultList.values().toArray());
	}
	
	
	/**
	 * 获得模板
	 * @author yihuineng
	 */
	public void getTemp() {
		Long id = getParaToLong("id");
		KM_MD_TEMPModel model=KM_MD_TEMPModel.dao.findById(id);
		// 返回数据
		restResponse.put("Temp", model.toMap());
	}
	
	/**
	 * 获得QA
	 * @author yihuineng
	 */
	public void getQA() {
		Long id = getParaToLong("id");
		KM_Q_AModel model=KM_Q_AModel.dao.findById(id);
		// 返回数据
		restResponse.put("QA", model.toMap());
	}

	/**
	 * add or update a QA
	 * @author yihuineng
	 */
	public void doSave() {
		User user = ShiroKit.getCurrentUser();
		String userCode = user.getUserCode();
		
		Long id = getParaToLong("id");
		String qContent = getPara("QContent");
		String aContent = getPara("AContent");
		String qLabelsStr = getPara("QLabels");
		String qLabels=dealLabels(qLabelsStr);
		boolean isStable=getParaToBoolean("IsStable");
		
		if(id==null){
			KM_Q_AModel model =new KM_Q_AModel();
			model.setID(IdKit.newUid());
			model.setAddTime(new Date());
			model.setAddUser(userCode);
			model.setQContent(qContent);
			model.setAContent(aContent);
			model.setQLabels(qLabels);
			model.setIsStable(isStable);
			model.save();
			restResponse.setSuccess("添加成功");
		}else{
			KM_Q_AModel model = KM_Q_AModel.dao.findById(id);
			model.setAddTime(new Date());
			model.setAddUser(userCode);
			model.setQContent(qContent);
			model.setAContent(aContent);
			model.setQLabels(qLabels);
			model.setIsStable(isStable);
			model.update();
			restResponse.setSuccess("更新成功");
		}
	}
	
	
	/**
	 * 保存MD模板
	 * @author yihuineng
	 */
	public void saveTemp() {
		
		Long id = getParaToLong("id");
		String tName= getPara("TName");
		String tContent = getPara("TContent");
		String memo = getPara("Memo");
		
		if(id==null){
			KM_MD_TEMPModel model =new KM_MD_TEMPModel();
			model.setID(IdKit.newUid());
			model.setMemo(memo);
			model.setTContent(tContent);
			model.setTName(tName);
			model.save();
			restResponse.setSuccess("添加成功");
		}else{
			KM_MD_TEMPModel model = KM_MD_TEMPModel.dao.findById(id);
			model.setMemo(memo);
			model.setTContent(tContent);
			model.setTName(tName);
			model.update();
			restResponse.setSuccess("更新成功");
		}
	}
	
	
	
	
	/**
	 * 获得一页QA信息
	 * @author yihuineng
	 */
	public void getList() {
		// 准备参数
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		int pageSize = getParaToInt("pageSize");
		int pageIndex = getParaToInt("pageIndex");
		String keyWord = getPara("keyWord");
		String SLabels = getPara("SLabels");
		String isStable = getPara("isStable");
		
		// 分页查询记录
		Qb qb = new Qb(" from KM_Q_A where 1=1 ");
		if (StrKit.notBlank(keyWord)) {
			qb.append(" and ( QContent like ? ", Qb.wrapLike(keyWord));
			qb.append(" or AContent like ? ) ", Qb.wrapLike(keyWord));
		}
		if (StrKit.notBlank(isStable)) {
			qb.append(" and IsStable = ? ",isStable);
		}
		if (StrKit.notBlank(SLabels)) {
			String[] ss=SLabels.split(",");
			for (String s : ss) {
				qb.append(" and QLabels like ? ",Qb.wrapLike(s));
			}
		}
		qb.append(" order by AddTime desc");
		String selectSql = "select * ";
		Page<KM_Q_AModel> page = KM_Q_AModel.dao.paginate(pageIndex, pageSize, selectSql, qb);
		List<KM_Q_AModel> list = page.getList();
		int TotalRow = page.getTotalRow();
		restResponse.put("TotalRow", TotalRow);

		// 全部转存到ResultList
		int i = 1;
		for (KM_Q_AModel model : list) {
			Map<String, Object> ResultRecord = new HashMap<String, Object>();// 一条的全部信息
			ResultRecord.putAll(model.toMap());
			// 转义时间
			String AddTime = DateKit.toString(model.getAddTime(), "yyyy-MM-dd HH:mm");
			ResultRecord.put("AddTimeFormat", AddTime);
			String EditTime = DateKit.toString(model.getEditTime(), "yyyy-MM-dd HH:mm");
			ResultRecord.put("EditTimeFormat", EditTime);
			// 加到task结果集
			ResultList.put(i, ResultRecord);
			i++;
		}
		// 返回数据
		restResponse.put("pageList", ResultList.values().toArray());

	}
	
	/**
	 * 标签处理，自动添加父标签,全化小写，去空，去重，新标签添加，错误标签舍弃，重组返回
	 * @author yihuineng
	 */
	private String dealLabels(String qLabelsStr) {
		List<String> list = new LinkedList<String>();
		String[] qLabels=qLabelsStr.split(",");
		//添加父标签
		for (String s : qLabels) {
			s=s.toLowerCase().trim();
			KM_LABELModel model=KM_LABELModel.dao.findFirst("select * from KM_LABEL where LabelName=?",s);
			String[] fLabels=model.getFLabels().split(",");
			for (String fl : fLabels) {
				if(!list.contains(fl)) {  
		            list.add(fl);
		        } 
			}
		}
		//添加标签
		for (String s : qLabels) {
			s=s.toLowerCase().trim();
			if(!list.contains(s)) {  
	            list.add(s);
	        }  
		}
		//更新新标签
		for (String s : list) {
			if(isLabelNew(s)){
				KM_LABELModel model= new KM_LABELModel();
				model.setID(IdKit.newUid());
				model.setFLabels("");
				model.setLabelName(s);
				model.save();
			}
		}
		return String.join(",", list);
	}
	
	/**
	 * 检查标签是否是新的
	 * @author yihuineng
	 */
	private boolean isLabelNew(String label){
		KM_LABELModel model = new KM_LABELModel();
		model=model.dao.findFirst("select * from KM_LABEL where LabelName=? ", label);
		if(model!=null) 
			return false;
		else 
			return true;
	}
}
