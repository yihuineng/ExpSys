<#include "../common.ftl"/>
package ${modulePackage}.model.base;

<#list imports as i>
import ${i};
</#list>

/**
 * 该类文件由代码生成工具自动生成，请勿手工修改。
 */
public abstract class ${tableName}BM<M extends Model<M>> extends Model<M> {

	private static final long serialVersionUID = 1L;

	/*----------------------------------------------------------------------*
	 * 模型映射
	 *----------------------------------------------------------------------*/
	
	private static final Map<String, String> fieldInfoMap = new HashMap<String, String>();
	static {
<#list columns as col>
		fieldInfoMap.put("${col.name}", "FieldType未实现");
</#list>
	}
		
	protected Map<String, String> getFieldInfoMap() {
		return fieldInfoMap;
	}
	
	/*----------------------------------------------------------------------*
	 * Getter and Setter
	 *----------------------------------------------------------------------*/
<#list columns as col>
<#assign colCamelName = firstLowerCamelCase(col.name)/>
<#assign colUpperCamelName = firstUpperCamelCase(col.name)/> 
	/**
	 * @return the ${col.note}
	 */
<#if col.className == "java.lang.String">
	public String get${colUpperCamelName}() {
		return getStr("${col.name}");
	}
<#elseif col.className == "java.lang.Long">
	public long get${colUpperCamelName}() {
		Long v = getLong("${col.name}");
		if (v == null) {
			return 0L;
		}
		return v.longValue();
	}
<#elseif col.className == "java.sql.Date" || col.className == "java.sql.Timestamp">
	public Date get${colUpperCamelName}() {
		return getDate("${col.name}");
	}
<#elseif col.className == "java.lang.Double">
	public double get${colUpperCamelName}() {
		return getDouble("${col.name}");
	}	
<#elseif col.className == "java.lang.Boolean">
	public boolean get${colUpperCamelName}() {
		return getBoolean("${col.name}");
	}
</#if>

	/**
	 * @param ${col.note} the ${col.note} to set
	 */
<#if col.className == "java.lang.String">
	public void set${colUpperCamelName}(String ${colCamelName}) {
		set("${col.name}", ${colCamelName});
	}
<#elseif col.className == "java.lang.Long">
	public void set${colUpperCamelName}(long ${colCamelName}) {
		set("${col.name}", ${colCamelName});
	}
<#elseif col.className == "java.sql.Date" || col.className == "java.sql.Timestamp">
	public void set${colUpperCamelName}(Date ${colCamelName}) {
		if (${colCamelName} == null) {
			set("${col.name}", null);
		} else {
			set("${col.name}", new java.sql.Date(${colCamelName}.getTime()));
		}
	}
<#elseif col.className == "java.lang.Double">
	public void set${colUpperCamelName}(double ${colCamelName}) {
		set("${col.name}", ${colCamelName});
	}
<#elseif col.className == "java.lang.Boolean">
	public void set${colUpperCamelName}(boolean ${colCamelName}) {
		set("${col.name}", ${colCamelName});
	}
</#if>
	
</#list>
}