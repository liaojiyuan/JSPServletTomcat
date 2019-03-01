<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;fmt:bundle&gt;标签使用例子</title>
  </head>
  
  <body>
		<c:out value="读取资源文件(myresource.properties)" />
		<br>
		<fmt:bundle basename="myresource"  prefix="my.">
			<fmt:message key="author" var="author" />
			<fmt:message key="teacher" var="teacher" />
		</fmt:bundle>
		作者:<c:out value="${author}" /><br/>
		老师：<c:out value="${teacher}" />
		<br>
	</body>
</html>