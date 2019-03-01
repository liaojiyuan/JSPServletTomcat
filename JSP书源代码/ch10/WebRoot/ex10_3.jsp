<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.eshore.pojo.Users" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>EL标签访问Java Bean示例</title>
  </head>
  <body>
      <%
         Users user = new Users();
         user.setAddress("中国");
         user.setAge(20);
         user.setName("王五");
         user.setAddaa_re("sadfa");
         request.setAttribute("user",user);
       %>
    用户信息：${user }<br/>
    用户年龄：${user.age } ，用户姓名：${user.addaa_re}
  </body>
</html>
