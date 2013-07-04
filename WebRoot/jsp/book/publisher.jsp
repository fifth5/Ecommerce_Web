<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/demo/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<title>publisher</title>
</head>
<body>
	<table id="dg" title="Publisher" class="easyui-datagrid" url="loadPublisher"
		toolbar="#toolbar" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th data-options="field:'publisherId',hidden:true" />
				<th field="publisherName" width="20">Publisher Name</th>
				<th field="publisherInfo" width="70">Publisher Infomation</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newPublisher()">New Publisher</a> 
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editPublisher()">Edit Publisher</a> 
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyPublisher()">Remove Publisher</a>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width: 450px; height: 280px; padding: 10px 10px" closed="true" buttons="#dlg-buttons">
		<div class="ftitle">Publisher Information</div>
		<form id="publisherForm" method="post" novalidate>
			<table>
				<tr>
					<td>Publisher Name:</td>
					<td><input type="text" name="publisherName" class="easyui-validatebox" required="true"></td>
				</tr>
				<tr>
					<td>Publisher Information:</td>
					<td><textarea name="publisherInfo" /></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="savePublisher()">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
</body>
</html>