package net.yihuineng.codegen.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class CGModelBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("modelCode", "FieldType未实现");
		fieldInfoMap.put("modelName", "FieldType未实现");
		fieldInfoMap.put("modelType", "FieldType未实现");
		fieldInfoMap.put("modelPackage", "FieldType未实现");
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
	 * @return the modelCode
	 */
	public String getModelCode() {
		return getStr("modelCode");
	}

	/**
	 * @param modelCode the modelCode to set
	 */
	public void setModelCode(String modelCode) {
		set("modelCode", modelCode);
	}
	
	/**
	 * @return the modelName
	 */
	public String getModelName() {
		return getStr("modelName");
	}

	/**
	 * @param modelName the modelName to set
	 */
	public void setModelName(String modelName) {
		set("modelName", modelName);
	}
	
	/**
	 * @return the modelType
	 */
	public String getModelType() {
		return getStr("modelType");
	}

	/**
	 * @param modelType the modelType to set
	 */
	public void setModelType(String modelType) {
		set("modelType", modelType);
	}
	
	/**
	 * @return the modelPackage
	 */
	public String getModelPackage() {
		return getStr("modelPackage");
	}

	/**
	 * @param modelPackage the modelPackage to set
	 */
	public void setModelPackage(String modelPackage) {
		set("modelPackage", modelPackage);
	}
	
}