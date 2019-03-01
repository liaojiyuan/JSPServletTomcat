<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>演示out对象</title>
  </head>
  
  <body>
     <center>
         <hr>
         <h4>以下就是一个表格</h4>
         <%
         	out.println("<table border='2'>");
         	out.println("<tr>");
         	out.println("<td width='60'>"+"姓名"+"</td>");
         	out.println("<td width='40'>"+"性别"+"</td>");
         	out.println("<td width='80'>"+"出生年月"+"</td>");
         	out.println("<td width='60'>"+"城市"+"</td>");
         	out.println("</tr>");
         	out.println("<tr>");
         	out.println("<td width='60'>"+"Smith"+"</td>");
         	out.println("<td width='60'>"+"Male"+"</td>");
         	out.println("<td width='60'>"+"1984.8"+"</td>");
         	out.println("<td width='60'>"+"NerYork"+"</td>");
         	out.println("</tr>");
         	out.println("</table>");
          %>
     </center>
  </body>
</html>
