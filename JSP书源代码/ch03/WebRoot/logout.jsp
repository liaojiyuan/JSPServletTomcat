<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
   String username = (String)session.getAttribute("username");
   session.removeAttribute("John");
   session.invalidate();
   response.sendRedirect("login.jsp");
   
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'logout.jsp' starting page</title>
  </head>
  <body>
  </body>
</html>
