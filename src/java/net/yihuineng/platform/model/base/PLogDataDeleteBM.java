package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.Date;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PLogDataDeleteBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("tableCode", "FieldType未实现");
		fieldInfoMap.put("pk", "FieldType未实现");
		fieldInfoMap.put("memo", "FieldType未实现");
		fieldInfoMap.put("deleteTime", "FieldType未实现");
		fieldInfoMap.put("deleteUser", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the id
	 */
	public long getId() {
		Long v = getLong("id");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		set("id", id);
	}
	
	/**
	 * @return the tableCode
	 */
	public String getTableCode() {
		return getStr("tableCode");
	}

	/**
	 * @param tableCode the tableCode to set
	 */
	public void setTableCode(String tableCode) {
		set("tableCode", tableCode);
	}
	
	/**
	 * @return the pk
	 */
	public long getPk() {
		Long v = getLong("pk");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param pk the pk to set
	 */
	public void setPk(long pk) {
		set("pk", pk);
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
	
	/**
	 * @return the deleteTime
	 */
	public Date getDeleteTime() {
		return getDate("deleteTime");
	}

	/**
	 * @param deleteTime the deleteTime to set
	 */
	public void setDeleteTime(Date deleteTime) {
		if (deleteTime == null) {
			set("deleteTime", null);
		} else {
			set("deleteTime", new java.sql.Date(deleteTime.getTime()));
		}
	}
	
	/**
	 * @return the deleteUser
	 */
	public String getDeleteUser() {
		return getStr("deleteUser");
	}

	/**
	 * @param deleteUser the deleteUser to set
	 */
	public void setDeleteUser(String deleteUser) {
		set("deleteUser", deleteUser);
	}
	
}