<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:url&gt;标签使用例子</title>
  </head>
  
  <body>
       <c:url value="author.jsp" scope="session" var="authorURL">
           <c:param name="authorname" value="林龙"></c:param>
       </c:url>
       生成的URL为：
       <c:out value="${authorURL}"/>
  </body>
</html>