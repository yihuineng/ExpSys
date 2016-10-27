<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>角色管理</title>
<#include "*/common/resources.inc.ftl">
</head>
<body class="dlg-body">

<form id="fm" class="form-edit" method="post">
	<input type="hidden" name="id" value="${id!}" />
	<div class="fitem">
  		<div class="ftitle">上级角色:</div>
  		<div class="fcontent"><select name="parentId" class="easyui-combotree" 
        	data-options="url:'${CONTEXT_PATH}/platform/role/treeRole',value:'${parentId!}'"></select></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">角色代码:</div>
  		<div class="fcontent"><input name="roleCode" class="easyui-textbox" data-options="required:true" value="${roleCode!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">角色名称:</div>
  		<div class="fcontent"><input name="roleName" class="easyui-textbox" data-options="required:true" value="${roleName!}"></div>
  	</div>
    <div class="fitem">
        <div class="ftitle">备注:</div>
        <div class="fcontent"><input name="memo" class="easyui-textbox" data-options="multiline:true,height:56" value="${memo!}"></div>
    </div>
</form>

</body>
</html>  