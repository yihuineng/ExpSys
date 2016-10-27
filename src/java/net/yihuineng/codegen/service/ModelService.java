package net.yihuineng.codegen.service;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.plugin.activerecord.Record;

import net.yihuineng.codegen.FieldTypeConverter;
import net.yihuineng.codegen.UniFieldType;
import net.yihuineng.codegen.model.CGModelFieldModel;
import net.yihuineng.codegen.model.CGModelModel;
import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.kit.SourceCodeSpecKit;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.framework.sqlinxml.SqlKit;
import net.yihuineng.platform.id.IdKit;

public class ModelService {

	/**
	 * 根据物理表重新生成字段定义 CGModelField
	 * 
	 * @param modelCode
	 */
	public void rebuildModelField(String modelCode) {
		// 删除原定义
		Db.update("delete from CGModelField where modelCode=?", modelCode);
		// 根据数据字典重新获取物理表定义并保存到模型定义
		List<Record> fieldList = Db.find(SqlKit.sql("PhysicalTable.listFieldInfo"), modelCode);
		for (Record record : fieldList) {
			CGModelFieldModel modelField = new CGModelFieldModel();
			modelField.setId(IdKit.newUid());
			modelField.setModelCode(modelCode);
			modelField.setFieldCode(record.getStr("fieldCode"));
			modelField.setFieldName(record.getStr("fieldName"));
			modelField.setPk(record.getInt("pk") == 1);
			modelField.setNotNull(record.getInt("notNull") == 1);
			modelField.setOrderFlag(record.getInt("orderFlag"));

			String jdbcType = record.getStr("fieldType");
			int charLength = record.get("charLength", 0);
			UniFieldType uniFieldType = FieldTypeConverter.convertJdbcTypeToUniType(null, jdbcType, charLength);
			String fieldType = uniFieldType.getName();
			if (uniFieldType == UniFieldType.VARCHAR) {
				fieldType += "(" + charLength + ")";
			}
			String className = FieldTypeConverter.convertUniTypeToJavaType(uniFieldType, charLength);

			modelField.setFieldType(fieldType);
			modelField.setClassName(className);
			modelField.save();
		}
	}

	public String genSqliteTableCreateSQL(String modelCode) {
		StringBuffer sb = new StringBuffer();

		CGModelModel model = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", modelCode);
		List<CGModelFieldModel> modelFields = CGModelFieldModel.dao.find("select * from CGModelField where modelCode=? and (attributes not like '%A%' or attributes is null) order by OrderFlag asc", model.getModelCode());
		List<String> pkList = new ArrayList<String>();
		sb.append("\r\n");
		sb.append("create table ").append(model.getModelCode()).append(" (").append("\r\n");
		for (int i = 0; i < modelFields.size(); i++) {
			CGModelFieldModel modelField = modelFields.get(i);
			sb.append("    ").append(modelField.getFieldCode()).append("    ").append(convertSqliteFieldType(modelField.getFieldType()));
			if (modelField.getNotNull()) {
				sb.append("    ").append("not null");
			}
			if (i < modelFields.size() - 1) {
				sb.append(",").append("\r\n");
			}

			if (modelField.getPk()) {
				pkList.add(modelField.getFieldCode());
			}
		}

		if (pkList.size() > 0) {
			sb.append(",").append("\r\n");
			sb.append("    ").append("primary key (").append(StrKit.join(pkList)).append(")").append("\r\n");
		}
		sb.append(");").append("\r\n");

		return sb.toString();
	}

	/**
	 * 生成ios .h源码
	 * 
	 * @param modelCode
	 * @return
	 */
	public String genSourceCode4iOSh(String modelCode) {
		StringBuffer sb = new StringBuffer();

		CGModelModel model = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", modelCode);
		List<CGModelFieldModel> modelFields = CGModelFieldModel.dao.find("select * from CGModelField where ModelCode=? and (attributes not like '%A%' or attributes is null) order by OrderFlag asc", modelCode);
		sb.append("#import \"Model.h\"").append("\r\n");
		sb.append("\r\n");
		sb.append("@interface ").append(model.getModelCode()).append("Model : Model").append("\r\n");
		sb.append("\r\n");

		for (int i = 0; i < modelFields.size(); i++) {
			CGModelFieldModel modelField = modelFields.get(i);
			sb.append("- (").append(convertiOSType(modelField.getFieldType())).append(")").append(modelField.getFieldCode()).append(";").append("\r\n");
			sb.append("- (void)set").append(SourceCodeSpecKit.toFirstUpperCase(modelField.getFieldCode())).append(":(").append(convertiOSType(modelField.getFieldType())).append(")").append(modelField.getFieldCode()).append(";").append("\r\n");
		}

		sb.append("\r\n");
		sb.append("@end");

		return sb.toString();
	}

