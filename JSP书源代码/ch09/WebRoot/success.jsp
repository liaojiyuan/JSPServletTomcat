<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.eshore.pojo.User" scope="session"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录成功</title>
  </head>
  
  <body>
      <center>
      	<h4>欢迎您：
	         <SPAN style="color: red">
	         	<jsp:getProperty property="username" name="user"/>
	         </SPAN>用户！
         </h4>
      </center>
  </body>
</html>
