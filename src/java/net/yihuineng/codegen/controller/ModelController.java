package net.yihuineng.codegen.controller;

import java.io.File;
import java.util.List;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

import net.yihuineng.codegen.ModelGenerator;
import net.yihuineng.codegen.model.CGModelFieldModel;
import net.yihuineng.codegen.model.CGModelModel;
import net.yihuineng.codegen.service.ModelService;
import net.yihuineng.framework.data.Qb;
import net.yihuineng.framework.easyui.controller.EasyUIController;
import net.yihuineng.framework.kit.StrKit;
import net.yihuineng.platform.id.IdKit;

public class ModelController extends EasyUIController {

	private static ModelService modelService = new ModelService();

	public void index() {

	}

	public void dgModel() {
		Qb qb = new Qb("from CGModel");
		String keyword = getPara("keyword");
		if (StrKit.isNotEmpty(keyword)) {
			qb.append(" where modelCode like ? or modelName like ?", Qb.wrapLike(keyword), Qb.wrapLike(keyword));
		}
		qb.append(getOrderBy("modelPackage asc,modelCode asc"));
		Page<CGModelModel> page = CGModelModel.dao.paginate(getPageNumber(), getPageSize(), "select *", qb);
		renderEasyUI(page);
	}

	/**
	 * 查询模型在数据库中是否存在
	 * 
	 * @author yihuineng
	 */
	public void isModelInDB() {
		String modelCode = getPara("modelCode");
		int isThere = Db.queryInt("select count(*) from INFORMATION_SCHEMA.TABLES where TABLE_NAME =? ", modelCode);
		if (isThere > 0)
			renderEasyUISuccess("true");
		else
			renderEasyUISuccess("false");
	}

	/**
	 * 查询模型代码文件是否存在
	 * 
	 * @author yihuineng
	 */
	public void isCodeExist() {
		String modelCode = getPara("modelCode");
		String modelPackage = getPara("modelPackage");
		
		if(StrKit.isNotEmpty(modelCode) && StrKit.isNotEmpty(modelPackage) ){
			String classpath = this.getClass().getResource("/").getPath();
			String filePath_head = classpath.substring(0, classpath.indexOf("WebContent")) + "src/java/";
			String filePath_base = filePath_head + (modelPackage + ".model.base." + modelCode + "BM").replace('.', '/')
					+ ".java";
			String filePath_model = filePath_head + (modelPackage + ".model." + modelCode + "Model").replace('.', '/')
					+ ".java";
			File file_base = new File(filePath_base);
			File file_model = new File(filePath_model);
			// 路径为文件且不为空
			if (file_base.isFile() && file_base.exists() && file_model.isFile() && file_model.exists()) {
				renderEasyUISuccess("true");
			}else{
				renderEasyUISuccess("false");
			}
		}else{
			renderEasyUISuccess("false");
		}
	}

	public void modelDialog() {
		String modelCode = getPara("modelCode");

		if (StrKit.isNotEmpty(modelCode)) {
			CGModelModel cgModel = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", modelCode);
			if (cgModel != null) {
				setAttrs(cgModel.toMap());
			} else {
				setAttr("modelCode", modelCode);
			}
		}
	}

	public void saveModel() {
		String modelCode = getPara("modelCode");
		String modelName = getPara("modelName");
		String modelPackage = getPara("modelPackage");

		Db.update("delete from CGModel where modelCode=?", modelCode);

		CGModelModel model = new CGModelModel(); // getModel(CGModelModel.class);
		model.setId(IdKit.newUid());
		model.setModelCode(modelCode);
		model.setModelName(modelName);
		model.setModelPackage(modelPackage);
		model.setModelType("Table");
		model.save();

		renderEasyUISuccess("模型生成成功");
	}

	public void deleteModel() {
		String modelCode = getPara("modelCode");

		Db.update("delete from CGModel where modelCode=?", modelCode);

		renderEasyUISuccess("模型删除成功");
	}

	public void edit() {
		String modelCode = getPara(0);
		setAttr("modelCode", modelCode);
		renderFreeMarker("edit.ftl");
	}

	/**
	 * 根据模型名称刷新模型字段定义并重新生成Java源码
	 */
	public void regenModelDefAndJavaCode() {
		String modelCode = getPara("modelCode");

		CGModelModel model = CGModelModel.dao.findFirst("select * from CGModel where modelCode=?", modelCode);
		if (model != null) {
			modelService.rebuildModelField(modelCode);
			try {
				ModelGenerator.run(model.getModelPackage(), modelCode);
				renderEasyUISuccess("重新生成成功");
			} catch (Exception e) {
				renderEasyUIError("生成JAVA模型代码出错");
			}
		} else {
			renderEasyUIError("未找到对应的模型定义");
		}
	}

