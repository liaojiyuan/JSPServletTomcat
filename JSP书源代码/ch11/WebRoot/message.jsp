<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;fmt:message&gt;与&lt;fmt:param&gt;标签使用例子</title>
  </head>
  
  <body>
  <center>
  	    <c:set var="todayValue" value="<%=new Date() %>"></c:set>
		<c:out value="读取资源文件(myresource.properties)" />
		<br>
		动态提示消息：
		<fmt:bundle basename="myresource" >
			<fmt:message key="messageT" >
			    <fmt:param>linl</fmt:param>
			    <fmt:param value="${todayValue}"></fmt:param>
			</fmt:message>
		</fmt:bundle>
		<br>
  </center>
  </body>
</html>