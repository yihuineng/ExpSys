package net.yihuineng.platform.model.base;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import net.yihuineng.framework.data.Model;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PCodeBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("codeType", "FieldType未实现");
		fieldInfoMap.put("parentCode", "FieldType未实现");
		fieldInfoMap.put("codeValue", "FieldType未实现");
		fieldInfoMap.put("codeName", "FieldType未实现");
		fieldInfoMap.put("orderFlag", "FieldType未实现");
		fieldInfoMap.put("memo", "FieldType未实现");
		fieldInfoMap.put("addTime", "FieldType未实现");
		fieldInfoMap.put("addUser", "FieldType未实现");
		fieldInfoMap.put("modifyTime", "FieldType未实现");
		fieldInfoMap.put("modifyUser", "FieldType未实现");
	}
		
	@Override
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
	/**
	 * @return the codeType
	 */
	public String getCodeType() {
		return getStr("codeType");
	}

	/**
	 * @param codeType the codeType to set
	 */
	public void setCodeType(String codeType) {
		set("codeType", codeType);
	}
	
	/**
	 * @return the parentCode
	 */
	public String getParentCode() {
		return getStr("parentCode");
	}

	/**
	 * @param parentCode the parentCode to set
	 */
	public void setParentCode(String parentCode) {
		set("parentCode", parentCode);
	}
	
	/**
	 * @return the codeValue
	 */
	public String getCodeValue() {
		return getStr("codeValue");
	}

	/**
	 * @param codeValue the codeValue to set
	 */
	public void setCodeValue(String codeValue) {
		set("codeValue", codeValue);
	}
	
	/**
	 * @return the codeName
	 */
	public String getCodeName() {
		return getStr("codeName");
	}

	/**
	 * @param codeName the codeName to set
	 */
	public void setCodeName(String codeName) {
		set("codeName", codeName);
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