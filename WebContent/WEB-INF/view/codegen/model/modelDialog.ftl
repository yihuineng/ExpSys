<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>模型管理</title>
<#include "../../common/resources.inc.ftl">
</head>
<body class="dlg-body">

<form id="fm" class="form-edit" method="post">
	<div class="fitem">
        <div class="ftitle">模型代码:</div>
        <div class="fcontent"><input name="modelCode" class="easyui-textbox" value="${modelCode!}" required="true"></div>
    </div>
    <div class="fitem">
        <div class="ftitle">模型名称:</div>
        <div class="fcontent"><input name="modelName" class="easyui-textbox" value="${modelName!}" required="true"></div>
    </div>
    <div class="fitem">
        <div class="ftitle">包名:</div>
        <div class="fcontent"><input name="modelPackage" class="easyui-textbox" value="${modelPackage!}" required="true"></div>
    </div>
</form>

</body>
</html>