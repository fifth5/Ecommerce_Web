<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Demo</title>
</head>
<body>

<form action="#" method="post">
	<table>
		<tr>
			<td>demoId</td>
			<td>name</td>
			<td>description</td>
			<td>date</td>
		</tr>
		<s:iterator id="demo" value="demoList">
		<tr>
			<td><s:property value="demoId"/></td>
			<td><s:property value="name"/></td>
			<td><s:property value="description"/></td>
			<td><s:property value="date"/></td>
		</tr>
		</s:iterator>
	</table>
</form>

</body>
</html>