<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>&lt;fmt:setTimeZone&gt;标签使用例子</title>
	</head>

	<body>
	   <h3>fmt:setTimeZone使用例子:</h3>
		<c:set var="nowdateTime" value="<%=new java.util.Date()%>" />
		<p>当前日期时区: <fmt:formatDate value="${nowdateTime}" 
		             type="both" timeStyle="long" dateStyle="long" /></p>
		<p>改变为GMT-8时区</p>
		<fmt:setTimeZone value="GMT-8" />
		<p>日期改变后的时区: <fmt:formatDate value="${nowdateTime}" 
		             type="both" timeStyle="long" dateStyle="long" /></p>
	</body>
</html>