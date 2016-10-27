package net.yihuineng.codegen.model.base;

import java.util.Map;

import net.yihuineng.framework.data.Model;

import java.util.HashMap;

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class CGModelFieldBM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
		fieldInfoMap.put("id", "FieldType未实现");
		fieldInfoMap.put("modelCode", "FieldType未实现");
		fieldInfoMap.put("fieldCode", "FieldType未实现");
		fieldInfoMap.put("fieldName", "FieldType未实现");
		fieldInfoMap.put("fieldType", "FieldType未实现");
		fieldInfoMap.put("className", "FieldType未实现");
		fieldInfoMap.put("pk", "FieldType未实现");
		fieldInfoMap.put("notNull", "FieldType未实现");
		fieldInfoMap.put("attributes", "FieldType未实现");
		fieldInfoMap.put("orderFlag", "FieldType未实现");
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
	 * @return the fieldCode
	 */
	public String getFieldCode() {
		return getStr("fieldCode");
	}

	/**
	 * @param fieldCode the fieldCode to set
	 */
	public void setFieldCode(String fieldCode) {
		set("fieldCode", fieldCode);
	}
	
	/**
	 * @return the fieldName
	 */
	public String getFieldName() {
		return getStr("fieldName");
	}

	/**
	 * @param fieldName the fieldName to set
	 */
	public void setFieldName(String fieldName) {
		set("fieldName", fieldName);
	}
	
	/**
	 * @return the fieldType
	 */
	public String getFieldType() {
		return getStr("fieldType");
	}

	/**
	 * @param fieldType the fieldType to set
	 */
	public void setFieldType(String fieldType) {
		set("fieldType", fieldType);
	}
	
	/**
	 * @return the className
	 */
	public String getClassName() {
		return getStr("className");
	}

	/**
	 * @param className the className to set
	 */
	public void setClassName(String className) {
		set("className", className);
	}
	
	/**
	 * @return the pk
	 */
	public boolean getPk() {
		return getBoolean("pk");
	}

	/**
	 * @param pk the pk to set
	 */
	public void setPk(boolean pk) {
		set("pk", pk);
	}
	
	/**
	 * @return the notNull
	 */
	public boolean getNotNull() {
		return getBoolean("notNull");
	}

	/**
	 * @param notNull the notNull to set
	 */
	public void setNotNull(boolean notNull) {
		set("notNull", notNull);
	}
	
	/**
	 * @return the attributes
	 */
	public String getAttributes() {
		return getStr("attributes");
	}

	/**
	 * @param attributes the attributes to set
	 */
	public void setAttributes(String attributes) {
		set("attributes", attributes);
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
	
}