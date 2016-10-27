<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>修改密码管理</title>
<#include "*/common/resources.inc.ftl">
</head>
<body class="dlg-body">

<form id="fm" class="form-edit" method="post">
	<div class="fitem">
  		<div class="ftitle">原密码:</div>
  		<div class="fcontent"><input name="oldPassword" type="password" class="easyui-textbox" data-options="required:true" value="${oldPassword!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">新密码:</div>
  		<div class="fcontent"><input name="newPassword" type="password" class="easyui-textbox" data-options="required:true" value="${newPassword!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">再次输入新密码:</div>
  		<div class="fcontent"><input name="newPassword2" type="password" class="easyui-textbox" data-options="required:true" value="${newPassword!}"></div>
  	</div>
</form>

</body>
</html>  