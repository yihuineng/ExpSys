<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>表单管理</title> 
<#include "../../common/resources.inc.ftl">

<script type="text/javascript">
/**
 * 载入方法
 */
$(function(){
	$('#btn_UDB').linkbutton('disable');
    $('#dg').edatagrid({
        onRowContextMenu: onRowContextMenu, //右键
        url: '${CONTEXT_PATH}/codegen/physicalTable/getVailedData',    
	    saveUrl: '${CONTEXT_PATH}/codegen/model/saveedatagridt',    
	    updateUrl: '${CONTEXT_PATH}/codegen/model/updateedatagridt',    
	    destroyUrl: '${CONTEXT_PATH}/codegen/model/destoryedatagridt',
		destroyMsg:{
			norecord:{ 
				title:'警告！！！',
				msg:'请选中要删除的行.'
			},
			confirm:{     
				title:'警告！！！',
				msg:'你确定要删除该行吗?'
			}
		},
		onError: function(index, info){
			if(info.status){//错误处理函数
				alert(info.message);
			}
		},
		onBeforeAdd: function(){
		},
		onAfterAdd: function(index, row){
		},
		onEdit: function(index, row){
		},
	    onBeforeEdit:function(index,row){
	        row.editing = true;  
	        $('#dg').edatagrid('refreshRow', index);  
	    },
	    onAfterEdit:function(index,row){
	    	
	        row.editing = false;  
	        $('#dg').edatagrid('refreshRow', index);  
	    },
	    onCancelEdit:function(index,row){  
	        row.editing = false;  
	        $('#dg').edatagrid('refreshRow', index);  
	    },
	    onBeforeSave: function(index){
	    	/* var row = $('#dg').datagrid('getSelected');
	    	var rows = $('#dg').datagrid('getRows');
	        
	    	//表重名检查
	    	var target = $('#dg').datagrid('getEditor', {'index':index,'field':'fieldCode'}).target;
	    	var fieldCodeValue=target.textbox('getValue');
	    	for (var i = 0; i < rows.length; i++) {
	    		 if(i==index)continue;
	             if(rows[i]['fieldCode']==fieldCodeValue){
	            	 alert("表名重复！");
	            	 return false;
	             }
	         }
	    	var pktarget = $('#dg').datagrid('getEditor', {'index':index,'field':'pk'}).target;
	    	var pkValue=pktarget.prop("checked");
	    	//主键唯一检查
	    	if(pkValue==true){
	    		for (var i = 0; i < rows.length; i++) {
	    			if(i==index)continue; 
	    			if(rows[i]['pk']==true){
		            	 alert("主键已存在！");
		            	 return false;
		             }
		         }
	    	} */
	    }
    });
});

/**
 * 添加右击菜单内容
 */
function onRowContextMenu(e, rowIndex, rowData){
   $("#dg").datagrid("selectRow",rowIndex);
   e.preventDefault();
   var selected=$("#dg").datagrid('getRows'); //获取所有行集合对象
    selected[rowIndex].id; //index为当前右键行的索引，指向当前行对象
    $('#mm').menu('show', {
        left:e.pageX,
        top:e.pageY
    });       
}

/**
 * 生成单张物理表
 */
function createTable(){
	//ajax
	var row = $('#dg').datagrid('getSelected');
	$.post('${CONTEXT_PATH}/codegen/physicalTable/createtable', {modelCode:row.tableName,modelName:row.modelName,modelPackage:row.modelPackage}, function(response){
		if(response.status){
			alert(response.message);
		}
	});
}
/**
 * 一键生成，同步各表到真实数据库,并生成java代码
 */
function createalltable(){
	//ajax
	$.post('${CONTEXT_PATH}/codegen/physicalTable/createalltable', {}, function(response){
		if(response.status){
			alert(response.message);
		}
	});
}

/**
 * 保存模型定义
 */
function saveModelDef(){
    var fm = top.$('#dlgwin-dlgModelDef')[0].contentWindow.$("#fm");
    fm.form('submit',{
        url: '${CONTEXT_PATH}/codegen/physicalTable/createModelDef',
        onSubmit: function(){
            return fm.form('validate');
        },
        success: function(result){
            var result = eval('('+result+')');
            if (result.errorMsg){
                $.messager.show({
                    title: 'Error',
                    msg: result.errorMsg
                });
            } else {
                top.$('#dlgModelDef').dialog('close');        // close the dialog
                $('#dg').datagrid('reload');    // reload the user data
            }
        }
    });
}

/**
 * 生成java模型代码
 */
function genModel4Java(){
	 var row = $('#dg').datagrid('getSelected');
    if (!row){
    	top.$.messager.show({title:'消息', msg:'请先选择一行数据!'});
    	return;
    }
    
    var dc = {
    	packageName: (console.log(row.modelPackage),row.modelPackage),
    	tableName: (console.log(row.tableName),row.tableName)
    };
    $.post("${CONTEXT_PATH}/codegen/physicalTable/genJavaCode", dc, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
        }
	});
}

/**
 * 刷新模型和Java代码
 */
function regenModelDefAndJavaCode() {
	var row = $('#dg').datagrid('getSelected');
    if (!row){
    	top.$.messager.show({title:'消息', msg:'请先选择一行数据!'});
    	return;
    } 
    
    $.post("${CONTEXT_PATH}/codegen/physicalTable/regenModelDefAndJavaCode", {modelCode:row.tableName}, function(response){
		if (response.status<=0){
            top.$.messager.alert('错误', response.message);
        } else {
        	top.$.messager.show({title:'消息', msg:response.message});
        }
	});
}

