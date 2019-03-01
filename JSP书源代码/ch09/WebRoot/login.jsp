<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.eshore.pojo.User" scope="session"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录</title>
  </head>
  
  <body>
  	   <p>用户登录</p>
  	   <!-- 用form表单提交，用户名跟密码 -->
  	   <form action="check.jsp" method="post">
  	        <table border="1" width="250px;">
  	           <tr>
  	               <td width="75px;">用户名：</td>
  	               <td ><input name="username" value="<jsp:getProperty name="user" property="username"/>"/>
  	               <!-- 用户错误信息 -->
  	               <span style="color:red"><%=user.getErrors("username") %></span><br/></td>
  	           </tr>
  	           <tr>
  	               <td width="75px;">密&nbsp;&nbsp;码：</td>
  	               <td ><input type="password" name="passwd" value="<jsp:getProperty name="user" property="passwd"/>"/>
  	               <!-- 密码错误信息 -->
  	               <span style="color:red"><%=user.getErrors("passwd") %></span><br/></td>
  	           </tr>
  	           <tr>
  	               <td colspan="2">
  	                   <input type="submit" value="提交"/>&nbsp;&nbsp;
  	                   <input type="reset" value="重置"/>
  	               </td>
  	           </tr>
  	        </table>
  	   </form>
  </body>
</html>