	/**
	 * 前端展示字段表
	 */
	public void bindedatagrid() {
		String modelCode = getPara("modelCode");
		List<CGModelFieldModel> list = CGModelFieldModel.dao
				.find("select * from CGModelField where modelCode=? order by orderFlag", modelCode);
		renderEasyUIDataGrid(list);
	}

	/**
	 * 数据行的GRUD 只针对CGModelField表的修改
	 * 
	 * @author Yihuineng
	 */
	public void saveedatagridr() {
		String modelCode = getPara("modelCode");
		String fieldCode = getPara("fieldCode");
		String fieldName = getPara("fieldName");
		String fieldType = getPara("fieldType");
		String className = getPara("className");
		String attributes = getPara("attributes");
		boolean pk = new Boolean(getPara("pk"));
		boolean notNull = new Boolean(getPara("notNull"));

		int orderFlag = Db.queryInt("select count(*) from CGModelField where modelCode=?", modelCode);
		CGModelFieldModel cgMF = new CGModelFieldModel();
		cgMF.setModelCode(modelCode);
		cgMF.setFieldCode(fieldCode);
		cgMF.setFieldName(fieldName);
		cgMF.setFieldType(fieldType);
		cgMF.setClassName(className);
		cgMF.setAttributes(attributes);
		cgMF.setPk(pk);
		cgMF.setNotNull(notNull);
		cgMF.setOrderFlag(orderFlag + 1);
		cgMF.setId(IdKit.newUid());
		if (cgMF.save()) {
			setAttrs(cgMF.toMap());
		}
	}

	public void updateedatagridr() {
		String modelCode = getPara("modelCode");
		String fieldCode = getPara("fieldCode");
		String fieldName = getPara("fieldName");
		String fieldType = getPara("fieldType");
		String className = getPara("className");
		String attributes = getPara("attributes");
		long id = new Long(getPara("id"));
		boolean pk = new Boolean(getPara("pk"));
		boolean notNull = new Boolean(getPara("notNull"));

		CGModelFieldModel cgMF = new CGModelFieldModel();
		cgMF = cgMF.findById(id);
		cgMF.setModelCode(modelCode);
		cgMF.setFieldCode(fieldCode);
		cgMF.setFieldName(fieldName);
		cgMF.setFieldType(fieldType);
		cgMF.setClassName(className);
		cgMF.setAttributes(attributes);
		cgMF.setPk(pk);
		cgMF.setNotNull(notNull);
		cgMF.setId(id);

		cgMF.update();
		setAttrs(cgMF.toMap());
	}

	public void destoryedatagridr() {
		long id = new Long(getPara("id"));
		CGModelFieldModel cgMF = new CGModelFieldModel();
		cgMF.setId(id);
		if (cgMF.delete()) {
			renderEasyUISuccess("操作成功");
		}
	}

	/**
	 * 数据行的GRUD 针对CGModel表的修改，同时删改数据库， 增不做同步， 删除CGModelField相关项,
	 * 改名字的同步CGModelField
	 * 
	 * @author Yihuineng
	 */
	public void saveedatagridt() {
		String modelCode = getPara("tableName");
		String modelName = getPara("modelName");
		String modelType = "Table";// getPara("modelType"); //default:Table
		String modelPackage = getPara("modelPackage");

		CGModelModel cgM = new CGModelModel();
		cgM.setModelCode(modelCode);
		cgM.setModelName(modelName);
		cgM.setModelPackage(modelPackage);
		cgM.setModelType(modelType);

		cgM.setId(IdKit.newUid());
		try {
			if (cgM.save()) {
				setAttrs(cgM.toMap());
			}
		} catch (Exception e) {
			renderEasyUIError("新增失败，请检查数据格式及唯一键重复问题。");
		}
	}