/**
 * 加查看明细
 */
function formatInfo(value, row, index) {
		var links = [];
		links.push(createOpenNewTabLink("模型", "模型-"+row.tableName, "${CONTEXT_PATH}/codegen/model/edit/"+row.tableName));
		links.push(createOpenNewTabLink("DDL", "DDL-"+row.tableName, "${CONTEXT_PATH}/codegen/model/ddl/"+row.tableName));
		links.push(createOpenNewTabLink("源码", "源码-"+row.tableName, "${CONTEXT_PATH}/codegen/model/sourceCode/"+row.tableName));
		return links.join("&nbsp;&nbsp;");
	}

/**
 * 显示数据库未生成的表
 */
function showDeletedData() {
	if($('#btn_SDD').linkbutton('options').selected==false){
		$('#btn_UDB').linkbutton('enable');
		$('#dg').edatagrid({  
		    url:'${CONTEXT_PATH}/codegen/physicalTable/getDeletedData' 
		}); 
		$('#dg').edatagrid("reload");
	}
	if($('#btn_SDD').linkbutton('options').selected==true){
		$('#btn_UDB').linkbutton('disable');
		$('#dg').edatagrid({  
		    url:'${CONTEXT_PATH}/codegen/physicalTable/getVailedData' 
		}); 
		$('#dg').edatagrid("reload");
	}
}


/**
 * 检索
 */
 function searchAction(value,name) {
	if(name=="table") searchTable(value);
	if(name=="word") searchWord(value);
} 

/**
 * 搜索含有该字段的所有表
 */
function searchWord(value) {
	$('#dg').edatagrid({  
	    url:'${CONTEXT_PATH}/codegen/physicalTable/searchWord?searchValue='+value
	}); 
	$('#dg').edatagrid("reload");
}

/**
 * 搜索含有该表名的所有表
 */
function searchTable(value) {
	$('#dg').edatagrid({  
	    url:'${CONTEXT_PATH}/codegen/physicalTable/searchTable?searchValue='+value
	}); 
	$('#dg').edatagrid("reload");
}

//封装addrow 方法
function addrow(){
	//跳到末页  BUG:需要延时运行两次.
	var _d1=$('#dg').edatagrid("getPager").pagination("options");
	var _d2=Math.ceil(_d1.total/_d1.pageSize);
	if(_d1.pageNumber<_d2){
		$('#dg').edatagrid("getPager").pagination("select",_d2);
	}
	setTimeout(function(){$('#dg').edatagrid('addRow');}, 300);//延时执行，等页面加载完
}
</script>
</head>
<body>
	<table id="dg" title="物理表" class="easyui-datagrid"
		   toolbar="#toolbar"
		   pagination="true"
		   singleSelect="true"
		   rownumbers="true" 
           fitColumns="true"
           idField="id">
		<thead>
			<tr>
				<th field="tableName" 
					width="40"
					editor="{type:'textbox',options:{required:true}}"
					>表名(模型代码)</th>
				<th field="modelName" 
					width="40"
					editor="{type:'textbox',options:{required:true}}"
					>模型名称</th>
				<th field="modelPackage" 
					width="40"
					editor="{type:'textbox',options:{required:true}}"
					>包名</th>
				<th field="info" 
					width="25" 
					data-options="formatter:formatInfo"
					>查看</th>
			</tr>
		</thead>
	</table>
</body>
<div id="mm" class="easyui-menu" style="width: 120px;">
	<div onClick="createTable()" data-options="iconCls:'icon-add'">生成物理表</div>
	<div onClick="genModel4Java()" data-options="iconCls:'icon-add'">生成代码</div>
	<div onClick="regenModelDefAndJavaCode()" data-options="iconCls:'icon-reload'">刷新代码</div>
	<div class="menu-sep"></div>
    <!-- <div onClick="jvascript:$('#dg').edatagrid('addRow')" data-options="iconCls:'icon-add'">新增行</div> -->
    <div onClick="jvascript:$('#dg').edatagrid('destroyRow')" data-options="iconCls:'icon-remove'">删除行</div>
    <div onClick="jvascript:$('#dg').edatagrid('saveRow')" data-options="iconCls:'icon-save'">保存行</div>
    <div onClick="jvascript:$('#dg').edatagrid('cancelRow')" data-options="iconCls:'icon-undo'">撤销行</div>
</div>
<div id="toolbar">
	 <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="false" onclick="jvascript:$('#dg').edatagrid('reload')">刷新页面</a>   -->
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="false" onclick="jvascript:addrow()">新建模型</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="false" onclick="jvascript:$('#dg').edatagrid('destroyRow')">删除模型</a>
     <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="false" onclick="jvascript:$('#dg').edatagrid('saveRow')">保存行</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="false" onclick="jvascript:$('#dg').edatagrid('cancelRow')">撤销行</a> -->

	 <a id="btn_SDD" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" toggle="true" plain="false" onclick="showDeletedData()">查看数据库中未生成的表</a>
	 <a id="btn_UDB" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="false" onclick="jvascript:createalltable()">一键生成物理表和代码</a>
	 <input id="s_value" class="easyui-searchbox" style="width: 300px" data-options="searcher:searchAction,prompt:'请输入',menu:'#s_list'" />
</div>
<div id="s_list" style="width: 120px">
	<div data-options="name:'table',iconCls:'icon-ok'">搜索表</div>
	<div data-options="name:'word',iconCls:'icon-ok'">搜索字段</div>
</div>
</html>
