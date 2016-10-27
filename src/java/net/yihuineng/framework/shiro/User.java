package net.yihuineng.framework.shiro;

import java.io.Serializable;
import java.util.Map;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	protected String userCode;
	protected String userName;
	protected String realName;
	protected String branchInnerCode;
	protected String branchGroupCode;
	protected boolean isBranchAdmin;
	protected String status;
	protected String type;

	protected Map<Object, Object> extendAttrs;
	
	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getBranchInnerCode() {
		return branchInnerCode;
	}

	public void setBranchInnerCode(String branchInnerCode) {
		this.branchInnerCode = branchInnerCode;
	}

	public String getBranchGroupCode() {
		return branchGroupCode;
	}

	public void setBranchGroupCode(String branchGroupCode) {
		this.branchGroupCode = branchGroupCode;
	}

	public boolean isBranchAdmin() {
		return isBranchAdmin;
	}

	public void setBranchAdmin(boolean isBranchAdmin) {
		this.isBranchAdmin = isBranchAdmin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public Object getValue(Object key) {
		return extendAttrs.get(key);
	}

	public Map<Object, Object> getValues() {
		return extendAttrs;
	}

	public void setValue(Object key, Object value) {
		extendAttrs.put(key, value);
	}
	
}
