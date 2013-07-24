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
<title>author</title>
</head>
<body>
	<table id="dgAuthor" title="Author" class="easyui-datagrid" url="loadAuthor"
		toolbar="#toolbarAuthor" pagination="true" rownumbers="true"
		fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th data-options="field:'authorId',hidden:true" />
				<th field="authorName" width="20">Author Name</th>
				<th field="authorInfo" width="70">Author Infomation</th>
				<th field="authorNation" width="70">Nation</th>
			</tr>
		</thead>
	</table>
	<div id="toolbarAuthor">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newAuthor()">New Author</a> 
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editAuthor()">Edit Author</a> 
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyAuthor()">Remove Author</a>
	</div>
	
	<div id="dlgAuthor" class="easyui-dialog" style="width: 450px; height: 280px; padding: 10px 10px" closed="true" buttons="#dlgAuthor-buttons">
		<div class="ftitle">Author Information</div>
		<form id="authorForm" method="post" novalidate>
			<table>
				<tr>
					<td>Author Name:</td>
					<td><input type="text" name="authorName" class="easyui-validatebox" required="true"></td>
				</tr>
				<tr>
					<td>Nation:</td>
					<td><input type="text" name="authorNation" class="easyui-validatebox" required="true"></td>
				</tr>
				<tr>
					<td>Author Information:</td>
					<td><textarea name="authorInfo" /></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="dlgAuthor-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveAuthor()">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlgAuthor').dialog('close')">Cancel</a>
	</div>
</body>
</html>