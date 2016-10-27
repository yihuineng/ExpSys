package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.Date;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PRoleBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("parentId", "FieldType未实现");
		fieldInfoMap.put("innerCode", "FieldType未实现");
		fieldInfoMap.put("isLeaf", "FieldType未实现");
		fieldInfoMap.put("roleCode", "FieldType未实现");
		fieldInfoMap.put("roleName", "FieldType未实现");
		fieldInfoMap.put("memo", "FieldType未实现");
		fieldInfoMap.put("addUser", "FieldType未实现");
		fieldInfoMap.put("addTime", "FieldType未实现");
		fieldInfoMap.put("modifyUser", "FieldType未实现");
		fieldInfoMap.put("modifyTime", "FieldType未实现");
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
	 * @return the parentId
	 */
	public long getParentId() {
		Long v = getLong("parentId");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(long parentId) {
		set("parentId", parentId);
	}
	
	/**
	 * @return the innerCode
	 */
	public String getInnerCode() {
		return getStr("innerCode");
	}

	/**
	 * @param innerCode the innerCode to set
	 */
	public void setInnerCode(String innerCode) {
		set("innerCode", innerCode);
	}
	
	/**
	 * @return the isLeaf
	 */
	public boolean getIsLeaf() {
		return getBoolean("isLeaf");
	}

	/**
	 * @param isLeaf the isLeaf to set
	 */
	public void setIsLeaf(boolean isLeaf) {
		set("isLeaf", isLeaf);
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
	 * @return the roleName
	 */
	public String getRoleName() {
		return getStr("roleName");
	}

	/**
	 * @param roleName the roleName to set
	 */
	public void setRoleName(String roleName) {
		set("roleName", roleName);
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
	
}