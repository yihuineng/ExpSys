<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>资源管理</title>
<#include "*/common/resources.inc.ftl">
</head>
<body class="dlg-body">

<form id="fm" class="form-edit" method="post">
	<input type="hidden" name="id" value="${id!}" />
	<input type="hidden" name="orgParentId" value="${parentId!}" />
	<div class="fitem">
  		<div class="ftitle">上级资源:</div>
  		<div class="fcontent"><select name="parentId" class="easyui-combotree" 
        	data-options="url:'${CONTEXT_PATH}/platform/permission/getData',value:'${parentId!}'"></select></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">资源代码:</div>
  		<div class="fcontent"><input name="permissionCode" class="easyui-textbox" data-options="required:true" value="${permissionCode!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">资源名称:</div>
  		<div class="fcontent"><input name="permissionName" class="easyui-textbox" data-options="required:true" value="${permissionName!}"></div>
  	</div>
    <div class="fitem">
    	<div class="ftitle">资源类型:</div>
        <div class="fcontent">
        	<@p.radio id="type" data=typeOptions value=type!/>
		</div>
    </div>
    <div class="fitem">
        <div class="ftitle">访问路径:</div>
        <div class="fcontent"><input name="url" class="easyui-textbox" value="${url!}"></div>
    </div>
    <div class="fitem">
        <div class="ftitle">图标:</div>
        <div class="fcontent">
        	<input name="icon" class="easyui-textbox" data-options="buttonIcon:'icon-ui-menu-blue',buttonText:'选择图标'" value="${icon!}">
        </div>
    </div>
    <div class="fitem">
        <div class="ftitle">是否可见:</div>
        <div class="fcontent">
        	<div class="fcontent easyui-radio">
        		<@p.radio id="visiable" data=visiableOptions value=(visiable!true)?string("1","0")/>
			</div>
        </div>
    </div>
    <div class="fitem">
        <div class="ftitle">备注:</div>
        <div class="fcontent"><input name="memo" class="easyui-textbox" data-options="multiline:true,height:56" value="${memo!}"></div>
    </div>
</form>

</body>
</html>  