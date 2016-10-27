<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>资源管理</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
function treeRoleClickHandler(node) {
	$("#layoutBaseInfo").load("${CONTEXT_PATH}/platform/role/htmlRoleBaseInfo?id="+node.id, function(){
		$("#userSearchBox").searchbox('clear');
		$('#dgUser').datagrid('load', {roleCode:node.roleCode});
		$('#tgAuthz').treegrid('load', {roleCode:node.roleCode});
	});
}

function showAddRoleDialog(){
	var dlg = dialog({
		id: 'dlgRole',
		title: '新建角色',
		url: '${CONTEXT_PATH}/platform/role/roleDialog',
		width: '450px',
		height: '350px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});   
}

function showEditRoleDialog(){
	var node = $('#treeRole').tree('getSelected');
	if (!node) {
		top.$.messager.show({title:'消息', msg:'请选择要修改的角色'});
		return;
	}
	
	var dlg = dialog({
		id: 'dlgRole',
		title: '修改角色',
		url: '${CONTEXT_PATH}/platform/role/roleDialog?id='+node.id,
		width: '450px',
		height: '350px',
		buttons: dialogDefaultHandler(doSave, function() {dlg.dialog('close');})
	});   
}

function doSave(){
    var fm = top.$dw.$("#fm");
    fm.form('submit',{
        url: '${CONTEXT_PATH}/platform/role/saveRole',
        success: function(result){
            var response = $.parseJSON(result);
            if (response.status<=0){
                top.$.messager.alert('错误', response.message);
            } else {
            	top.$.messager.show({title:'消息', msg:response.message});
                top.$d.dialog('close');
                $('#treeRole').tree('reload');
            }
        }
    });
}

function deleteRole(){
	var node = $('#treeRole').tree('getSelected');
	if (!node) {
		top.$.messager.show({title:'消息', msg:'请选择要删除的角色'});
		return;
	}
	
	top.$.messager.confirm('确认','确认删除?',function(r){
		if (r) {
			$.post('${CONTEXT_PATH}/platform/role/deleteRole', {id:node.id}, function(response){
				top.$.messager.show({title:'消息', msg:response.message});
				$('#treeRole').tree('reload');
            });
		}
	});
}

function addUserToRole() {
	var roleCode = $("#roleCode").val();
	if (!roleCode) {
		top.$.messager.show({title:'消息', msg:'请先选择目标角色'});
		return;
	}
	
	var dlg = dialog({
		id: 'dlgUser',
		title: '选择用户',
		url: '${CONTEXT_PATH}/platform/user/userSelectDialog',
		width: '680px',
		height: '500px',
		buttons: dialogDefaultHandler(userSelected, function() {dlg.dialog('close');})
	});
}

function userSelected(){
    var userCodeArr = top.$dw.getSelectedValue();
    top.$d.dialog('close');
    if (userCodeArr) {
    	$.post('${CONTEXT_PATH}/platform/role/addUserToRole', {roleCode:$("#roleCode").val(), userCodes:userCodeArr.join(',')}, function(response){
			top.$.messager.show({title:'消息', msg:response.message});
			$('#dgUser').datagrid('reload');
        });
    }
}

function removeUserFromRole() {
	var rows = $('#dgUser').datagrid('getChecked');
	if (!rows) {
		top.$.messager.show({title:'消息', msg:'请选择要从角色中删除的用户'});
		return;
	}
	
	var userCodeArr = [];
	$.each(rows, function() {
		userCodeArr.push(this.userCode);
	});
	var userCodes = userCodeArr.join(',');
	
	top.$.messager.confirm('确认','确认删除?',function(r){
		if (r) {
			$.post('${CONTEXT_PATH}/platform/role/removeUserFromRole', {roleCode:$("#roleCode").val(), userCodes:userCodes}, function(response){
				top.$.messager.show({title:'消息', msg:response.message});
				$('#dgUser').datagrid('reload');
            });
		}
	});
}

function userSearchHandler(value, name) {
	$("#dgUser").datagrid('load', {roleCode:$("#roleCode").val(), keyword:value});
}

function menuAuthzFormatter(value, row) {
	var chkId = 'authzCode_' + row.id;
	return '<input type="checkbox" id="' + chkId + '" name="authzCode" authzType="main" innerCode="' + row.innerCode + '" value="' + row.permissionCode + '" onclick="chkAuthzClick(this)">';
}

function moreAuthzValueFormatter(value, row) {
	if (value) {
		var sb = [];
		var authzArr = value.split(",");
		$.each(authzArr, function (i, authz) {
			var arr = authz.split(":");
			if (arr.length==2) {
				var chkId = 'authzCode_' + row.id + '_' + (i+1);
				var chkVal = row.permissionCode + '.' + arr[0];
				sb.push('<input type="checkbox" id="' + chkId + '" name="authzCode" authzType="other" innerCode="' + row.innerCode + '" value="' + chkVal + '" onclick="chkAuthzClick(this)"><label for="' + chkId + '">' + arr[1] +"</label>");
			}
	    });
	    return sb.join(" ");
	} else {
		return "";
	}
}

function tgAuthzLoadSuccess(row, data) {
	var authzCodes = $("#authzCodes").val();
	var authzCodeArr = authzCodes!=null? authzCodes.split(","):[];
    $.each(authzCodeArr, function (i, authzCode) {
    	$("[name='authzCode'][value='"+authzCode+"']").prop("checked", true);
    });
}

function chkAuthzAllClick() {
	$N("authzCode").prop("checked", $("#chkAuthzAll").is(":checked"));
}

function chkAuthzClick(obj) {
	var innerCode = $(obj).attr("innerCode");
	var isMainAuthzClicked = $(obj).attr("authzType")=="main";
	if ($(obj).is(":checked")) {
		if (isMainAuthzClicked) {
			// 选中所有功能权限
			$("[name='authzCode'][id^='"+$(obj).attr("id")+"']").prop("checked", true);
		} else {
			// 选中父菜单权限
			$("[name='authzCode'][authzType='main'][innerCode='"+innerCode+"']").prop("checked", true);
		}
		
		// 选中上级菜单权限
		while (innerCode.length>4) {
			innerCode = innerCode.substr(0, innerCode.length-4);
			$("[name='authzCode'][authzType='main'][innerCode='"+innerCode+"']").prop("checked", true);
		}
	} else {
		if (isMainAuthzClicked) {
			// 取消所有下级菜单权限和功能权限
			$("[name='authzCode'][innerCode^='"+innerCode+"']").prop("checked", false);
		}
	}
}

function saveAuthz() {
	var dc = {roleCode:$("#roleCode").val(), authzs:$N("authzCode").getCheckedValues()};
	$.post('${CONTEXT_PATH}/platform/role/saveAuthz', dc, function(response){
		top.$.messager.show({title:'消息', msg:response.message});
		$("#layoutBaseInfo").load("${CONTEXT_PATH}/platform/role/htmlRoleBaseInfo?id="+$("#roleId").val(), function(){
			$('#tgAuthz').treegrid('reload');
		});
    });
}
</script>
</head>
<body>

<div class="easyui-layout" data-options="fit:true,border:0"> 
 	
 	<!-- 区域：左侧角色树 -->
    <div data-options="region:'west',title:'角色',split:true,collapsible:false,border:0,headerCls:'border-right',bodyCls:'border-right'" style="width:180px;min-width:180px;max-width:380px">
    	<div class="datagrid-toolbar">
    		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="showAddRoleDialog()">新建</a>
    		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="showEditRoleDialog()">编辑</a>
    		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteRole()">删除</a>
		</div>
		<ul id="treeRole" class="easyui-tree" url="${CONTEXT_PATH}/platform/role/treeRole" data-options="onClick:treeRoleClickHandler"></ul>
    </div>
    
    <div data-options="region:'center',border:0,headerCls:'border-left',bodyCls:'border-left'">
    	<div class="easyui-layout" data-options="fit:true,border:0">  
            
            <!-- 区域：角色基本信息 -->
            <div id="layoutBaseInfo" data-options="region:'north',title:'基本信息',collapsible:false,border:0,bodyCls:'border-bottom',height:'80px'">
            </div>  
            
            <div data-options="region:'center',border:0">
				<div class="easyui-tabs" data-options="fit:true,border:0">  
				    
				    <!-- 标签页：包含用户 -->
				    <div title="包含用户">
				    	<div id="toolbarUser">
						    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addUserToRole()">添加用户到角色</a>
						    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUserFromRole()">从角色中删除用户</a>
							<div class="toolbar-searchbox">
								<input id="userSearchBox" class="easyui-searchbox" data-options="prompt:'请输入用户名或姓名',searcher:userSearchHandler" style="width:180px" />
							</div>
						</div>
						<table id="dgUser" class="easyui-datagrid" data-options="url:'${CONTEXT_PATH}/platform/role/dgUser',singleSelect:false,toolbar:'#toolbarUser'">
							<thead>
								<tr>
									<th field="userCode" checkbox="true">选择</th>
									<th field="userName" width="50" sortable="true">用户名</th>
									<th field="realName" width="50" sortable="true">姓名</th>
									<th field="branchGroupCodeName" width="50" sortable="true">所属部门</th>
								</tr>
							</thead>
						</table>
				    </div>
				     
				    <!-- 标签页：拥有权限 -->
				    <div title="拥有权限"> 
						<div id="toolbarAuthz">
						     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="saveAuthz()">保存</a>
						</div>   
				        <table id="tgAuthz" class="easyui-treegrid" 
							data-options="url:'${CONTEXT_PATH}/platform/role/tgAuthz',idField:'id',treeField:'permissionName',checkOnSelect:false,selectOnCheck:false,toolbar:'#toolbarAuthz',onLoadSuccess:tgAuthzLoadSuccess">
							<thead>
								<tr>
									<th field="authzCode" data-options="resizable:false,formatter:menuAuthzFormatter"><input id="chkAuthzAll" type="checkbox" onclick="chkAuthzAllClick()" /></th>
									<th field="permissionName" width="50">菜单</th>
									<th field="moreAuthzValue" width="120" data-options="formatter:moreAuthzValueFormatter">功能权限</th>
								</tr>
							</thead>
						</table>
				    </div>
				    
				</div>
            </div>
            
        </div>
    </div>  
</div>

</body>
</html>  