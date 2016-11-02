<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>Api</title> <#include "../../common/resources.inc.ftl">
</head>
<body class="dlg-body">
	<form id="fm" class="form-edit" method="post">
		<div class="fitem">
			<div class="ftitle">Api名称:</div>
			<div class="fcontent">
				<input name="apiName" class="easyui-textbox" value="${apiName!}"
					required="true">
			</div>
		</div>
		<div class="fitem">
			<div class="ftitle">ApiUrl:</div>
			<div class="fcontent">
				<input name="apiUrl" class="easyui-textbox" value="${apiUrl!}"
					required="true">
			</div>
		</div>
		<div class="fitem">
			<div class="ftitle">ApiParams:</div>
			<div class="fcontent">
				<input name="apiParams" class="easyui-textbox"
					value="${apiParams!}" required="true" data-options="multiline:true,height:56" >
			</div>
		</div>
		<div class="fitem">
			<div class="ftitle">ApiReturn:</div>
			<div class="fcontent">
				<input name="apiReturn" class="easyui-textbox"
					value="${apiReturn!}" required="true" data-options="multiline:true,height:56">
			</div>
		</div>
		<div class="fitem">
			<div class="ftitle">是否启用:</div>
			<div class="fcontent"><@p.radio id="isEnable"
				data=isEnableOptions value=(isEnable!true)?string('1','0')/></div>
		</div>
	</form>
</body>
</html>