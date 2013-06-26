<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../easyui/demo/demo.css">
<script type="text/javascript" src="../../script/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../../easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../script/index.js"></script>
<title>Insert title here</title>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',split:true" style="height: 100px; background-image: url('../../images/logo.jpg');">
	</div>
	
	<div data-options="region:'west',split:true,collapsible:false" title="Category" style="width: 200px;">
		<%@ include file="/jsp/common/left.jsp"%>
	</div>
	
	<div data-options="region:'center'">
		<div id="mainTab" class="easyui-tabs" data-options="fit:true,border:false,plain:true">
			
			<div title="DataGrid" style="padding: 5px">
				<table class="easyui-datagrid" data-options="url:'../../data/datagrid_data1.json',singleSelect:true,fit:true,fitColumns:true">
					<thead>
						<tr>
							<th data-options="field:'itemid'" width="80">Item ID</th>
							<th data-options="field:'productid'" width="100">Product ID</th>
							<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
							<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
							<th data-options="field:'attr1'" width="150">Attribute</th>
							<th data-options="field:'status',align:'center'" width="50">Status</th>
						</tr>
					</thead>
				</table>
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