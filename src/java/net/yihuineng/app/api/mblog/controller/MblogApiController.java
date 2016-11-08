package net.yihuineng.app.api.mblog.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.kit.DateKit;
import net.yihuineng.framework.rest.RestApiController;
import net.yihuineng.framework.routebind.ControllerKey;
import net.yihuineng.framework.shiro.ShiroKit;
import net.yihuineng.framework.shiro.User;
import net.yihuineng.platform.id.IdKit;
import net.yihuineng.project.mblog.model.MBLOGModel;
import net.yihuineng.project.mblog.model.MBLOG_DISCUSSModel;
import net.yihuineng.project.mblog.model.MBLOG_TEMPModel;

@ControllerKey("/api/mblog")
public class MblogApiController extends RestApiController {
	/**
	 * add or update a MBLOG
	 * @author yihuineng
	 */
	public void doSave() {
		User user = ShiroKit.getCurrentUser();
		String userCode = user.getUserCode();
		
		Long id = getParaToLong("id");
		String blog = getPara("Blog");
		String blogType = getPara("BlogType");
		boolean isStable=getParaToBoolean("IsStable");
		
		if(id==null){
			MBLOGModel model =new MBLOGModel();
			model.setID(IdKit.newUid());
			model.setAddTime(new Date());
			model.setAddUser(userCode);
			model.setBlog(blog);
			model.setBlogType(blogType);
			model.setIsStable(isStable);
			model.save();
			restResponse.setSuccess("添加成功");
		}else{
			MBLOGModel model = MBLOGModel.dao.findById(id);
			model.setBlog(blog);
			model.setBlogType(blogType);
			model.setIsStable(isStable);
			model.update();
			restResponse.setSuccess("更新成功");
		}
	}
	
	/**
	 * delete MBLOG by id
	 * @author yihuineng
	 */
	public void doDelete() {
		Long id = getParaToLong("id");
		MBLOGModel model = MBLOGModel.dao.findById(id);
		model.delete();
		restResponse.setSuccess("删除成功");
	}
	
	/**
	 * get MBLOG by id
	 * @author yihuineng
	 */
	public void getBlog() {
		Long id = getParaToLong("id");
		MBLOGModel model=MBLOGModel.dao.findById(id);
		// 返回数据
		restResponse.put("MBLOG", model.toMap());
	}
	
	/**
	 * blog是否稳定，是否发布
	 * @author yihuineng
	 */
	public void setStable() {
		Long id = getParaToLong("id");
		boolean isStable=getParaToBoolean("IsStable");
		MBLOGModel model = MBLOGModel.dao.findById(id);
		model.setIsStable(isStable);
		model.update();
		restResponse.setSuccess("操作成功");
	}
	
