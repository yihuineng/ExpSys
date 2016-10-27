package net.yihuineng.platform.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class PUserSettingsBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("userCode", "FieldType未实现");
		fieldInfoMap.put("configName", "FieldType未实现");
		fieldInfoMap.put("configValue", "FieldType未实现");
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
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
	 * @return the configName
	 */
	public String getConfigName() {
		return getStr("configName");
	}

	/**
	 * @param configName the configName to set
	 */
	public void setConfigName(String configName) {
		set("configName", configName);
	}
	
	/**
	 * @return the configValue
	 */
	public String getConfigValue() {
		return getStr("configValue");
	}

	/**
	 * @param configValue the configValue to set
	 */
	public void setConfigValue(String configValue) {
		set("configValue", configValue);
	}
	
}