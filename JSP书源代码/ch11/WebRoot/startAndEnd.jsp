<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>fn:startsWith()函数和fn:endsWith()使用例子</title>
  </head>
  <body>
    <h3>fn:startsWith()函数和fn:endsWith()使用例子</h3>
    <c:set var="startString" value="lin:This is a myTest String"/>
	<c:if test="${fn:startsWith(startString, 'lin')}">
	   <p>字符串以lin开始<p>
	</c:if>
	<c:if test="${fn:startsWith(startString, 'linlong')}">
	   <p>字符串以linlong开始<p>
	</c:if>
	
	<c:set var="endString" value="theFirst.txt"/>
	<c:if test="${fn:endsWith(endString, 'txt')}">
	   <p>该文件是txt文件<p>
	</c:if>
	<c:if test="${fn:endsWith(endString, 'log')}">
	   <p>该文件是log文件<p>
	</c:if>
  </body>
</html>