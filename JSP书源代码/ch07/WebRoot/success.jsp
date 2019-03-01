<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录成功界面</title>
  </head>
  <body>
       <h3>目前在线人数为：${sessionScope.count}</h3>
       <h4>欢迎您：${sessionScope.user}</h4>
       <a href="<%=path%>/logout.do?userId=${sessionScope.user}">注销</a>
  </body>
</html>
