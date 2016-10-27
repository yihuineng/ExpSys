<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<title>选择用户</title>
<#include "*/common/resources.inc.ftl">
<script type="text/javascript">
function treeGroupClickHandler(node) {
		$.post("${CONTEXT_PATH}/platform/user/getUserByGroupcode?groupcode="+node.groupCode, function(response){
			var obj =response.rows;
			if(obj)
			{
				var selectA = document.getElementById('a');
				while(selectA.options.length>0)
				{
					selectA.removeChild(selectA.options[0]);
				}
				for(var i=0;i<obj.length;i++)
				{
					var objO=new Option((obj[i]).realName,(obj[i]).userCode)
                	selectA.add(objO);
				}
			}
			});
			}
			
	 function Add(objA,objB)
        {
            var tem=new Array();
            var tem2=new Array();
            var y=0;
            with(objA)
            for(i=length-1;i>=0;i--)
                if(options[i].selected){tem[tem.length]=new Option(options[i].text,options[i].value);}
            for(var x=0;x<tem.length;x++)
            {
            	var addState=true;
            	for(var i=0;i<objB.options.length;i++)
	            {
	            	if(tem[x].value==objB.options[i].value)
	            	{
	            		addState=false;
	            		break;
	            	}
	            }
	            if(addState)
	            {
	            	
	            	tem2[y]=new Option(tem[x].text,tem[x].value)
	            	if(checkUserDate(tem2[y].text)){
	            		objB.add(tem2[y]);
            		}
	            }
            }
        }
        
        
          function AddAll(objA,objB)
        {
            var tem=new Array();
            with(objA)
            for(i=length-1;i>=0;i--){
                var nohave=true;
                for(var j=0;j<objB.options.length;j++){
                    if(objA.options[i].value==objB.options[j].value){
                    nohave=false;
                    }
                }
              if(nohave){
               tem[tem.length]=new Option(options[i].text,options[i].value);
               }
             }
            for(var x=0;x<tem.length;x++)
            {
	            if(checkUserDate(tem[x].text)){
	            	objB.add(tem[x]);
	            }
            }
        }
         function deleteAll(objA,objB)
        { 
            var tem=new Array();
            with(objA)
            for(i=length-1;i>=0;i--){
                for(var j=0;j<objB.options.length;j++){
                    if(objA.options[i].value==objB.options[j].value){
                        tem[tem.length]=objB.options[j];
                         
                    }
                }
               
             }
           for(var x=0;x<tem.length;x++)
            {
	           	  objB.removeChild(tem[x]);
            }
        }
        function sortArr(a,b)
        {
            if(a.text>b.text)return 1;
            if(a.text<b.text)return -1;
            return 0;
        }
        //    
        
        //
        function up(obj)
        {        
            var objO = new Option(obj.options[obj.selectedIndex].text,obj.options[obj.selectedIndex].value);    
            
            var selectedIndex = obj.selectedIndex;
            if(selectedIndex>0)
            {                
                obj.options[selectedIndex].text = obj.options[selectedIndex-1].text;
                obj.options[selectedIndex].value = obj.options[selectedIndex-1].value;
                
                obj.options[selectedIndex-1].text = objO.text;
                obj.options[selectedIndex-1].value = objO.value;
                
                obj.selectedIndex = selectedIndex-1;        
            }
        }
        //
        
        //
        function down(obj)
        {        
            var objO = new Option(obj.options[obj.selectedIndex].text,obj.options[obj.selectedIndex].value);    
            
            var selectedIndex = obj.selectedIndex;
            if(selectedIndex<obj.options.length-1)
            {                
                obj.options[selectedIndex].text = obj.options[selectedIndex+1].text;
                obj.options[selectedIndex].value = obj.options[selectedIndex+1].value;
                
                obj.options[selectedIndex+1].text = objO.text;
                obj.options[selectedIndex+1].value = objO.value;
                
                obj.selectedIndex = selectedIndex+1;
            }
        }
        //
        
        // 双击时添加到b
        function dba(objA,objB)
        {            
            var objO=new Option(objA.options[objA.selectedIndex].text,objA.options[objA.selectedIndex].value)
           		var addState=true;
            	for(var i=0;i<objB.options.length;i++)
	            {
	            	if(objO.value==objB.options[i].value)
	            	{
	            		addState=false;
	            		break;
	            	}
	            }
	            if(addState)
	            {
	            	if(checkUserDate(objO.text)){
	            		objB.add(objO);
	            	}
	            	
	            }
	            
            
        }
        //
        // 双击时删除b
        function dbb(obj)
        {
            obj.removeChild(obj.options[obj.selectedIndex]);
        }
        //
        
        // 删除b中选中的项
        function del(obj)
        {        
            for(var i=obj.options.length-1;i>=0;i--)
            {
                if(obj.options[i].selected)
                {
                    obj.removeChild(obj.options[i]);
                }
            }            
        }
        
 function checkUserDate(userName){
        	var flag = false;
        	if('${setState!}' == 'hytz'){
        		var dateA = '${dateA!}';
        		var dateB = '${dateB!}';
        		var jobid = '${jobid!}';
        		var xmlHttpRequest = null;
        		if(window.ActiveXObject){
        			xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
        		} else if(window.XMLHttpRequest){
        			xmlHttpRequest = new XMLHttpRequest();
        		}
        		if(null != xmlHttpRequest){
        			xmlHttpRequest.open("post", "/wstoa/wstoa/swHYTZcheckUserDate.jsp?rand="+Math.random(), false);
        			xmlHttpRequest.onreadystatechange = function ajaxCallback(){
        				if(xmlHttpRequest.readyState == 4){
        					if(xmlHttpRequest.status == 200){
								var responseText = xmlHttpRequest.responseText;
								responseText = responseText.replace(/(^\s*)|(^\n)/g, "");
								//console.log(responseText);
								if(responseText == "success"){
									flag = true;
								}else {
									alert(responseText+"有会议冲突");
									flag = false;
								}
							}
        				}
        			};
        			xmlHttpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded');  //设置请求头
					xmlHttpRequest.send("dateA="+dateA+"&dateB="+dateB+"&jobid="+jobid+"&userName="+userName); 
        		}
        		
        	}else {
        		flag =  true;
        	}
        	return flag;
        }
   function getvalue(obj)
        {
            var strText="";
            var strValue="";
            for(var i=0;i<obj.options.length;i++)
            {
                if(strText.length>0)
                {
                    strText = strText + "," + obj.options[i].text;
                    strValue = strValue + "," + obj.options[i].value;
                }
                else
                {
                    strText = obj.options[i].text;
                    strValue = obj.options[i].value;
                }
            }
            alert(strText);
            alert(strValue);
        }      
