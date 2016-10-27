<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>模型管理</title> 
<#include "../../common/resources.inc.ftl">
<script type="text/javascript">
function showAddModelDialog() {
	var dlg = dialog({
		id: 'dlgModel',
		title: '新建模型',
		url: '${CONTEXT_PATH}/codegen/model/modelDialog',
		width: '400px',
		height: '270px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});
}

function showEditModelDialog() {
	var row = $('#dg').datagrid('getSelected');
	if (!row) {
		top.$.messager.show({title:'消息', msg:'请选择要编辑的模型'});
		return;
	}
	
	var dlg = dialog({
		id: 'dlgModel',
		title: '编辑模型',
		url: '${CONTEXT_PATH}/codegen/model/modelDialog?modelCode=' + row.modelCode,
		width: '400px',
		height: '270px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});
}
	
function doSave() {
	if (!top.$dw.$("#fm").form('validate')) {
		return false;
	}
	var dc = top.$dw.$("#fm").serializeJSON();
	$.post("${CONTEXT_PATH}/codegen/model/saveModel", dc, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
            top.$d.dialog('close');
        }
	});
}

function doDelete() {
	var row = $('#dg').datagrid('getSelected');
	if (!row) {
		top.$.messager.show({title:'消息', msg:'请选择要删除的模型'});
		return;
	}
	
	top.$.messager.confirm('确认','确认删除?',function(r){
		if (r) {
			$.post('${CONTEXT_PATH}/codegen/model/deleteModel', {modelCode:row.modelCode}, function(response){
				top.$.messager.show({title:'消息', msg:response.message});
				$('#dg').datagrid('reload');
            });
		}
	});
}

function doCompare() {
	openNewTab('模型与物理表差异', '${CONTEXT_PATH}/codegen/physicalTable/');
}

function keywordSearcher(value,name) {
	$("#dg").datagrid('load', {keyword:value});
}

function actionFormatter(value, row, index) {
	var links = [];
	links.push(createOpenNewTabLink("模型", "模型-"+row.modelCode, "${CONTEXT_PATH}/codegen/model/edit/"+row.modelCode));
	links.push(createOpenNewTabLink("DDL", "DDL-"+row.modelCode, "${CONTEXT_PATH}/codegen/model/ddl/"+row.modelCode));
	links.push(createOpenNewTabLink("源码", "源码-"+row.modelCode, "${CONTEXT_PATH}/codegen/model/sourceCode/"+row.modelCode));
	return links.join("&nbsp;&nbsp;");
}
</script>
</head>
<body>

<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="showAddModelDialog()">新建</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="showEditModelDialog()">编辑</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="doDelete()">删除</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-databases-relation" plain="true" onclick="doCompare()">模型与物理表差异比较</a>
    <div style="float: right; margin:2px 5px;">
		<input id="userSearchBox" class="easyui-searchbox" data-options="prompt:'模型代码、名称、包名',searcher:keywordSearcher" style="width:180px" />
	</div>
</div>
<table id="dg" class="easyui-datagrid" title="模型管理" url="${CONTEXT_PATH}/codegen/model/dgModel" toolbar="#toolbar">
	<thead>
		<tr>
			<th field="modelCode" width="40" editor="{type:'textbox',options:{required:true}}">模型代码</th>
			<th field="modelName" width="40" editor="{type:'textbox',options:{required:true}}">模型名称</th>
			<th field="modelPackage" width="40" editor="{type:'textbox',options:{required:true}}">包名</th>
			<th field="action" width="25" data-options="formatter:actionFormatter">操作</th>
		</tr>
	</thead>
</table>

</body>
</html>