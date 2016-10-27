package net.yihuineng.codegen.controller;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import net.yihuineng.codegen.ModelGenerator;
import net.yihuineng.codegen.model.CGModelFieldModel;
import net.yihuineng.codegen.model.CGModelModel;
import net.yihuineng.framework.data.Db;
import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;

public class PhysicalTableController extends EasyUIController {

	public void index() {
		renderFreeMarker("index.ftl");
	}

	/**
	 * 获得失效的数据库表 CGModel表
	 */
	public void getDeletedData() {
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select M.modelCode as tableName,M.*", "from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME is null order by T.TABLE_NAME");
		renderEasyUI(page);
	}

	/**
	 * 获得有效的数据库表 CGModel表
	 */
	public void getVailedData() {
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select TABLE_NAME tableName,M.*", "from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME is not null order by T.TABLE_NAME");
		renderEasyUI(page);
	}

	/**
	 * 返回含有特定字段的表
	 */
	public void searchWord() {
		String value = getPara("searchValue");
		String sqlTableName = "(select distinct modelCode from CGModelField where fieldCode like '%" + value + "%')";
		String sqlEnd = "from " + sqlTableName + " T full join CGModel M on M.modelCode=T.modelCode and M.ModelType='Table' where T.modelCode is not null order by T.modelCode";
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select T.modelCode tableName,M.*", sqlEnd);
		renderEasyUI(page);
	}

	/**
	 * 返回含有特定名字的表
	 */
	public void searchTable() {
		String value = getPara("searchValue");
		String sqlEnd = "from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME like '%" + value + "%'  order by T.TABLE_NAME";
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select TABLE_NAME tableName,M.*", sqlEnd);
		renderEasyUI(page);
	}

	/**
	 * 添加定义的输入框
	 * 没有用了
	 * 
	 * @author Yihuineng
	 */
	public void modelDefDialog() {
		String tableName = getPara(0);

		if (StrKit.isNotEmpty(tableName)) {
			CGModelModel cgModel = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", tableName);
			if (cgModel != null) {
				setAttrs(cgModel.toMap());
			} else {
				setAttr("modelCode", tableName);
			}
		}

		renderFreeMarker("modelDefDialog.ftl");
	}

	/**
	 * 生成java代码
	 * 
	 * @throws Exception
	 * @author Yihuineng
	 */
	public void genJavaCode() throws Exception {
		String packageName = getPara("packageName");
		String tableName = getPara("tableName");
		ModelGenerator.run(packageName, tableName.split(","));
		renderEasyUISuccess("生成成功");
	}

	/**
	 * 创建表单(含表单注释)以及字段,java代码
	 * 
	 * @author Yihuineng
	 */
	public void createtable() {
		String modelCode = getPara("modelCode");
		String modelName = getPara("modelName");
		String modelPackage = getPara("modelPackage");
		String result = createOneTableAndCode(modelCode, modelName, modelPackage);
		renderEasyUIError(result);
	}

	/**
	 * 一键创建所有未创建的表和java代码
	 * 
	 * @author Yihuineng
	 */
	public void createalltable() {
		boolean hasError = false;
		// 获得所有未创建的表
		List<Record> list = Db.find("select M.modelCode as tableName,M.* from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME is null order by T.TABLE_NAME");
		for (Record rec : list) {
			String modelCode = rec.getStr("tableName");
			String modelName = rec.getStr("modelName");
			String modelPackage = rec.getStr("modelPackage");
			String result = createOneTableAndCode(modelCode, modelName, modelPackage);
			if (result.equals("ok")) {
			} else {
				hasError = true;
			}
		}
		if (hasError) {
			renderEasyUIError("部分表出现错误");
		} else {
			renderEasyUISuccess("所有表和实体类创建成功！");
		}
	}

	/**
	 * 实现在数据库中创建一张表并生成对应的实体类
	 * 
	 * @param modelCode 表名
	 * @param modelName 注释
	 * @param packageName 实体类路径
	 * @return result 结果 ok或错误提示
	 * @author Yihuineng
	 */
	private String createOneTableAndCode(String modelCode, String modelName, String packageName) {
		String message = "ok";
		boolean hasPk = false;

		String sql_delete = "if exists (select 1 from sysobjects where id=object_id(\'" + modelCode + "\') and type=\'U\') drop table " + modelCode + " ; ";
		String sql_add = "create table " + modelCode + " (";
		String pk = "constraint PK_" + modelCode + " primary key (";

		String sql_note = "IF ((SELECT COUNT(*) from fn_listextendedproperty(\'MS_Description\', \'SCHEMA\', N\'dbo\', \'TABLE\', N\'" + modelCode + "\', NULL, NULL)) > 0)";
		sql_note += "EXEC sp_updateextendedproperty @name = N\'MS_Description\', @value = N\'" + modelName + "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'" + modelCode + "\'";
		sql_note += "ELSE EXEC sp_addextendedproperty @name = N\'MS_Description\', @value = N\'" + modelName + "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'" + modelCode + "\';";

		CGModelFieldModel cgMF = new CGModelFieldModel();
		List<CGModelFieldModel> list = cgMF.find("select * from CGModelField where modelCode=?", modelCode);
		if (list.isEmpty()) {
			return "错误,表中至少应有一个字段！！！";
		} else {
			for (CGModelFieldModel model : list) {
				if (model.getPk())
					hasPk = true;
				String fieldCode = model.getFieldCode();
				String fieldName = model.getFieldName();// 注释
				String fieldType = model.getFieldType();
				pk += model.getPk() ? (fieldCode + ") ) ; ") : "";// go
				String notNull = model.getNotNull() ? "not null," : "null,";
				// 循环将SQL语句组合起来
				sql_add += (fieldCode + " " + fieldType + " " + notNull);
				// 编辑注释
				sql_note += "IF ((SELECT COUNT(*) from fn_listextendedproperty(\'MS_Description\', \'SCHEMA\', N\'dbo\', \'TABLE\', N\'" + modelCode + "\', \'COLUMN\', N\'" + fieldCode + "\')) > 0) ";
				sql_note += "EXEC sp_updateextendedproperty @name = N\'MS_Description\', @value = N\'" + fieldName + "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'" + modelCode + "\', @level2type = \'COLUMN\', @level2name = N\'" + fieldCode + "\' ";
				sql_note += "ELSE EXEC sp_addextendedproperty @name = N\'MS_Description\', @value = N\'" + fieldName + "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'" + modelCode + "\', @level2type = \'COLUMN\', @level2name = N\'" + fieldCode + "\' ; ";
			}
			if (!hasPk) {// 没有主键的话，把最后行的逗号去掉
				sql_add = sql_add.substring(0, sql_add.length() - 1);
				sql_add += " ) ; ";// go
			} else {
				sql_add += pk;
			}
		}
		// 执行SQL建表
		try {
			Db.update(sql_delete + sql_add + sql_note);
		} catch (Exception e) {
			return "建表失败,请检查命名是否合法！！！";
		}
		// create Java Code
		try {
			ModelGenerator.run(packageName, modelCode.split(","));
		} catch (Exception e) {
			return "生成java源码失败。";
		}
		return message;
	}
}