</script>
 </head>
  <body>
 <div class="easyui-layout" data-options="fit:true,border:0"> 
 	
 	<!-- 区域：左侧组织树 -->
    <div data-options="region:'west',title:'组织',split:true,collapsible:false,border:0,headerCls:'border-right',bodyCls:'border-right'" style="width:230px;min-width:180px;max-width:380px">
		<ul id="treeGroup" class="easyui-tree" url="${CONTEXT_PATH}/platform/group/treeGroup" data-options="onClick:treeGroupClickHandler"></ul>
    </div>
     
            <div data-options="region:'center',title:'用户选择',border:0">
    	<div class="easyui-layout" data-options="fit:true,border:0">  
				    	<table cellspacing="0" cellpadding="0" width="100%" border="0" height="100%">
							        
							        <tr>
							            <td width="45%" align="center" valign="middle">
							                <select style="width: 180px" multiple size="22" name="a" id="a" ondblclick="dba(this,document.getElementById('b'))">
							                </select>
							            </td>
							            <td align="center">
							                <input onClick="Add(document.getElementById('a'),document.getElementById('b'))" type="button"
							                    value="选择" style="width: 40px">
							                <br>
							                <input onClick="del(document.getElementById('b'))" type="button" value="删除" style="width: 40px">
							                <br>
							                <input onClick="AddAll(document.getElementById('a'),document.getElementById('b'))" type="button" value="全选" style="width: 40px">
							                <br>
							                <input onClick="deleteAll(document.getElementById('a'),document.getElementById('b'))" type="button" value="全不选" style="width: 40px">
							            </td>
							            <td width="45%" align="center">
							                <select style="width: 180px" multiple size="22" name="b" id="b" ondblclick="dbb(this)">
							                </select>
							            </td>
							        </tr>
							        <tr>
							        	<td height="35" align="center" colspan="3"><input onClick="javascript:getvalue(document.getElementById('b'))" type="button" value=" 确 定 " >
							        	</td>      
							        </tr>
							    </table>
       				 </div>
            
    </div>  
</div> 
  </body>
 <script type="text/javascript">
  var userCodes='${userCodes!}'.split(',');
  var realNames ='${realNames!}'.split(',');
  var selectA = document.getElementById('b');
  if(userCodes!=''){
  for(var i=0;i<userCodes.length;i++)
  {
  	if(realNames[i])
  	{
  		var objO=new Option(realNames[i],userCodes[i])
    	selectA.add(objO);
    }
  }
  }
  </script>
</html>
