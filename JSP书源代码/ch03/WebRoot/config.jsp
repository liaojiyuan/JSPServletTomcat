<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>演示config对象</title>
  </head>
  
  <body>
     <%
         String url = config.getInitParameter("url");
         String str = config.toString();
         out.print("page对象的initParameter方法："+url+"</br>");
         out.print("page对象的toString方法："+str);
      %>
  </body>
</html>
