package net.yihuineng.platform.model.base;

import java.util.Date;
import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PRolePermissionBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("roleId", "FieldType未实现");
		fieldInfoMap.put("permissionId", "FieldType未实现");
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
	 * @return the null
	 */
	public long getId() {
		Long v = getLong("id");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param null the null to set
	 */
	public void setId(long id) {
		set("id", id);
	}
	
	/**
	 * @return the null
	 */
	public long getRoleId() {
		Long v = getLong("roleId");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param null the null to set
	 */
	public void setRoleId(long roleId) {
		set("roleId", roleId);
	}
	
	/**
	 * @return the null
	 */
	public long getPermissionId() {
		Long v = getLong("permissionId");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param null the null to set
	 */
	public void setPermissionId(long permissionId) {
		set("permissionId", permissionId);
	}
	
	/**
	 * @return the null
	 */
	public Date getAddTime() {
		return getDate("addTime");
	}

	/**
	 * @param null the null to set
	 */
	public void setAddTime(Date addTime) {
		if (addTime == null) {
			set("addTime", null);
		} else {
			set("addTime", new java.sql.Date(addTime.getTime()));
		}
	}
	
	/**
	 * @return the null
	 */
	public String getAddUser() {
		return getStr("addUser");
	}

	/**
	 * @param null the null to set
	 */
	public void setAddUser(String addUser) {
		set("addUser", addUser);
	}
	
	/**
	 * @return the null
	 */
	public Date getModifyTime() {
		return getDate("modifyTime");
	}

	/**
	 * @param null the null to set
	 */
	public void setModifyTime(Date modifyTime) {
		if (modifyTime == null) {
			set("modifyTime", null);
		} else {
			set("modifyTime", new java.sql.Date(modifyTime.getTime()));
		}
	}
	
	/**
	 * @return the null
	 */
	public String getModifyUser() {
		return getStr("modifyUser");
	}

	/**
	 * @param null the null to set
	 */
	public void setModifyUser(String modifyUser) {
		set("modifyUser", modifyUser);
	}
	
}