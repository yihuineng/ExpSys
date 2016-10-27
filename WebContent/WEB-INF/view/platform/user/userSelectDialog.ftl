<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>选择用户</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
/**
 * 载入方法
 */
$(function() {
	//获得部门的下拉选项
	$('#departSel').combobox({   
	    url:'${CONTEXT_PATH}/platform/user/getDepartOps',   
	    valueField:'groupCode',   
	    textField:'groupName'  
	});
	
});
function userSearchHandler(value,name) {
	$("#dgUser").datagrid('load', {keyword:value});
}

function reloaddgUser() {
	var deptVal=$("#departSel").combobox('getValue');
	alert(deptVal);
	$("#dgUser").datagrid('load', {groupCode:deptVal});
}



function getSelectedUsers() {
	return $("#dgUser").datagrid('getSelections');
}

function getSelectedValue() {
	var values = [];
	var users = getSelectedUsers();
	$.each(users, function(){
		values.push(this.userCode);
	});
	return values;
}

function getSelectedText() {
	var values = [];
	var users = getSelectedUsers();
	$.each(users, function(){
		values.push(this.realName);
	});
	return values;
}
</script>
</head>
<body class="dlg-body">

<div id="toolbarUser">
    <div style="float:right; text-align:right; margin:2px 5px;">
		<input id="userSearchBox" class="easyui-searchbox" data-options="prompt:'请输入用户名或姓名',searcher:userSearchHandler" />
	</div>
	<!-- 部门下拉筛选 -->
	<div style="float:right;width:200px;">
		<input id="departSel" name="dept" value="" data-options="prompt:'请选择组织',onSelect:reloaddgUser" />
	</div>
</div>
<table id="dgUser" class="easyui-datagrid"
	data-options="url:'${CONTEXT_PATH}/platform/user/dgUserSelect',singleSelect:false,toolbar:'#toolbarUser'">
	<thead>
		<tr>
			<th field="userCode" checkbox="true">选择</th>
			<th field="userName" width="150" sortable="true">用户名</th>
			<th field="realName" width="180" sortable="true">姓名</th>
			<th field="branchGroupCodeName" width="200" sortable="true">所属组织</th>
		</tr>
	</thead>
</table>
						
</body>
</html>  