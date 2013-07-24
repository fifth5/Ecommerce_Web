<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/demo/demo.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/book/publisher.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/book/author.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/book/publisher.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/book/author.js"></script>
<title>home</title>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',split:true" style="height: 100px; background-image: url('../../images/logo.jpg');">
	</div>
	
	<div data-options="region:'west',split:true,collapsible:false" title="Category" style="width: 200px;">
		<%@ include file="/jsp/common/left.jsp"%>
	</div>
	
	<div data-options="region:'center'">
		<div id="mainTab" class="easyui-tabs" data-options="fit:true,border:false,plain:true">
			<div title="Welcome" style="padding: 5px">
			</div>
		</div>
	</div>
	
	<div data-options="region:'south',split:true" style="height: 50px;">
		<div align="center">
			<%@ include file="/jsp/common/foot.jsp"%>
		</div>
	</div>
</body>
</html>