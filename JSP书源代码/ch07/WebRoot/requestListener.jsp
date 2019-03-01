<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>使用RequestListener监听器</title>
  </head>
  
  <body>
                使用RequestListener监听器<br/>
       <c:set value="zhangsan" var="username" scope="request"/>
       姓名为：<c:out value="${requestScope.username}"/>
     <c:remove var="username" scope="request"/>                
  </body>
</html>
