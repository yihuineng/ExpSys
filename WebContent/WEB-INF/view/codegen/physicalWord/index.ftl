<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>字段管理</title> <#include "../../common/resources.inc.ftl">

<script type="text/javascript">
	/**
	 * 载入方法
	 */
	$(function() {
		//TODO
	});

	/**
	 * 搜索含有该表名的所有表
	 */
	function searchWord() {
		var type = $("#sType").combobox('getValue');
		var val1 = $('#sTableName').textbox('getValue');
		var val2 = $('#sWordName').textbox('getValue');
		var val3 = $('#sTableCName').textbox('getValue');
		var value = "tableName=" + val1 + "&wordName=" + val2 + "&type=" + type+ "&tableCName=" + encodeURI(val3);
		$('#dg').datagrid({
			url : '${CONTEXT_PATH}/codegen/physicalWord/search?' + value
		});
		$('#dg').datagrid("reload");
	}
	function pk_notnull_attrs_format(value, row, index) {
		var val = "";
		if (row.pk) {
			val += "PK-";
		} else {
			val += "notPk-";
		}
		if (row.notNull) {
			val += "notNull-";
		} else {
			val += "Null-";
		}
		val += row.attributes;
		return val;
	}
	function className_fieldType_format(value, row, index) {
		var val = row.className + "-" + row.fieldType;
		return val;
	}

	function boolformat(value, row, index) {
		if (value == true) {
			return "<input type='checkbox' value='true' checked='checked' disabled=true/>";
		} else {
			return "<input type='checkbox' value='false' disabled=true />";
		}
	}
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true,border:0">
		<div class="border-bottom"
			data-options="region:'north',title:'查询',collapsible:false,border:0"
			style="height: 70px;">
			<form id="searchForm" class="form-search">
				<lable>查询模式:</lable>
				<select id="sType" class="easyui-combobox" name="sType"
					style="width: 80px;" data-options="panelHeight:'auto'">
					<option value="vague">模糊</option>
					<option value="accur">精确</option>
				</select>
				<lable>表名:</lable>
				<input id="sTableName" name="sTableName" class="easyui-textbox"
					data-options="prompt:'请输入表名'"
					style="width: 130px; vertical-align: middle;" />
				<lable>表中文名:</lable>
				<input id="sTableCName" name="sTableCName" class="easyui-textbox"
					data-options="prompt:'请输入表名'"
					style="width: 130px; vertical-align: middle;" />
				<lable>字段名:</lable>
				<input id="sWordName" name="sWordName" class="easyui-textbox"
					data-options="prompt:'请输入字段名'"
					style="width: 130px; vertical-align: middle;" /> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="searchWord()" iconCls="icon-search">检索</a>
			</form>
		</div>
		<div data-options="region:'center',border:0">
			<table id="dg" title="物理表" class="easyui-datagrid"
				url="${CONTEXT_PATH}/codegen/physicalWord/getData"
				toolbar="#toolbar">
				<thead>
					<tr>
						<th data-options="hidden:true" field="id" width="20">id</th>
						<th field="modelCode" width="40">表名(模型代码)</th>
						<th field="modelName" width="40">表中文名</th>
						<th field="fieldCode" width="40">字段名</th>
						<th field="fieldName" width="100">字段说明</th>
						<th data-options="hidden:true" field="className" width="20">字段类型</th>
						<th data-options="hidden:true" field="fieldType" width="20">字段定义</th>
						<th width="30" data-options="formatter:className_fieldType_format"
							field="className_fieldType">字段类型-字段定义</th>
						<th data-options="hidden:true" field="pk" width="13">主键标识</th>
						<th data-options="hidden:true" field="notNull" width="13">可否为空</th>
						<th data-options="hidden:true" field="attributes" width="20">属性</th>
						<th width="40" data-options="formatter:pk_notnull_attrs_format"
							field="pk_notnull_attributes">主键标识-可否为空-属性</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
<div id="mm" class="easyui-menu" style="width: 120px;">
	<!-- <div onClick="delWord()" data-options="iconCls:'icon-remove'">删除字段</div>
	<div onClick="addWord()" data-options="iconCls:'icon-add'">新增字段</div> -->
</div>
<div id="toolbar"></div>
</html>
