<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>api管理</title> <#include "../../common/resources.inc.ftl">
<script type="text/javascript">
$(function(){
	
});
function addPage() {
	var dlg = dialog({
		id: 'dlg',
		title: '新建Api',
		url: '${CONTEXT_PATH}/app/api/addPage',
		width: '400px',
		height: '400px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});
}

function editPage() {
	var row = $('#dg').datagrid('getSelected');
	if (!row) {
		top.$.messager.show({title:'消息', msg:'请选择要编辑的项目'});
		return;
	}
	
	var dlg = dialog({
		id: 'dlg',
		title: '编辑Api',
		url: '${CONTEXT_PATH}/app/api/editPage?id=' + row.id,
		width: '400px',
		height: '400px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});
}
	
function doSave() {
	if (!top.$dw.$("#fm").form('validate')) {
		return false;
	}
	var dc = top.$dw.$("#fm").serializeJSON();
	$.post("${CONTEXT_PATH}/app/api/doSave?project=km", dc, function(response){
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
	var rows = $('#dg').datagrid('getChecked');
	if (rows == '') {
		top.$.messager.show({
			title : '消息',
			msg : '请勾选要删除的选项'
		});
		return;
	}
	var idArr = [];
	$.each(rows, function() {
		idArr.push(this.id);
	});
	top.$.messager.confirm('确认', '确认删除?', function(r) {
		if (r) {
			$.post('${CONTEXT_PATH}/app/api/doDelete?project=km', {
				idArr : idArr
			}, function(response) {
				top.$.messager.show({
					title : '消息',
					msg : response.message
				});
				$('#dg').datagrid('reload');
			});
		}
	});

}

function keywordSearcher(value,name) {
	$("#dg").datagrid('load', {keyword:value});
}

function boolformat(value, row, index) {
	return value ? "<font color='green'>启用</font>" : "<font color='red'>停用</font>";
}

function showTitle(value, row, index) {
	return "<span title='"+value+"'>"+value+"</span>";
}
</script>
</head>
<body>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addPage()">新建</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editPage()">编辑</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="doDelete()">删除</a>
		<div style="float: right; margin: 2px 5px;">
			<input id="userSearchBox" class="easyui-searchbox"
				data-options="prompt:'名称、访问地址',searcher:keywordSearcher"
				style="width: 180px" />
		</div>
	</div>
	<table id="dg" class="easyui-datagrid" url="${CONTEXT_PATH}/app/api/dgApi?project=km" toolbar="#toolbar" checkOnSelect="false" selectOnCheck="false">
		<thead>
			<tr>
				<th field="id" checkbox="true">选择</th>
				<th field="apiName" width="50" >名称</th>
				<th field="apiUrl" width="50" >访问地址</th>
				<th field="apiParams" width="50" data-options="formatter:showTitle"">入参</th>
				<th field="apiReturn" width="50" data-options="formatter:showTitle">返回</th>
				<th field="isEnable" data-options="formatter:boolformat" width="50"
					sortable="true">是否启用</th>
			</tr>
		</thead>
	</table>

</body>
</html>
