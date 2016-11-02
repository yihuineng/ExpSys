package net.yihuineng.codegen;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.ClassUtils;

import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Record;

import freemarker.template.Configuration;
import freemarker.template.Template;
import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.sqlinxml.SqlKit;

/**
 * model source generator
 */
public class ModelGenerator extends AbstractCodeGenerator {
	
	protected Template tplBaseModel;
	protected Template tplModel;

	@Override
	protected void loadTemplates(Configuration cfg) throws Exception {
		tplBaseModel = cfg.getTemplate("model/BaseModel.java.ftl");
		tplModel = cfg.getTemplate("model/Model.java.ftl");
	}

	protected void genBaseModel(String tableName) throws Exception {
		Set<String> imports = new HashSet<String>();
		List<Map<String, String>> columns = new ArrayList<Map<String, String>>();

		imports.add("java.util.Map");
		imports.add("java.util.HashMap");
		imports.add("net.yihuineng.framework.data.Model");

		List<Record> fieldList = Db.find(SqlKit.sql("PhysicalTable.listFieldInfo"), tableName);
		for (Record record : fieldList) {
			Map<String, String> column = new HashMap<String, String>();
			String className = "";
			switch (record.getStr("fieldType")) {
			case "bigint":
				className = "java.lang.Long";
				break;
			case "bit":
				className = "java.lang.Boolean";
				break;
			case "datetime":
				className = "java.sql.Date";
				break;
			case "float":
				className = "java.lang.Double";
				break;
			case "image":
				className = "java.lang.String";
				break;
			case "int":
				className = "java.lang.Long";
				break;
			case "numeric":
				className = "java.lang.Long";
				break;
			case "nvarchar":
				className = "java.lang.String";
				break;
			case "text":
				className = "java.lang.String";
				break;
			case "tinyint":
				className = "java.lang.Long";
				break;
			case "varchar":
				className = "java.lang.String";
				break;
			default:
				className = "java.lang.String";
				break;
			}

			if ("java.sql.Date".equals(className) || "java.sql.Timestamp".equals(className)) {
				imports.add("java.util.Date");
			}

			column.put("name", record.getStr("fieldCode"));
			column.put("note", record.getStr("fieldName") == null ? record.getStr("fieldCode") : record.getStr("fieldName"));
			column.put("className", className);

			columns.add(column);
		}

		Map<String, Object> wrapper = new HashMap<String, Object>();
		wrapper.put("modulePackage", modulePackage);
		wrapper.put("tableName", tableName);
		wrapper.put("imports", imports);
		wrapper.put("columns", columns);

		processTpl(ClassUtils.getPackageName(modulePackage + ".model.base." + tableName + "BM"), ClassUtils.getShortClassName(modulePackage + ".model.base." + tableName + "BM") + ".java", wrapper, tplBaseModel);
	}

	protected void genModel(String tableName) throws Exception {
		Map<String, Object> wrapper = new HashMap<String, Object>();
		wrapper.put("modulePackage", modulePackage);

		List<String> imports = new ArrayList<String>();
		imports.add(modulePackage + ".model.base." + tableName + "BM");
		wrapper.put("imports", imports);

		wrapper.put("tableName", tableName);

		processTpl(ClassUtils.getPackageName(modulePackage + ".model." + tableName + "Model"), ClassUtils.getShortClassName(modulePackage + ".model." + tableName + "Model") + ".java", wrapper, tplModel, false);
	}

	protected void generate(String tableName) throws Exception {
		genBaseModel(tableName);
		genModel(tableName);
	}

	public static void run(String modulePackage, String... tables) throws Exception {
		ModelGenerator gen = new ModelGenerator();
		gen.setOut(PropKit.get("codegen.sourceCodePath"));
		gen.setModulePackage(modulePackage);
		gen.initTemplate();
		for (String table : tables) {
			gen.generate(table);
		}
	}

}
