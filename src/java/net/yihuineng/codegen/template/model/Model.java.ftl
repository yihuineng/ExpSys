<#include "../common.ftl"/>
package ${modulePackage}.model;

<#list imports as i>
import ${i};
</#list>

public class ${tableName}Model extends ${tableName}BM<${tableName}Model> {

	private static final long serialVersionUID = 1L;
	
	public static ${tableName}Model dao = new ${tableName}Model();
	
}