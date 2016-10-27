<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>资源管理</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
function showAddDialog(){
	var dlg = dialog({
		id: 'dlgAddPermission',
		title: '新建资源项',
		url: '${CONTEXT_PATH}/platform/permission/editDialog',
		width: '450px',
		height: '470px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});   
}

function showEditDialog(){
	var row = $('#dg').treegrid('getSelected');
	if (!row) {
		top.$.messager.show({title:'消息', msg:'请选择要修改的资源项'});
		return;
	}
	
	var dlg = dialog({
		id: 'dlgAddPermission',
		title: '修改资源项',
		url: '${CONTEXT_PATH}/platform/permission/editDialog?id='+row.id,
		width: '450px',
		height: '470px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});   
}

function doSave(){
    var fm = top.$dw.$("#fm");
    fm.form('submit',{
        url: '${CONTEXT_PATH}/platform/permission/save',
        onSubmit: function(){
            return fm.form('validate');
        },
        success: function(result){
            var response = $.parseJSON(result);
            if (response.status<=0){
                top.$.messager.alert('错误', response.message);
            } else {
            	top.$.messager.show({title:'消息', msg:response.message});
                top.$d.dialog('close');
                $('#dg').treegrid('reload');
            }
        }
    });
}

function doDelete(){
	var row = $('#dg').treegrid('getSelected');
	if (!row) {
		top.$.messager.show({title:'消息', msg:'请选择要删除的资源项'});
		return;
	}
	
	top.$.messager.confirm('确认','确认删除?',function(r){
		if (r) {
			$.post('${CONTEXT_PATH}/platform/permission/delete', {id:row.id}, function(response){
				top.$.messager.show({title:'消息', msg:response.message});
				$('#dg').treegrid('reload');
            });
		}
	});
}
</script>
</head>
<body>

<table id="dg" title="资源管理" class="easyui-treegrid" 
	url="${CONTEXT_PATH}/platform/permission/getData" idField="id" treeField="permissionName" toolbar="#toolbar">
	<thead>
		<tr>
			<th field="permissionName" width="50">名称</th>
			<th field="permissionCode" width="50">资源代码</th>
			<th field="url" width="50">url</th>
		</tr>
	</thead>
</table>
<div id="toolbar">
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="showAddDialog()">新建</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="showEditDialog()">编辑</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="doDelete()">删除</a>
</div>

</body>
</html>  