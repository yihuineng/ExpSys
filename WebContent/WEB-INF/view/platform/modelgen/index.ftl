<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>企业协同平台</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
function doSumbit(){
	$('#ff').form('submit', {
	    url:"${CONTEXT_PATH}/platform/modelGen/gen",
	    queryParams: {
	    	PackageName: $("#PackageName").val(),
	    	TableName: $("#TableName").val()
	    },
	    onSubmit: function(){
	        // do some check
	        // return false to prevent submit;
	    },
	    success:function(data){
	        alert(data)
	    }
	});
}
</script>
</head>
<body>
<form id="ff" method="post">
    <div>
        <label for="name">包名:</label>
        <input type="text" name="PackageName" class="easyui-textbox" data-options="required:true" /> 
    </div>
    <div>
        <label for="name">表名:</label>
        <input type="text" name="TableName" class="easyui-textbox" data-options="required:true" /> 
    </div>
    <a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="doSumbit()">代码生成</a>
</form>
</body>
</html>  