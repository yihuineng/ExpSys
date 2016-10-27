<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>KM系统管理后台</title>
<#include "*/common/resources.inc.ftl">
<style type="text/css">
html,body{width:100%; height:100%;}
body{background:#e7f1fb url(${CONTEXT_PATH}/platform/images/login_01.jpg) repeat-x left top; color:#000; font-size:12px;}
.Login{ width:1000px; height:472px;}
input.LoginText{width:200px; height:22px; line-height:18px; padding:0px 5px 2px 5px;}
.LoginButton{background:url(${CONTEXT_PATH}/platform/images/login_09.gif) no-repeat; text-align:center; color:#fff; font-size:12px; width:98px; height:24px; border:0; cursor:pointer;}
</style>
<script type="text/javascript">
<#if shiroLoginFailure??>
	$(function(){top.$.messager.alert('错误', '<@shiro.loginException name=shiroLoginFailure/>');});
</#if>
</script>
</head>
<body>
<table width="100%" height="100%" cellSpacing="0" cellPadding="0">
	<tr>
		<td align="center" valign="middle" style="height:100%">
<form id="form1" method="post">
	<br><br><br>
    <table width="220" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="25" align="left"><b>用户名：</b></td>
      </tr>
      <tr>
        <td height="30"><input name="username" class="easyui-textbox" style="width:215px;" value="admin"></td><!-- ${username!} -->
      </tr>
      <tr>
        <td height="25" align="left"><b>密&nbsp;&nbsp;码：</b></td>
      </tr>
      <tr>
        <td height="30"><input name="password" type="password" class="easyui-textbox" style="width:215px;" value="888888"></td>
      </tr>
      <tr>
        <td height="30" align="left"><input type="checkbox" name="remberMe" id="remberMe"> 自动登录(7天)</td>
      </tr>
      <tr>
        <td height="30"><input type="submit" value="提 交" class="LoginButton">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重 置" class="LoginButton"></td>
      </tr>
	</table>
</form>		
		</td>
	</tr>
</table>
</body>
</html>