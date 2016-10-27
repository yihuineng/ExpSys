package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.Date;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PPermissionBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("parentId", "FieldType未实现");
		fieldInfoMap.put("innerCode", "FieldType未实现");
		fieldInfoMap.put("permissionCode", "FieldType未实现");
		fieldInfoMap.put("permissionName", "FieldType未实现");
		fieldInfoMap.put("type", "FieldType未实现");
		fieldInfoMap.put("url", "FieldType未实现");
		fieldInfoMap.put("icon", "FieldType未实现");
		fieldInfoMap.put("moreAuthzValue", "FieldType未实现");
		fieldInfoMap.put("memo", "FieldType未实现");
		fieldInfoMap.put("visiable", "FieldType未实现");
		fieldInfoMap.put("isLeaf", "FieldType未实现");
		fieldInfoMap.put("orderFlag", "FieldType未实现");
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
	 * @return the permissionCode
	 */
	public String getPermissionCode() {
		return getStr("permissionCode");
	}

	/**
	 * @param permissionCode the permissionCode to set
	 */
	public void setPermissionCode(String permissionCode) {
		set("permissionCode", permissionCode);
	}
	
	/**
	 * @return the permissionName
	 */
	public String getPermissionName() {
		return getStr("permissionName");
	}

	/**
	 * @param permissionName the permissionName to set
	 */
	public void setPermissionName(String permissionName) {
		set("permissionName", permissionName);
	}
	
	/**
	 * @return the type
	 */
	public String getType() {
		return getStr("type");
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		set("type", type);
	}
	
	/**
	 * @return the url
	 */
	public String getUrl() {
		return getStr("url");
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		set("url", url);
	}
	
	/**
	 * @return the icon
	 */
	public String getIcon() {
		return getStr("icon");
	}

	/**
	 * @param icon the icon to set
	 */
	public void setIcon(String icon) {
		set("icon", icon);
	}
	
	/**
	 * @return the moreAuthzValue
	 */
	public String getMoreAuthzValue() {
		return getStr("moreAuthzValue");
	}

	/**
	 * @param moreAuthzValue the moreAuthzValue to set
	 */
	public void setMoreAuthzValue(String moreAuthzValue) {
		set("moreAuthzValue", moreAuthzValue);
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
	 * @return the visiable
	 */
	public boolean getVisiable() {
		return getBoolean("visiable");
	}

	/**
	 * @param visiable the visiable to set
	 */
	public void setVisiable(boolean visiable) {
		set("visiable", visiable);
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
	 * @return the orderFlag
	 */
	public long getOrderFlag() {
		Long v = getLong("orderFlag");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}

	/**
	 * @param orderFlag the orderFlag to set
	 */
	public void setOrderFlag(long orderFlag) {
		set("orderFlag", orderFlag);
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