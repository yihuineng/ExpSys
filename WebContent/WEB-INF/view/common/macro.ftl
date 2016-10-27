<#macro radio id data value="--UNSET--">
	<div class="option-group">
    <#list data.keySet() as key>
    	<input type="radio" id="${id}_${key}" name="${id}" value="${key}"<#if key==value> checked</#if>><label for="${id}_${key}">${data[key]}</label>
  	</#list>
  	</div>
</#macro>

<#macro newradio id data value="--UNSET--">
	<div class="option-group">
    <#list data.keySet() as key>
    	<input type="radio" onclick="show()" id="${id}_${key}" name="${id}" value="${key}"<#if key==value> checked</#if>><label for="${id}_${key}">${data[key]}</label>
  	</#list>
  	</div>
</#macro>

<#macro options data hasBlank=true blankText="" value="--UNSET--">
	<#if hasBlank>
		<option value="">${blankText}</option>
	</#if>
    <#list data.keySet() as key>
    	<option value="${key}"<#if key==value> selected</#if>>${data[key]}</option>
  	</#list>
</#macro>

<#macro dialog id title='对话框' buttons='' showFooter=true>
<div id="${id}" class="modal fade" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">${title}</h4>
			</div>
			<div class="modal-body">
				<#nested>
			</div>
			<#if showFooter>
				<div class="modal-footer">
					<#if buttons==''>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<#else>
						${buttons}
					</#if>
				</div>
			</#if>
		</div>
	</div>
</div>
</#macro> 