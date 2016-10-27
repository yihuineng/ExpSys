<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>浙江警察学院后台</title>
<#include "*/common/resources.inc.ftl">
<style type="text/css">
#header { background:#dae4ed url(${CONTEXT_PATH}/platform/images/topBlue.png) repeat-x right top; height: 60px; color:#cfdee5;}
#header .topRightNav { display:block; height:21px; position:absolute; top:0; right:0; z-index:31;}
#header .topRightNav li { list-style:none; background: url(${CONTEXT_PATH}/assets/easyui-ext/images/listLine.png) no-repeat; float:left; margin-left:-1px; padding:0 10px; line-height:11px; position:relative;}
#header .topRightNav li:first-child { background:none; }
#header .topRightNav li a { line-height:11px; color:#cfdee5; text-decoration: none;}
#header .topRightNav li a:hover { color:#ffffff; text-decoration: underline;}
</style>
<script type="text/javascript">
function centerTabsContextMenuHandler(e, title, index) {
	e.preventDefault();
	$("#tabsMenu").menu('show', {
		left : e.pageX,
		top : e.pageY
	}).data('tabIndex', index);
}

function tabsMenuHandler(item) {
	var tabIndex = $(this).data('tabIndex');
	
	if (item.name === 'refresh') {
		var menuId = $('#centerTabs').tabs('getTab', tabIndex)[0].id;
		refreshTab(menuId);
	} else if (item.name === 'close') {
		$('#centerTabs').tabs('close', tabIndex);
	} else if (item.name === 'closeOther') {
		var tabs = $('#centerTabs').tabs('tabs');
		for (var i = tabs.length-1; i >= 0; i--) {
			var tab = tabs[i];
			if (tab.panel('options').closable) {
				var index = $('#centerTabs').tabs('getTabIndex',tab);
				if (index!=tabIndex) {
					$('#centerTabs').tabs('close', index);
				}
			}
		}
	} else if (item.name === 'closeAll') {
		var tabs = $('#centerTabs').tabs('tabs');
		for (var i = tabs.length-1; i >= 0; i--) {
			var tab = tabs[i];
			if (tab.panel('options').closable) {
				var index = $('#centerTabs').tabs('getTabIndex',tab);
				$('#centerTabs').tabs('close', index);
			}
		}
	}
}

function refreshTab(menuId) {
	$('#centerTabs').tabs('selectById', menuId);
	$('#' + menuId + ' > div > iframe').get(0).contentDocument.location.reload(true);
}

//--功能描述：左侧菜单添加tab（手风琴样式）
function addTab(menuId, title, url, ciconCls) {
	if ($('#centerTabs').tabs('existsById', menuId)) {
		$('#centerTabs').tabs('selectById', menuId);
		refreshTab(menuId); //增加左侧菜单点击刷新功能
	} else {
		if (url && url.length > 0) {
		//if (node.attributes.url.indexOf('!druid.action') == -1) {/*数据源监控页面不需要开启等待提示*/
			$.messager.progress({
				text : '正在加载...',
				interval : 100
			});
			window.setTimeout(function() {
				try {
					$.messager.progress('close');
				} catch (e) {
				}
			}, 0);
		//	}
			$('#centerTabs').tabs('add', {
				id: menuId,
				title : title,
				closable : true,
				iconCls : ciconCls,
				content : createFrame(url)
			});
		}
	}
}

function createFrame(url) {
	return '<div style="width:100%;height:100%;overflow:hidden;"><iframe src="' + url + '" frameborder="0" style="border:0;width:100%;height:100%;"></iframe></div>';
}

function treeMenuClickHandler(node){
	if (node.type=='menu') {
		addTab('menu_'+node.id, node.permissionName, '${CONTEXT_PATH}/'+node.url, node.iconCls);
	}
}

$(function(){
	addTab('menu_0','桌面','${CONTEXT_PATH}/desktop','');
});

function showModifyPasswordDialog() {
	var dlg = dialog({
		id: 'dlgModifyPassword',
		title: '修改密码',
		url: '${CONTEXT_PATH}/modifyPasswordDialog',
		width: '350px',
		height: '280px',
		buttons: dialogDefaultHandler(doModifyPassword, function() {dlg.dialog('close');})
	}); 
}

function doModifyPassword() {
	if (!top.$dw.$("#fm").form('validate')) {
		return false;
	}
	var dc = top.$dw.$("#fm").serializeJSON();
	if (dc.newPassword!=dc.newPassword2) {
    	top.$.messager.alert('错误', '两次输入密码不一致');
        return false;
    }
	$.post("${CONTEXT_PATH}/modifyPassword", dc, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
            top.$d.dialog('close');
        }
	});
}
</script>
</head>
<body class="easyui-layout">
	<div id="header" data-options="region:'north',border:false" style="overflow:hidden">
		<img id="logo" src="${CONTEXT_PATH}/platform/images/admin-logo.png" style="padding: 12px 0 0 15px;">
		<ul class="topRightNav">
			<li>当前用户：${currentUser.realName}</li>
			<li><a id="modifyPassword" href="javascript:void(0)" onclick="showModifyPasswordDialog()">修改密码</a></li>
			<li><a id="logout" href="${CONTEXT_PATH}/logout">退出登录</a></li>
		</ul>
	</div>
	<div data-options="region:'west',title:'主菜单',split:true" style="width:190px;">
		<div class="easyui-accordion" width="100%" height="100%" border="0">
			<#list mainMenus as menu>
				<div title="${menu.permissionName!'未命名'}" iconCls="${menu.icon!'icon-applications-blue'}">
					<ul class="easyui-tree" url="${CONTEXT_PATH}/treeMenus?pid=${menu.id}" data-options="lines:true,onClick:treeMenuClickHandler"></ul>
				</div>
			</#list>
		</div>
	</div>
	<div data-options="region:'center'">
		<div id="centerTabs" class="easyui-tabs" data-options="fit:true,border:false,onContextMenu:centerTabsContextMenuHandler"></div>
		<div id="tabsMenu" class="easyui-menu" data-options="onClick:tabsMenuHandler" style="width:130px;display:none;">
			<div data-options="name:'refresh'">刷新</div>
			<div class="menu-sep"></div>
			<div data-options="name:'close'">关闭标签页</div>
			<div data-options="name:'closeOther'">关闭其他标签页</div>
			<div data-options="name:'closeAll'">关闭所有标签页</div>
		</div>
	</div>
</body>
</html>
