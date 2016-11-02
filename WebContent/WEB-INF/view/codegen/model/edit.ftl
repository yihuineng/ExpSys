<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>编辑字段</title>
<#include "../../common/resources.inc.ftl">

<script type="text/javascript">
/**
 * 固定选项
 */
var chooseValues = [{ "id":0, "fValue": "bigint",         "cValue": "long" }, 
                    { "id":1, "fValue": "bit",        "cValue": "boolean" },
               		{ "id":2, "fValue": "float",          "cValue": "double" },
                    { "id":3, "fValue": "datetime",       "cValue": "Date" },
               		{ "id":4, "fValue": "varchar(16)",   "cValue": "String" },
               		{ "id":5, "fValue": "varchar(64)",   "cValue": "String" },
               		{ "id":6, "fValue": "varchar(256)",  "cValue": "String" },
               		{ "id":7, "fValue": "varchar(1024)", "cValue": "String" },
               		{ "id":8, "fValue": "varchar(max)",  "cValue": "String" }];
               		
var classNameValues = [{ "id":0, "fValue": "bigint",         "cValue": "long" }, 
                    { "id":1, "fValue": "bit",        "cValue": "boolean" },
               		{ "id":2, "fValue": "float",          "cValue": "double" },
                    { "id":3, "fValue": "datetime",       "cValue": "Date" },
               		{ "id":4, "fValue": "varchar(256)",   "cValue": "String" }];

/**
 * 载入方法
 */
