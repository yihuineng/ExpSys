package net.yihuineng.app.model.base;

import net.yihuineng.framework.data.Model;
import java.util.Date;
import java.util.Map;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PAPIBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("apiName", "FieldType未实现");
		fieldInfoMap.put("apiUrl", "FieldType未实现");
		fieldInfoMap.put("apiParams", "FieldType未实现");
		fieldInfoMap.put("apiReturn", "FieldType未实现");
		fieldInfoMap.put("isEnable", "FieldType未实现");
		fieldInfoMap.put("project", "FieldType未实现");
		fieldInfoMap.put("addUser", "FieldType未实现");
		fieldInfoMap.put("addTime", "FieldType未实现");
		fieldInfoMap.put("memo", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the 编号
	 */
	public long getId() {
		Long v = getLong("id");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param 编号 the 编号 to set
	 */
	public void setId(long id) {
		set("id", id);
	}
	
	/**
	 * @return the api名称
	 */
	public String getApiName() {
		return getStr("apiName");
	}

	/**
	 * @param api名称 the api名称 to set
	 */
	public void setApiName(String apiName) {
		set("apiName", apiName);
	}
	
	/**
	 * @return the api地址
	 */
	public String getApiUrl() {
		return getStr("apiUrl");
	}

	/**
	 * @param api地址 the api地址 to set
	 */
	public void setApiUrl(String apiUrl) {
		set("apiUrl", apiUrl);
	}
	
	/**
	 * @return the api入参
	 */
	public String getApiParams() {
		return getStr("apiParams");
	}

	/**
	 * @param api入参 the api入参 to set
	 */
	public void setApiParams(String apiParams) {
		set("apiParams", apiParams);
	}
	
	/**
	 * @return the api返回
	 */
	public String getApiReturn() {
		return getStr("apiReturn");
	}

	/**
	 * @param api返回 the api返回 to set
	 */
	public void setApiReturn(String apiReturn) {
		set("apiReturn", apiReturn);
	}
	
	/**
	 * @return the 是否启用
	 */
	public boolean getIsEnable() {
		return getBoolean("isEnable");
	}

	/**
	 * @param 是否启用 the 是否启用 to set
	 */
	public void setIsEnable(boolean isEnable) {
		set("isEnable", isEnable);
	}
	
	/**
	 * @return the 所属项目
	 */
	public String getProject() {
		return getStr("project");
	}

	/**
	 * @param 所属项目 the 所属项目 to set
	 */
	public void setProject(String project) {
		set("project", project);
	}
	
	/**
	 * @return the 添加人
	 */
	public String getAddUser() {
		return getStr("addUser");
	}

	/**
	 * @param 添加人 the 添加人 to set
	 */
	public void setAddUser(String addUser) {
		set("addUser", addUser);
	}
	
	/**
	 * @return the 添加时间
	 */
	public Date getAddTime() {
		return getDate("addTime");
	}

	/**
	 * @param 添加时间 the 添加时间 to set
	 */
	public void setAddTime(Date addTime) {
		if (addTime == null) {
			set("addTime", null);
		} else {
			set("addTime", new java.sql.Date(addTime.getTime()));
		}
	}
	
	/**
	 * @return the memo
	 */
	public String getMemo() {
		return getStr("memo");
	}

	/**
	 * @param memo the memo to set
	 */
	public void setMemo(String memo) {
		set("memo", memo);
	}
	
}