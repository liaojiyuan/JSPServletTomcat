<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>fn:split()函数和fn:join()函数使用例子</title>
  </head>
  <body>
    <h3>fn:split()函数和fn:join()函数使用例子</h3>
    <c:set var="testString1" value="This is the First my test String."/>
	<c:set var="testString2" value="${fn:split(testString1, ' ')}" />
	<c:set var="testString3" value="${fn:join(testString2, '-')}" />
	<p>字符串  : ${testString3}</p>
	
	<c:set var="testString4" value="${fn:split(testString3, '-')}" />
	<c:set var="testString5" value="${fn:join(testString4, ' ')}" />
	<p>字符串 : ${testString5}</p>
    <sql:setDataSource dataSource="" driver="" password="" scope=""
        url="" user="" var=""/>
    <sql:query var="varname" dataSource="dataSource" maxRows="maxRows" 
        scope="" sql="sqlQuery"
        startRow="startRow"/>
  </body>
</html>