	public void updateedatagridt() {
		String modelCode = getPara("tableName");
		String modelName = getPara("modelName");
		String modelType = "Table";// getPara("modelType"); //default:Table
		String modelPackage = getPara("modelPackage");
		long id = new Long(getPara("id"));
		String sql_exists = "select 1 from sysobjects where id=object_id(\'" + modelCode + "\') and type=\'U\'; ";

		CGModelModel cgM = new CGModelModel();
		cgM = cgM.findById(id);
		String old_modelCode = cgM.getModelCode();
		String old_modelName = cgM.getModelName();
		String old_modelPackage = cgM.getModelPackage();

		cgM.setModelCode(modelCode);
		cgM.setModelName(modelName);
		cgM.setModelPackage(modelPackage);
		cgM.setModelType(modelType);
		cgM.setId(id);
		try {
			cgM.update();
			setAttrs(cgM.toMap());
		} catch (Exception e) {
			renderEasyUIError("更新失败，请检查数据格式。");
		}
		// 没有这张物理表,只需要更新CGModel表
		Record rec = Db.findFirst(sql_exists);
		if (rec == null) {
			return;
		}

		// 更新数据库表
		if (old_modelCode != modelCode || old_modelName != modelName) {
			String sql_rename = "EXEC sp_rename \'" + old_modelCode + "\', \'" + modelCode + "\';";
			String sql_note = "IF ((SELECT COUNT(*) from fn_listextendedproperty(\'MS_Description\', \'SCHEMA\', N\'dbo\', \'TABLE\', N\'"
					+ modelCode + "\', NULL, NULL)) > 0)";
			sql_note += "EXEC sp_updateextendedproperty @name = N\'MS_Description\', @value = N\'" + modelName
					+ "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'"
					+ modelCode + "\'";
			sql_note += "ELSE EXEC sp_addextendedproperty @name = N\'MS_Description\', @value = N\'" + modelName
					+ "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'"
					+ modelCode + "\';";
			try {
				Db.update(sql_rename + sql_note);
				// renderEasyUISuccess("刷新数据库中的表成功！");
			} catch (Exception e) {
				// renderEasyUIError(e.getMessage());
				renderEasyUIError("更新失败，请检查表单存在、数据格式及重名。");
				return;
			}
			// CGModelField字段子表的更新
			if (old_modelCode != modelCode) {
				String sql_cmodelCode = "update CGModelField set modelCode='" + modelCode + "' where modelCode='"
						+ old_modelCode + "';";
				try {
					Db.update(sql_cmodelCode);
				} catch (Exception e) {
					// renderEasyUIError(e.getMessage());
					renderEasyUIError("更新CGModelFiled中的modelCode失败");
					return;
				}
			}
		}
		// 需要更新实体类
		try {
			if (old_modelCode != modelCode || old_modelPackage != modelPackage) {
				// 还要删除原来的JavaCode 再生成新的JavaCode
				deleteModelCode(old_modelPackage, old_modelCode);
				ModelGenerator.run(modelPackage, modelCode);
			}
		} catch (Exception e) {
			renderEasyUIError("更新实体类，请检查数据格式。");
			return;
		}
	}

	public void destoryedatagridt() {
		long id = new Long(getPara("id"));
		CGModelModel cgM = new CGModelModel();
		cgM = cgM.findById(id);
		String modelCode = cgM.getModelCode();
		String modelPackage = cgM.getModelPackage();
		try {
			// 删除表
			String sql_delete = "if exists (select 1 from sysobjects where id = object_id(\'" + modelCode
					+ "\') and type = \'U\') drop table " + modelCode + ";";
			Db.update(sql_delete);
			cgM.delete();
			// 删除CGModelField的相关记录
			sql_delete = "delete from CGModelField where modelCode = '" + modelCode + "';";
			Db.update(sql_delete);
			// 删除Code文件
			deleteModelCode(modelPackage, modelCode);
			setAttr("success", true);
		} catch (Exception e) {
			renderEasyUIError("删除失败。");
		}

	}

	/**
	 * 更新,创建当前表单 字段到数据库 ,只是更新了数据库，并未更新javaCode 暂时不用它
	 * 
	 * @author Yihuineng
	 */
	public void baseUpdateTable() {
		boolean hasPk = false;
		String modelCode = getPara("modelCode");

		String sql_delete = "if exists (select 1 from sysobjects where id=object_id(\'" + modelCode
				+ "\') and type=\'U\') drop table " + modelCode + " ; ";// go
		String sql_add = "create table " + modelCode + " (";
		String pk = "constraint PK_" + modelCode + " primary key (";
		String sql_note = "";

		CGModelFieldModel cgMF = new CGModelFieldModel();
		List<CGModelFieldModel> list = cgMF.find("select * from CGModelField where modelCode=?", modelCode);
		for (CGModelFieldModel model : list) {
			if (model.getPk())
				hasPk = true;
			String fieldCode = model.getFieldCode();
			String fieldName = model.getFieldName();// 注释
			String fieldType = model.getFieldType();
			// String className=model.getClassName()+" ";
			pk += model.getPk() ? (fieldCode + ") ) ; ") : "";
			String notNull = model.getNotNull() ? "not null," : "null,";
			// 循环将SQL语句组合起来
			sql_add += (fieldCode + " " + fieldType + " " + notNull);
			// 编辑注释
			sql_note += "IF ((SELECT COUNT(*) from fn_listextendedproperty(\'MS_Description\', \'SCHEMA\', N\'dbo\', \'TABLE\', N\'"
					+ modelCode + "\', \'COLUMN\', N\'" + fieldCode + "\')) > 0) ";
			sql_note += "EXEC sp_updateextendedproperty @name = N\'MS_Description\', @value = N\'" + fieldName
					+ "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'"
					+ modelCode + "\', @level2type = \'COLUMN\', @level2name = N\'" + fieldCode + "\' ";
			sql_note += "ELSE EXEC sp_addextendedproperty @name = N\'MS_Description\', @value = N\'" + fieldName
					+ "\', @level0type = \'SCHEMA\', @level0name = N\'dbo\', @level1type = \'TABLE\', @level1name = N\'"
					+ modelCode + "\', @level2type = \'COLUMN\', @level2name = N\'" + fieldCode + "\' ; ";// go
		}
		if (!hasPk) {// 没有主键的话，把最后行的逗号去掉
			sql_add = sql_add.substring(0, sql_add.length() - 1);
			sql_add += " ) ; ";
		} else {
			sql_add += pk;
		}
		// 执行SQL建表，返回错误信息到页面
		try {
			Db.update(sql_delete + sql_add + sql_note);
			renderEasyUISuccess("刷新数据库中的表成功！");
		} catch (Exception e) {
			renderEasyUIError("错误,请检查命名是否合法！！！");
		}
	}


