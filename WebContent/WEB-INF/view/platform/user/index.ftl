<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>用户管理</title> <#include "*/common/resources.inc.ftl">
<script type="text/javascript">
	function sortUser(targetRow, sourceRow, point) {
		var groupCode = $("#groupCode").val();
		$.post('${CONTEXT_PATH}/platform/user/doUserSort', {
			targetId : targetRow.id,
			sourceId : sourceRow.id,
			point : point,
			groupCode : groupCode
		}, function(response) {
		});
	}

	function doSearch() {
		$("#dgUser").datagrid('load', {
			keyword:$('#keyWord').val()
		});
	}

	function boolformat(value, row, index) {
		return value ? "<font color='green'>启用</font>" : "<font color='red'>停用</font>";
	}
	function addUser() {
		var groupCode = $("#groupCode").val();
		top.$('#centerTabs').tabs('close', '新增用户');
		top.addTab('menu_addUser', '新增用户', '${CONTEXT_PATH}/platform/user/addUserPage', '');
	}
	/* function updateUser() {
		var row = $('#dgUser').datagrid('getSelected');
		if (!row) {
			top.$.messager.show({
				title : '消息',
				msg : '请选择要修改的用户'
			});
			return;
		}
		top.$('#centerTabs').tabs('close', '修改用户');
		top.addTab('menu_updateUser', '修改用户', '${CONTEXT_PATH}/platform/user/addOrUpdateUser?id=' + row.id);
	} */

	function deleteUser() {
		var rows = $('#dgUser').datagrid('getChecked');
		if (rows == '') {
			top.$.messager.show({
				title : '消息',
				msg : '请勾选要删除的用户'
			});
			return;
		}
		var userIdArr = [];
		$.each(rows, function() {
			userIdArr.push(this.id);
		});
		top.$.messager.confirm('确认', '确认删除?', function(r) {
			if (r) {
				$.post('${CONTEXT_PATH}/platform/user/doDelete', {
					userIdArr : userIdArr
				}, function(response) {
					top.$.messager.show({
						title : '消息',
						msg : response.message
					});
					$('#dgUser').datagrid('reload');
				});
			}
		});

	}
</script>
</head>
<body>

	<div class="easyui-layout" data-options="fit:true,border:0">
		<div class="easyui-layout" data-options="fit:true,border:0">
			<!-- 区域：角色基本信息 -->
			<div id="layoutBaseInfo"
				data-options="region:'south',split:true,title:'基本信息',collapsible:false,border:0,bodyCls:'border-bottom',height:'240px'">
			</div>

			<div data-options="region:'center',title:'用户管理',border:0">
				<div class="easyui-layout" data-options="fit:true,border:0">
					<div id="toolbarUser">
						<input id="groupCode" type="hidden" value="${groupCode!}" /> <a
							href="javascript:void(0)" class="easyui-linkbutton"
							iconCls="icon-add" plain="true" onclick="addUser()">添加用户</a> <!-- <a
							href="javascript:void(0)" class="easyui-linkbutton"
							iconCls="icon-edit" plain="true" onclick="updateUser()">修改用户</a> -->
						<a href="javascript:void(0)" class="easyui-linkbutton"
							iconCls="icon-remove" plain="true" onclick="deleteUser()">删除用户</a>
						<div class="toolbar-searchbox">
							<!-- 角色：
								<select id="roleId" name="roleId" class="easyui-combotree" style="width:200px;"  
						 			data-options="url:'${CONTEXT_PATH}/platform/role/treeRole',onChange:doSearch" >
								</select> -->
							用户： <input id="keyWord" name="keyWord" class="easyui-textbox"
								style="height: 22px; width: 120px"> <a href="#"
								class="easyui-linkbutton" data-options="iconCls:'icon-search'"
								onclick="doSearch()">查询</a>
						</div>
					</div>
					<table id="dgUser" class="easyui-datagrid"
						data-options="url:'${CONTEXT_PATH}/platform/user/dgUser',checkOnSelect:false,selectOnCheck:false,toolbar:'#toolbarUser',
						onBeforeDrop:sortUser">
						<thead>
							<tr>
								<th field="id" checkbox="true">选择</th>
								<th field="realName" width="50" sortable="true">姓名</th>
								<th field="userName" width="50" sortable="true">用户名</th>
								<th field="mobile" width="50" sortable="true">手机</th>
								<th field="isEnable" data-options="formatter:boolformat"
									width="50" sortable="true">是否启用</th>
								<th field="lastLoginTime" width="50" sortable="true">最后登录时间</th>
							</tr>
						</thead>
					</table>
				</div>

			</div>
		</div>
	</div>
	</div>

</body>
</html>
