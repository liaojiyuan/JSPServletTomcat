<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>会员注册页面</title>
  </head>
  
  <body>
       <center>注册会员信息<br/>
       		<form action="<%=request.getContextPath()%>/register.htm" method="post">
       		    <table border="1">
	   		         <tr>
	   		             <td>登录名：</td>
	   		             <td><input name="username"/></td>
	   		         </tr>
	   		         <tr>
	   		             <td>密码：</td>
	   		             <td><input name="passwd" type="password"/></td>
	   		         </tr>
	   		         <tr>
	   		             <td>密码确认：</td>
	   		             <td><input name="confirdPasswd" type="password"/></td>
	   		         </tr>
	   		         <tr>
	   		             <td>邮箱地址：</td>
	   		             <td><input name="email"/></td>
	   		         </tr>
	   		         <tr align="center">
	   		             <td colspan="2"><input type="submit" value="提交"/></td>
	   		         </tr>
       		    </table>
       		</form>
       </center>
  </body>
</html>
