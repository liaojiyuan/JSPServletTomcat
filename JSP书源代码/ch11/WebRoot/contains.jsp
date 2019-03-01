<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>fn:contains函数使用例子</title>
  </head>
  <body>
    <h3>fn:contains函数使用例子</h3>
    <c:set var="theString" value="This is a myTest String"/>
	<c:if test="${fn:contains(theString, 'Test')}">
	   <p>找到Test字符串<p>
	</c:if>
	
	<c:if test="${fn:contains(theString, 'TEST')}">
	   <p>找到TEST字符串<p>
	</c:if>
  </body>
</html>