	/**
	 * 数据库建模语句生成
	 */
	public void ddl() {
		String modelCode = getPara(0);
		setAttr("ddl", modelService.genSqliteTableCreateSQL(modelCode));
		renderFreeMarker("ddl.ftl");
	}

	/**
	 * 源代码查看
	 */
	public void sourceCode() {
		String modelCode = getPara(0);
		setAttr("iOShFileName", modelCode + "Model.h");
		setAttr("iOShSourceCode", modelService.genSourceCode4iOSh(modelCode));
		setAttr("iOSmFileName", modelCode + "Model.m");
		setAttr("iOSmSourceCode", modelService.genSourceCode4iOSm(modelCode));
		renderFreeMarker("sourceCode.ftl");
	}

	/**
	 * 删除已存在的实体类
	 * 
	 * @param modelPackage
	 * @param modelCode
	 * @author Yihuineng
	 */
	private void deleteModelCode(String modelPackage, String modelCode) {
		String classpath = this.getClass().getResource("/").getPath();
		String filePath_head = classpath.substring(0, classpath.indexOf("WebContent")) + "src/java/";
		String filePath_base = filePath_head + (modelPackage + ".model.base." + modelCode + "BM").replace('.', '/')
				+ ".java";
		String filePath_model = filePath_head + (modelPackage + ".model." + modelCode + "Model").replace('.', '/')
				+ ".java";
		File file_base = new File(filePath_base);
		File file_model = new File(filePath_model);
		// 路径为文件且不为空则进行删除
		if (file_base.isFile() && file_base.exists()) {
			file_base.delete();
		}
		if (file_model.isFile() && file_model.exists()) {
			file_model.delete();
		}
	}
	
	/**
	 * 生成java代码
	 * 
	 * @throws Exception
	 * @author Yihuineng
	 */
	public void genJavaCode() throws Exception {
		String packageName = getPara("packageName");
		String modelCode = getPara("modelCode");
		ModelGenerator.run(packageName, modelCode.split(","));
		renderEasyUISuccess("生成成功");
	}

	/**
	 * 创建表单(含表单注释)以及字段,java代码
	 * 
	 * @author Yihuineng
	 */
	public void createTable() {
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
	public void createAllMissingTable() {
		boolean hasError = false;
		// 获得所有未创建的表
		List<Record> list = Db.find("select M.modelCode as tableName,M.* from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME is null order by T.TABLE_NAME");
		for (Record rec : list) {
			String modelCode = rec.getStr("modelCode");
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
	
	
	/**
	 * 返回含有特定字段的表
	 */
	@Deprecated
	public void searchWord() {
		String value = getPara("searchValue");
		String sqlTableName = "(select distinct modelCode from CGModelField where fieldCode like '%" + value + "%')";
		String sqlEnd = "from " + sqlTableName + " T full join CGModel M on M.modelCode=T.modelCode and M.ModelType='Table' where T.modelCode is not null order by T.modelCode";
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select T.modelCode,M.*", sqlEnd);
		renderEasyUI(page);
	}

	/**
	 * 返回含有特定名字的表
	 */
	@Deprecated
	public void searchTable() {
		String value = getPara("searchValue");
		String sqlEnd = "from INFORMATION_SCHEMA.TABLES T full join CGModel M on M.modelCode=T.TABLE_NAME and M.ModelType='Table' where T.TABLE_NAME like '%" + value + "%'  order by T.TABLE_NAME";
		Page<Record> page = Db.paginate(getPageNumber(), getPageSize(), "select TABLE_NAME modelCode,M.*", sqlEnd);
		renderEasyUI(page);
	}

}
