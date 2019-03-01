<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>EL标签访问示例</title>
  </head>
  <body>
      <%
         pageContext.setAttribute("name","Smith");
         request.setAttribute("age",20);
         session.setAttribute("address","china");
         application.setAttribute("sex","male");
       %>
  <center><h3>访问演示</h3></center>
  <table border="1" width="100%">
   <tr>
      <td align="center">姓名</td>
      <td align="center">年龄</td>
      <td align="center">性别</td>
      <td align="center">地址</td>
   </tr>
   <!--范围.参数名称 -->
   <tr>
     <td align="center">${pageScope.name}</td>
      <td align="center">${requestScope.age}</td>
      <td align="center">${sessionScope.address}</td>
      <td align="center">${applicationScope.sex}</td>
   </tr>
   <!-- 直接写参数名称 -->
   <tr>
     <td align="center">${name}</td>
      <td align="center">${age}</td>
      <td align="center">${address}</td>
      <td align="center">${sex}</td>
   </tr>
   </table>
  </body>
</html>
