<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>协同平台</title>
<#include "../../common/resources.inc.ftl">
</head>
<body>

<form id="fm" method="post">
	<input type="hidden" name="id" value="${id!}">
	<div class="ftitle">字段定义</div>
    <div class="fitem">
        <label>字段代码:</label>
        <input name="fieldCode" class="easyui-textbox" value="${fieldCode!}" required="true">
    </div>
    <div class="fitem">
        <label>字段名称:</label>
        <input name="fieldName" class="easyui-textbox" value="${fieldName!}">
    </div>
    <div class="fitem">
        <label>属性:</label>
        <input name="attributes" class="easyui-textbox" value="${attributes!}">
    </div>
</form>

</body>
</html>