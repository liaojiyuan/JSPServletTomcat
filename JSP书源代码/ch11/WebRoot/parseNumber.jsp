<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>&lt;fmt:parseNumber&gt;标签使用例子</title>
	</head>

	<body>
		<h3>
			Number 解析:
		</h3>
		<c:set var="balance" value="1240003.350" />
		<fmt:parseNumber var="varname" type="number" value="${balance}" />
		<p>
			解析 Number (1) :
			<c:out value="${varname}" />
		</p>
		<fmt:parseNumber var="varname" integerOnly="true" type="number"
			value="${balance}" />
		<p>
			解析 Number (2) :
			<c:out value="${varname}" />
		</p>
		<fmt:formatDate value="" dateStyle="" pattern="" scope=""
		   timeStyle="" timeZone="" type="" var=""/>
	</body>
</html>