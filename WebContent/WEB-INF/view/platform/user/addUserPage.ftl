<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>用户信息</title> <#include "*/common/resources.inc.ftl">
<script type="text/javascript"
	src="${CONTEXT_PATH}/ewebeditor/ewebeditor.js"></script>
<script type="text/javascript"
	src="${CONTEXT_PATH}/platform/js/jquery.aceext.js"></script>
<script type="text/javascript"
	src="${CONTEXT_PATH}/platform/js/jquery.form.js"></script>
<script type="text/javascript"
	src="${CONTEXT_PATH}/platform/js/jquery.gritter.js"></script>
<script type="text/javascript"
	src="${CONTEXT_PATH}/platform/js/jquery.validate.js"></script>
<script type="text/javascript">
function  roleTreeLoadSuccess(node, data) {
	var roles = ${roles!}+'';
	var authzCodeArr = roles.split(",");
	for(var i=0;i<authzCodeArr.length;i++){
	var n = $("#treeRole").tree('find',authzCodeArr[i]);
      if(n){
          $("#treeRole").tree('check',n.target);
     }
  }
}

function doSave(status) {
	if(status=='1'){
		var curtab=top.$('#centerTabs').tabs('getSelected');
		currentTabIndex =top.$('#centerTabs').tabs('getTabIndex',curtab);
        top.$('#centerTabs').tabs('close',currentTabIndex);
		return false;
	}
	 var nodes = $('#treeRole').tree('getChecked');
                var roles = '';
                for (var i = 0; i < nodes.length; i++) {
                    if (roles != '') 
                        roles += ',';
                    roles += nodes[i].id;
                }
	$("#fm")[0].action = "${CONTEXT_PATH}/platform/user/doSave?roles="+roles;
		$("#fm").defaultAjaxSubmit(function(response) {
		if (response.message!='操作成功'){
             top.$.messager.show({title:'错误', msg:response.message});
        } else {
        top.$.messager.show({title:'消息', msg:response.message});
 		var tab = top.$('#centerTabs').tabs('getTab','用户管理');
						top.$('#centerTabs').tabs('update', {
							tab: tab,
							options: {
								title: '用户管理'
							}
						});
						tab.panel('refresh');
		var curtab=top.$('#centerTabs').tabs('getSelected');
		currentTabIndex =top.$('#centerTabs').tabs('getTabIndex',curtab);
        top.$('#centerTabs').tabs('close',currentTabIndex);
		}
		});
}

</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true,border:0">
		<form id="fm" class="form-edit" method="post">
			<div data-options="region:'south'" class="form-button">
				<a id="btn" href="javascript:doSave('0');" class="easyui-linkbutton"
					data-options="iconCls:'icon-save'">保存</a> <a id="btn"
					href="javascript:doSave('1');" class="easyui-linkbutton"
					data-options="iconCls:'icon-no'">关闭</a>
			</div>
			<div
				data-options="region:'east',title:'角色',split:true,collapsible:false,border:0,headerCls:'border-right',bodyCls:'border-right'"
				style="width: 330px; min-width: 180px; max-width: 380px">
				<ul id="treeRole" class="easyui-tree"
					url="${CONTEXT_PATH}/platform/role/treeRole"
					data-options="checkbox:true,cascadeCheck:false,onLoadSuccess:roleTreeLoadSuccess"></ul>
			</div>

			<div
				data-options="region:'center',border:0,headerCls:'border-left',bodyCls:'border-left'">
				<div class="easyui-layout" data-options="fit:true,border:0">
					<div data-options="region:'center',title:'用户管理',border:0">
						<div class="easyui-layout" data-options="fit:true,border:0"
							style="OVERFLOW-Y: auto; OVERFLOW-X: hidden;">
							<input type="hidden" name="id" value="${id!}" /> 
							<div class="fitem">
								<div class="ftitle">真实姓名:</div>
								<div class="fcontent">
									<input name="realName" class="easyui-textbox"
										data-options="required:true" value="${realName!}">
								</div>
							</div>
							<div id="a" class="fitem">
								<div class="ftitle">用户名:</div>
								<div class="fcontent">
									<input name="userName" class="easyui-textbox"
										value="${userName!}">
								</div>
							</div>
							<div id="c" class="fitem">
								<div class="ftitle">登录密码:</div>
								<div class="fcontent">
									<input name="newPassword" type="password"
										class="easyui-textbox" value="">
								</div>
							</div>
							<div class="fitem">
								<div class="ftitle">电子邮箱:</div>
								<div class="fcontent">
									<input name="email" class="easyui-textbox" validType="email"
										invalidMessage="请填写正确的邮件格式" value="${email!}">
								</div>
							</div>
							<div class="fitem">
								<div class="ftitle">手机号码:</div>
								<div class="fcontent">
									<input name="mobile" class="easyui-textbox" value="${mobile!}">
								</div>
							</div>
							<div id="j" class="fitem">
								<div class="ftitle">是否启用:</div>
								<div class="fcontent"><@p.radio id="isEnable"
									data=isEnableOptions value=(isEnable!true)?string('1','0')/></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