	/**
	 * 点击量更新
	 * @author yihuineng
	 */
	public void countAdd() {
		Long id = getParaToLong("id");
		MBLOGModel model = MBLOGModel.dao.findById(id);
		model.setViewCount(model.getViewCount()+1);
		model.update();
		restResponse.setSuccess("操作成功");
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
			MBLOG_TEMPModel model =new MBLOG_TEMPModel();
			model.setID(IdKit.newUid());
			model.setMemo(memo);
			model.setTContent(tContent);
			model.setTName(tName);
			model.save();
			restResponse.setSuccess("添加成功");
		}else{
			MBLOG_TEMPModel model = MBLOG_TEMPModel.dao.findById(id);
			model.setMemo(memo);
			model.setTContent(tContent);
			model.setTName(tName);
			model.update();
			restResponse.setSuccess("更新成功");
		}
	}
	
	
	/**
	 * 删除模板
	 * @author yihuineng
	 */
	public void delTemp() {
		Long id = getParaToLong("id");
		MBLOG_TEMPModel model = MBLOG_TEMPModel.dao.findById(id);
		model.delete();
		restResponse.setSuccess("删除成功");
	}
	
	/**
	 * 获得模板
	 * @author yihuineng
	 */
	public void getTemp() {
		Long id = getParaToLong("id");
		MBLOG_TEMPModel model=MBLOG_TEMPModel.dao.findById(id);
		// 返回数据
		restResponse.put("Temp", model.toMap());
	}
	
	
	/**
	 * 获得模板id&名称列表
	 * @author yihuineng
	 */
	public void getTempList() {
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		List<MBLOG_TEMPModel> list = MBLOG_TEMPModel.dao.find("select * from MBLOG_TEMP");
		int i=1;
		for (MBLOG_TEMPModel model : list) {
			Map<String, Object> recMap = new HashMap<String, Object>();
			//recMap.putAll(model.toMap());
			recMap.put("id", model.getID());
			recMap.put("TName", model.getTName());
			ResultList.put(i, recMap);
			i++;
		}
		// 返回数据
		restResponse.put("TempList", ResultList.values().toArray());
	}
	
	/**
	 * 添加评论
	 * @author yihuineng
	 */
	public void addDiscuss() {
		Long blogID = getParaToLong("BlogId");
		String discuss= getPara("Discuss");
		String userIP = getPara("UserIP");
		String userName = getPara("UserName");
		String userDevice = getPara("UserDevice");
		String userContact = getPara("UserContact");
		
		if(blogID!=null){
			MBLOG_DISCUSSModel model =new MBLOG_DISCUSSModel();
			model.setID(IdKit.newUid());
			model.setBlogID(blogID);
			model.setUserContact(userContact);
			model.setUserName(userName);
			model.setUserIP(userIP);
			model.setUserDevice(userDevice);
			model.setDiscuss(discuss);
			model.save();
			restResponse.setSuccess("添加成功");
		}else{
			restResponse.setError("博客id不存在");
		}
	}
	
	
	/**
	 * 删除评论
	 * @author yihuineng
	 */
	public void delDiscuss() {
		Long id = getParaToLong("id");
		MBLOG_DISCUSSModel model = MBLOG_DISCUSSModel.dao.findById(id);
		model.delete();
		restResponse.setSuccess("删除成功");
	}
	
	/**
	 * 获得评论列表
	 * @author yihuineng
	 */
	public void getDiscussList() {
		Long blogID = getParaToLong("BlogID");
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		List<MBLOG_DISCUSSModel> list = MBLOG_DISCUSSModel.dao.find("select * from MBLOG_DISCUSS where BlogID=? ",blogID);
		int i=1;
		for (MBLOG_DISCUSSModel model : list) {
			Map<String, Object> recMap = new HashMap<String, Object>();
			recMap.putAll(model.toMap());
			ResultList.put(i, recMap);
			i++;
		}
		// 返回数据
		restResponse.put("DiscussList", ResultList.values().toArray());
	}
	
	
	/**
	 * 获得一页博客列表 
	 * @author yihuineng
	 */
	public void getList() {
		// 准备参数
		Map<Integer, Object> ResultList = new HashMap<Integer, Object>();
		int pageSize = getParaToInt("pageSize");
		int pageIndex = getParaToInt("pageIndex");
		String keyWord = getPara("keyWord");
		String isStable = getPara("IsStable");
		String blogType=getPara("BlogType");
		
		// 分页查询记录
		Qb qb = new Qb(" from MBLOG where 1=1 ");
		if (StrKit.notBlank(blogType)) {
			qb.append(" and BlogType = ? ", blogType);
		}
		if (StrKit.notBlank(keyWord)) {
			qb.append(" and Blog like ? ", Qb.wrapLike(keyWord));
		}
		if (StrKit.notBlank(isStable)) {
			qb.append(" and IsStable = ? ",isStable);
		}
		qb.append(" order by AddTime desc");
		String selectSql = "select * ";
		Page<MBLOGModel> page = MBLOGModel.dao.paginate(pageIndex, pageSize, selectSql, qb);
		List<MBLOGModel> list = page.getList();
		int TotalRow = page.getTotalRow();
		restResponse.put("TotalRow", TotalRow);

		// 全部转存到ResultList
		int i = 1;
		for (MBLOGModel model : list) {
			Map<String, Object> ResultRecord = new HashMap<String, Object>();// 一条的全部信息
			ResultRecord.putAll(model.toMap());
			// 转义时间
			String AddTime = DateKit.toString(model.getAddTime(), "yyyy-MM-dd HH:mm");
			ResultRecord.put("AddTimeFormat", AddTime);
			// 加到task结果集
			ResultList.put(i, ResultRecord);
			i++;
		}
		// 返回数据
		restResponse.put("pageList", ResultList.values().toArray());
	}

}
