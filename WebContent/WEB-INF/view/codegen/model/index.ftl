<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>模型管理</title> <#include "../../common/resources.inc.ftl">
<script type="text/javascript">
$(function(){
	$('#btn_UDB').linkbutton('disable');
    $('#dg').edatagrid({
        onRowContextMenu: onRowContextMenu, //右键
		onError: function(index, info){
			if(info.status){//错误处理函数
				alert(info.message);
			}
		}
    });
    $.ajaxSetup({  
        async : false  
    }); 
});
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
            $('#dg').datagrid('reload');
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

/**
 * 添加右击菜单内容
 */
function onRowContextMenu(e, rowIndex, rowData){
   $("#dg").datagrid("selectRow",rowIndex);
   e.preventDefault();
   var selected=$("#dg").datagrid('getRows'); //获取所有行集合对象
    selected[rowIndex].id; //index为当前右键行的索引，指向当前行对象
    $('#mm').menu('show', {
        left:e.pageX,
        top:e.pageY
    });       
}
/**
 * 一键生成新表,并生成java代码
 */
function createAllMissingTable(){
	//ajax
	$.post('${CONTEXT_PATH}/codegen/model/createAllMissingTable', {}, function(response){
		if(response.status){
			alert(response.message);
			$('#dg').datagrid('reload');
		}
	});
}
/**
 * 生成单张物理表，并刷新模型
 */
function createTable(){
	//ajax
	var row = $('#dg').datagrid('getSelected');
	$.post('${CONTEXT_PATH}/codegen/model/createTable', {modelCode:row.modelCode,modelName:row.modelName,modelPackage:row.modelPackage}, function(response){
		if(response.status){
			alert(response.message);
		}
	});
}

/**
 * 生成java模型代码
 */
function genModel4Java(){
	 var row = $('#dg').datagrid('getSelected');
    if (!row){
    	top.$.messager.show({title:'消息', msg:'请先选择一行数据!'});
    	return;
    }
    
    var dc = {
    	packageName: (console.log(row.modelPackage),row.modelPackage),
    	modelCode: (console.log(row.modelCode),row.modelCode)
    };
    $.post("${CONTEXT_PATH}/codegen/model/genJavaCode", dc, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
        }
	});
}

/**
 * 刷新模型和Java代码
 */
function regenModelDefAndJavaCode() {
	var row = $('#dg').datagrid('getSelected');
    if (!row){
    	top.$.messager.show({title:'消息', msg:'请先选择一行数据!'});
    	return;
    } 
    
    $.post("${CONTEXT_PATH}/codegen/model/regenModelDefAndJavaCode", {modelCode:row.modelCode}, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
        }
	});
}

/*
 * 查询数据库中表否存在
 */
function isInDBformat(value, row, index) {
	var showHtml="<font color='red'>未知</font>";
	$.post("${CONTEXT_PATH}/codegen/model/isModelInDB", {modelCode:row.modelCode}, function(response){
		if (response.status<=0){
			showHtml= "<font color='red'>未知</font>";
        } else {
        	showHtml= (response.message=="true") ? "<font color='green'>存在</font>" : "<font color='red'>不存在</font>";
        }
	});
	return showHtml;
}

/*
 * 查询java文件是否存在
 */
function isInFileformat(value, row, index) {
	var showHtml="<font color='red'>未知</font>";
	$.post("${CONTEXT_PATH}/codegen/model/isCodeExist", {modelCode:row.modelCode,modelPackage:row.modelPackage}, function(response){
		if (response.status<=0){
			showHtml= "<font color='red'>未知</font>";
        } else {
        	showHtml= (response.message=="true") ? "<font color='green'>存在</font>" : "<font color='red'>不存在</font>";
        }
	});
	return showHtml;
}
</script>
</head>
<body>

	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="showAddModelDialog()">新建</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="showEditModelDialog()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="doDelete()">删除</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-reload" plain="false"
			onclick="jvascript:createAllMissingTable()">Model(new)->phy&code</a>
		<div style="float: right; margin: 2px 5px;">
			<input id="userSearchBox" class="easyui-searchbox"
				data-options="prompt:'模型代码、名称、包名',searcher:keywordSearcher"
				style="width: 180px" />
		</div>
	</div>
	<table id="dg" class="easyui-datagrid" title="模型管理"
		url="${CONTEXT_PATH}/codegen/model/dgModel" toolbar="#toolbar">
		<thead>
			<tr>
				<th field="modelCode" width="20"
					editor="{type:'textbox',options:{required:true}}">模型代码</th>
				<th field="isInDB" width="10" data-options="formatter:isInDBformat">物理表是否存在</th>
				<th field="isJavaCode" width="10"
					data-options="formatter:isInFileformat">代码是否存在</th>
				<th field="modelName" width="40"
					editor="{type:'textbox',options:{required:true}}">模型名称</th>
				<th field="modelPackage" width="40"
					editor="{type:'textbox',options:{required:true}}">包名</th>
				<th field="action" width="25"
					data-options="formatter:actionFormatter">操作</th>
			</tr>
		</thead>
	</table>

</body>
<div id="mm" class="easyui-menu" style="width: 150px;">
	<div onClick="createTable()" data-options="iconCls:'icon-add'">model->phy&code</div>
	<div onClick="genModel4Java()" data-options="iconCls:'icon-add'">phy->code</div>
	<div onClick="regenModelDefAndJavaCode()" data-options="iconCls:'icon-reload'">phy->model&code</div>
</div>
</html>