	/**
	 * 生成ios .m源码
	 * 
	 * @param modelCode
	 * @return
	 */
	public String genSourceCode4iOSm(String modelCode) {
		StringBuffer sb = new StringBuffer();

		CGModelModel model = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", modelCode);
		List<CGModelFieldModel> modelFields = CGModelFieldModel.dao.find("select * from CGModelField where ModelCode=? and (attributes not like '%A%' or attributes is null) order by OrderFlag asc", modelCode);
		sb.append("#import \"").append(model.getModelCode()).append("Model.h\"").append("\r\n");
		sb.append("\r\n");
		sb.append("@implementation ").append(model.getModelCode()).append("Model").append("\r\n");
		sb.append("\r\n");

		sb.append("#pragma mark - 模型映射").append("\r\n");
		sb.append("\r\n");

		sb.append("+ (NSDictionary *)fieldInfoDict {").append("\r\n");
		sb.append("    ").append("static NSDictionary *fieldInfoDict = nil;").append("\r\n");
		sb.append("    ").append("if (fieldInfoDict == nil) {").append("\r\n");
		sb.append("        ").append("fieldInfoDict = @{").append("\r\n");

		for (int i = 0; i < modelFields.size(); i++) {
			CGModelFieldModel modelField = modelFields.get(i);
			String iOSFieldTnfoType = convertiOSFieldInfoType(modelField.getFieldType());
			sb.append("            ").append("@\"").append(modelField.getFieldCode()).append("\" : [NSNumber numberWithInteger:").append(iOSFieldTnfoType).append("]").append(i < modelFields.size() ? "," : "").append("\r\n");
		}

		sb.append("        ").append("};").append("\r\n");
		sb.append("    ").append("}").append("\r\n");
		sb.append("    ").append("return fieldInfoDict;").append("\r\n");
		sb.append("}").append("\r\n");
		sb.append("\r\n");

		sb.append("#pragma mark - getter/setter").append("\r\n");
		sb.append("\r\n");

		for (int i = 0; i < modelFields.size(); i++) {
			CGModelFieldModel modelField = modelFields.get(i);
			String iOSType = convertiOSType(modelField.getFieldType());

			// getter
			sb.append("- (").append(iOSType).append(")").append(modelField.getFieldCode()).append("{").append("\r\n");
			sb.append("    ").append("return ").append(convertiOSObjectToBaseType(iOSType, modelField.getFieldCode())).append(";").append("\r\n");
			sb.append("}").append("\r\n");
			sb.append("\r\n");

			// setter
			sb.append("- (void)set").append(SourceCodeSpecKit.toFirstUpperCase(modelField.getFieldCode())).append(":(").append(convertiOSType(modelField.getFieldType())).append(")").append(modelField.getFieldCode()).append("{").append("\r\n");
			sb.append("    ").append(convertiOSBaseTypeToObject(iOSType, modelField.getFieldCode())).append(";").append("\r\n");
			sb.append("}").append("\r\n");
			sb.append("\r\n");
		}

		sb.append("#pragma mark - 模型扩展方法").append("\r\n");
		sb.append("\r\n");

		sb.append("@end");

		return sb.toString();
	}

	private String convertSqliteFieldType(String fieldType) {
		if (fieldType.startsWith("varchar(")) {
			return "text";
		} else if ("bigint".equals(fieldType)) {
			return "integer";
		} else if ("float".equals(fieldType)) {
			return "real";
		} else if ("bit".equals(fieldType)) {
			return "integer";
		} else if ("datetime".equals(fieldType)) {
			return "real";
		} else if ("text".equals(fieldType)) {
			return "text";
		}
		return "unknown " + fieldType;
	}

	private String convertiOSType(String fieldType) {
		if (fieldType.startsWith("varchar(")) {
			return "NSString *";
		} else if ("bigint".equals(fieldType)) {
			return "long long";
		} else if ("float".equals(fieldType)) {
			return "double";
		} else if ("bit".equals(fieldType)) {
			return "BOOL";
		} else if ("datetime".equals(fieldType)) {
			return "NSDate *";
		} else if ("text".equals(fieldType)) {
			return "NSString *";
		}
		return "unknown " + fieldType;
	}

	private String convertiOSFieldInfoType(String fieldType) {
		if (fieldType.startsWith("varchar(")) {
			return "ModelFieldInfoTypeString";
		} else if ("bigint".equals(fieldType)) {
			return "ModelFieldInfoTypeInteger";
		} else if ("float".equals(fieldType)) {
			return "ModelFieldInfoTypeDouble";
		} else if ("bit".equals(fieldType)) {
			return "ModelFieldInfoTypeBool";
		} else if ("datetime".equals(fieldType)) {
			return "ModelFieldInfoTypeDate";
		} else if ("text".equals(fieldType)) {
			return "ModelFieldInfoTypeString";
		}
		return "ModelFieldInfoTypeOther";
	}

	private String convertiOSObjectToBaseType(String iOSType, String key) {
		if ("NSString *".equals(iOSType)) {
			return "[self stringForKey:@\"" + key + "\"]";
		} else if ("long long".equals(iOSType)) {
			return "[self longLongForKey:@\"" + key + "\"]";
		} else if ("double".equals(iOSType)) {
			return "[self doubleForKey:@\"" + key + "\"]";
		} else if ("NSDate *".equals(iOSType)) {
			return "[self dateForKey:@\"" + key + "\"]";
		} else if ("BOOL".equals(iOSType)) {
			return "[self boolForKey:@\"" + key + "\"]";
		} else {
			return "[self objectForKey:@\"" + key + "\"]";
		}
	}

	private String convertiOSBaseTypeToObject(String iOSType, String key) {
		if ("NSString *".equals(iOSType)) {
			return "[self setString:" + key + " forKey:@\"" + key + "\"]";
		} else if ("long long".equals(iOSType)) {
			return "[self setLongLong:" + key + " forKey:@\"" + key + "\"]";
		} else if ("double".equals(iOSType)) {
			return "[self setDouble:" + key + " forKey:@\"" + key + "\"]";
		} else if ("NSDate *".equals(iOSType)) {
			return "[self setDate:" + key + " forKey:@\"" + key + "\"]";
		} else if ("BOOL".equals(iOSType)) {
			return "[self setBool:" + key + " forKey:@\"" + key + "\"]";
		} else {
			return "[self setObject:" + key + " forKey:@\"" + key + "\"]";
		}
	}

}
