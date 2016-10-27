<input id="roleId" type="hidden" value="${id!}" />
<input id="roleCode" type="hidden" value="${roleCode!}" />
<input id="authzCodes" type="hidden" value="${authzCodes!}" />
<table class="table-detail" height="100%">
	<tr>
		<th>角色代码：</th>
		<td>${roleCode!}</td>
		<th>角色名称：</th>
		<td>${roleName!}</td>
	</tr>
	<tr>
		<th>备注：</th>
		<td colspan="3">${memo!}</td>
	</tr>
</table>