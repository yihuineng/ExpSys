package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.Date;
import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PUserBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("userCode", "FieldType未实现");
		fieldInfoMap.put("userName", "FieldType未实现");
		fieldInfoMap.put("realName", "FieldType未实现");
		fieldInfoMap.put("password", "FieldType未实现");
		fieldInfoMap.put("branchGroupCode", "FieldType未实现");
		fieldInfoMap.put("isBranchAdmin", "FieldType未实现");
		fieldInfoMap.put("isEnable", "FieldType未实现");
		fieldInfoMap.put("type", "FieldType未实现");
		fieldInfoMap.put("email", "FieldType未实现");
		fieldInfoMap.put("mobile", "FieldType未实现");
		fieldInfoMap.put("lastLoginTime", "FieldType未实现");
		fieldInfoMap.put("lastLoginIp", "FieldType未实现");
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
	 * @return the userName
	 */
	public String getUserName() {
		return getStr("userName");
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		set("userName", userName);
	}
	
	/**
	 * @return the realName
	 */
	public String getRealName() {
		return getStr("realName");
	}

	/**
	 * @param realName the realName to set
	 */
	public void setRealName(String realName) {
		set("realName", realName);
	}
	
	/**
	 * @return the password
	 */
	public String getPassword() {
		return getStr("password");
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		set("password", password);
	}
	
	/**
	 * @return the branchGroupCode
	 */
	public String getBranchGroupCode() {
		return getStr("branchGroupCode");
	}

	/**
	 * @param branchGroupCode the branchGroupCode to set
	 */
	public void setBranchGroupCode(String branchGroupCode) {
		set("branchGroupCode", branchGroupCode);
	}
	
	/**
	 * @return the isBranchAdmin
	 */
	public boolean getIsBranchAdmin() {
		return getBoolean("isBranchAdmin");
	}

	/**
	 * @param isBranchAdmin the isBranchAdmin to set
	 */
	public void setIsBranchAdmin(boolean isBranchAdmin) {
		set("isBranchAdmin", isBranchAdmin);
	}
	
	/**
	 * @return the isEnable
	 */
	public boolean getIsEnable() {
		return getBoolean("isEnable");
	}

	/**
	 * @param isEnable the isEnable to set
	 */
	public void setIsEnable(boolean isEnable) {
		set("isEnable", isEnable);
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
	 * @return the email
	 */
	public String getEmail() {
		return getStr("email");
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		set("email", email);
	}
	
	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return getStr("mobile");
	}

	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		set("mobile", mobile);
	}
	
	/**
	 * @return the lastLoginTime
	 */
	public Date getLastLoginTime() {
		return getDate("lastLoginTime");
	}

	/**
	 * @param lastLoginTime the lastLoginTime to set
	 */
	public void setLastLoginTime(Date lastLoginTime) {
		if (lastLoginTime == null) {
			set("lastLoginTime", null);
		} else {
			set("lastLoginTime", new java.sql.Date(lastLoginTime.getTime()));
		}
	}
	
	/**
	 * @return the lastLoginIp
	 */
	public String getLastLoginIp() {
		return getStr("lastLoginIp");
	}

	/**
	 * @param lastLoginIp the lastLoginIp to set
	 */
	public void setLastLoginIp(String lastLoginIp) {
		set("lastLoginIp", lastLoginIp);
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