<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎页面</title>
  </head>
  <%
     String user = (String)session.getAttribute("user");
     if(user==null){
   %>
   <jsp:forward page="login.jsp"/>
   <%} %>
   <body>
      <a href="<%=response.encodeURL("login.jsp?username=john") %>"></a>
      欢迎您：<%=user%>。
  </body>
</html>
