package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.Date;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PUserRoleBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("userCode", "FieldType未实现");
		fieldInfoMap.put("roleCode", "FieldType未实现");
		fieldInfoMap.put("addTime", "FieldType未实现");
		fieldInfoMap.put("addUser", "FieldType未实现");
		fieldInfoMap.put("modifyTime", "FieldType未实现");
		fieldInfoMap.put("modifyUser", "FieldType未实现");
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
	 * @return the userCode
	 */
	public String getUserCode() {
		return getStr("userCode");
	}

	/**
	 * @param userCode the userCode to set
	 */
	public void setUserCode(String userCode) {
		set("userCode", userCode);
	}
	
	/**
	 * @return the roleCode
	 */
	public String getRoleCode() {
		return getStr("roleCode");
	}

	/**
	 * @param roleCode the roleCode to set
	 */
	public void setRoleCode(String roleCode) {
		set("roleCode", roleCode);
	}
	
	/**
	 * @return the addTime
	 */
	public Date getAddTime() {
		return getDate("addTime");
	}

	/**
	 * @param addTime the addTime to set
	 */
	public void setAddTime(Date addTime) {
		if (addTime == null) {
			set("addTime", null);
		} else {
			set("addTime", new java.sql.Date(addTime.getTime()));
		}
	}
	
	/**
	 * @return the addUser
	 */
	public String getAddUser() {
		return getStr("addUser");
	}

	/**
	 * @param addUser the addUser to set
	 */
	public void setAddUser(String addUser) {
		set("addUser", addUser);
	}
	
	/**
	 * @return the modifyTime
	 */
	public Date getModifyTime() {
		return getDate("modifyTime");
	}

	/**
	 * @param modifyTime the modifyTime to set
	 */
	public void setModifyTime(Date modifyTime) {
		if (modifyTime == null) {
			set("modifyTime", null);
		} else {
			set("modifyTime", new java.sql.Date(modifyTime.getTime()));
		}
	}
	
	/**
	 * @return the modifyUser
	 */
	public String getModifyUser() {
		return getStr("modifyUser");
	}

	/**
	 * @param modifyUser the modifyUser to set
	 */
	public void setModifyUser(String modifyUser) {
		set("modifyUser", modifyUser);
	}
	
}