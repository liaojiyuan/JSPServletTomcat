<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>演示page对象</title>
  </head>
  
  <body>
     <%
         int code = page.hashCode();//hashcode
         String str = page.toString();
         out.println("page对象的hash码:"+code+"&nbsp;&nbsp;</br>");
         out.println("page对象的值:"+str);
      %>
  </body>
</html>
