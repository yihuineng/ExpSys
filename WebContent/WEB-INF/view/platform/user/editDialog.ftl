<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>角色管理</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
$(function(){ 
		$('#groupCode').combotree({
			onLoadSuccess :function(){
			$('#groupCode').combotree("setValue",${groupCode!});
			doSearch();
			}
		});
})
</script>
</head>
<body class="dlg-body">

<form id="fm" class="form-edit" method="post">
	<input type="hidden" name="id" value="${id!}" />
	<div class="fitem">
  		<div class="ftitle">用户名:</div>
  		<div class="fcontent"><input name="userName" class="easyui-textbox" data-options="required:true" value="${userName!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">真实姓名:</div>
  		<div class="fcontent"><input name="realName" class="easyui-textbox" data-options="required:true" value="${realName!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">登录密码:</div>
  		<div class="fcontent"><input name="newPassword" type="password" class="easyui-textbox" value=""></div>
  	</div>
  	<div class="fitem">
    	<div class="ftitle">是否启用:</div>
        <div class="fcontent">
        	<@p.radio id="isEnable" data=isEnableOptions value=(isEnable!true)?string('1','0')/>
		</div>
    </div>
  	<div class="fitem">
  		<div class="ftitle">电子邮箱:</div>
  		<div class="fcontent"><input name="email" class="easyui-textbox" value="${email!}"></div>
  	</div>
  	<div class="fitem">
  		<div class="ftitle">手机号码:</div>
  		<div class="fcontent"><input name="mobile" class="easyui-textbox" value="${mobile!}"></div>
  	</div>
 	<div class="fitem">
  		<div class="ftitle">所属部门:</div>
  		<div class="fcontent">
	<select id="groupCode" name="branchGroupCode" class="easyui-combotree"
						 data-options="url:'${CONTEXT_PATH}/project/xcqtask/bmrz/getGroupData'" >
						
	</div>
  	</div>
</form>

</body>
</html>  