$(function(){
	//绑定表格方法
	$('#dg').edatagrid({
		url: '${CONTEXT_PATH}/codegen/model/bindedatagrid?modelCode=${modelCode}',    
	    saveUrl: '${CONTEXT_PATH}/codegen/model/saveedatagridr?modelCode=${modelCode}',    
	    updateUrl: '${CONTEXT_PATH}/codegen/model/updateedatagridr?modelCode=${modelCode}',    
	    destroyUrl: '${CONTEXT_PATH}/codegen/model/destoryedatagridr?modelCode=${modelCode}',
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
		onEdit: function(index, row){
			//更新修改时的checkbox状态
			var nktarget = $('#dg').datagrid('getEditor', {'index':index,'field':'notNull'}).target;
			var pktarget = $('#dg').datagrid('getEditor', {'index':index,'field':'pk'}).target;
			if(row.pk==true){
				pktarget.prop("checked",true);
			}
			if(row.notNull==true){
				nktarget.prop("checked",true);
			}
		},
	    onBeforeEdit:function(index,row){
	        row.editing = true;  
	        $('#dg').edatagrid('refreshRow', index);  
	    },
	    onAfterEdit:function(index,row){
	    	if(row.pk==true){
				row.notNull=true;
			}
	    	if(row.notNull==false){
	    		row.pk=false;
	    	}
	        row.editing = false;  
	        $('#dg').edatagrid('refreshRow', index); 
	    },
	    onCancelEdit:function(index,row){  
	        row.editing = false;  
	        $('#dg').edatagrid('refreshRow', index);  
	    },
	    onBeforeSave: function(index){
	    	var row = $('#dg').datagrid('getSelected');
	    	var rows = $('#dg').datagrid('getRows');
	        
	    	//字段重名检查
	    	var target = $('#dg').datagrid('getEditor', {'index':index,'field':'fieldCode'}).target;
	    	var fieldCodeValue=target.textbox('getValue').toLowerCase();
	    	for (var i = 0; i < rows.length; i++) {
	    		 if(i==index)continue;
	             if(rows[i]['fieldCode'].toLowerCase()==fieldCodeValue){
	            	 alert("字段代码重复！");
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
	    	}
	    }
	});
});

/**
 * 关联下拉
 */
function fieldTypeChange(){
	var row = $('#dg').datagrid('getSelected');
	var rowIndex = $('#dg').datagrid('getRowIndex',row);//获取行号
	var target = $('#dg').datagrid('getEditor', {'index':rowIndex,'field':'fieldType'}).target;
	var ctarget = $('#dg').datagrid('getEditor', {'index':rowIndex,'field':'className'}).target;
	
	var value=target.combobox('getValue');
	 for (var i = 0; i < chooseValues.length; i++) {
	        if (chooseValues[i].fValue == value) {
	        	ctarget.combobox('setValue',chooseValues[i].cValue);
	            break;
	        }
	 }
}
function classNameChange(){
	var row = $('#dg').datagrid('getSelected');
	var rowIndex = $('#dg').datagrid('getRowIndex',row);//获取行号
	var target = $('#dg').datagrid('getEditor', {'index':rowIndex,'field':'className'}).target;
	var ftarget = $('#dg').datagrid('getEditor', {'index':rowIndex,'field':'fieldType'}).target;
	
	var value=target.combobox('getValue');
	 for (var i = 0; i < chooseValues.length; i++) {
	        if (chooseValues[i].cValue == value) {
	        	ftarget.combobox('setValue',chooseValues[i].fValue);
	            break;
	        }
	 }
}

/**
 * 刷新模型和Java代码
 */
function regenModelDefAndJavaCode() {
	top.$.messager.confirm('确认','确定要刷新模型吗?',function(r){
		if (r) {
			$.post("${CONTEXT_PATH}/codegen/model/regenModelDefAndJavaCode?modelCode=${modelCode}", function(response){
				if (response.status<=0){
		            top.$.messager.alert('错误', response.message);
		        } else {
		        	top.$.messager.show({title:'消息', msg:response.message});
		        	$('#dg').datagrid('reload');
		        }
			});
		}
	});
}

/**
 * 同步该表到真实数据库
 */
function updatedatabase(modelCode){
	//ajax
	$.post('${CONTEXT_PATH}/codegen/model/baseupdatetable', {modelCode: modelCode}, function(response){
		if(response.status){
			alert(response.message);
		}
	});
}

function boolformat(value, row, index) {
	if(value==true){
		 return "<input type='checkbox' value='true' checked='checked' disabled=true/>"; 
	}else{
		return "<input type='checkbox' value='false' disabled=true />"; 
	}
	
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
<table id="dg" title="${modelCode} 模型字段定义" class="easyui-datagrid"
         toolbar="#toolbar" 
         pagination="true" 
         idField="id"
         rownumbers="true" 
         fitColumns="true" 
         singleSelect="true">
     <thead>
         <tr>
             <th field="fieldCode" 
             	 width="50"
             	 editor="{type:'textbox',options:{required:true}}"
             	 >字段代码</th>
             <th field="fieldName" 
             	 width="50"
             	 editor="{type:'textbox',options:{required:false}}"
             	 >字段名称</th>
             <th field="fieldType" 
             	 width="50" 
             	 editor="{type:'combobox',options:{data:chooseValues,valueField:'fValue',textField:'fValue',panelHeight:'auto',onSelect:fieldTypeChange,required:true}}"
             	 >统一数据类型</th>
             <th field="className" 
             	 width="50"
             	 editor="{type:'combobox',options:{data:classNameValues,valueField:'cValue',textField:'cValue',panelHeight:'auto',onSelect:classNameChange,required:true}}"
             	 >Java映射类型</th>
             <th field="notNull" 
             	 width="25"
             	 data-options="formatter:boolformat"
             	 editor="{type:'checkbox',options:{on: 'true',off: 'false'}}"
             	 >非空</th>
             <th field="pk" 
             	 width="25" 
             	 data-options="formatter:boolformat"
             	 editor="{type:'checkbox',options:{on: 'true',off: 'false'}}"
             	 >主键</th>
             <th field="attributes" 
             	 width="100"
             	 editor="{type:'textbox',options:{required:false}}"
             	 >属性</th>
         </tr>
     </thead>
</table>
</body>
<div id="toolbar"> 
 	 <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="false" onclick="jvascript:$('#dg').edatagrid('reload')">刷新页面</a>  --> 
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="jvascript:addrow()">新增字段</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="jvascript:$('#dg').edatagrid('destroyRow')">删除字段</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-database-export" plain="true" onclick="regenModelDefAndJavaCode()">根据物理表刷新模型</a>
     <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="false" onclick="jvascript:$('#dg').edatagrid('saveRow')">保存行</a>
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="false" onclick="jvascript:$('#dg').edatagrid('cancelRow')">撤销行</a> -->
     <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="false" onclick="jvascript:updatedatabase('${modelCode}')">同步该表到数据库</a>
     <lable style="color:red">&nbsp&nbsp&nbsp注&nbsp意：同步后重新生成表，表中的数据将尽可能保留（含重要数据请先备份）！！！</lable> -->
     <!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="true" onclick="jvascript:addModelField()">新增</a>  
     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="jvascript:editModelField()">修改</a> -->
</div>
</html>  