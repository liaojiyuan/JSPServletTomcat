<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>演示out对象clear方法</title>
  </head>
  
  <body>
     <h4>这是HTML中的内容</h4>
     <%
        out.print("<h4>这是out对象输出的信息</h4>");
        out.clear();
      %>
      <center><h4>这是HTML中的信息</h4></center>
  </body>
</html>
