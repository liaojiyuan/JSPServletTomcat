<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录</title>
  </head>
  
  <body>
  	   <p>用户登录</p>
  	   <form action="<%=path%>/servlet/CheckUser" method="post">
  	        <table border="1" width="250px;">
  	           <tr>
  	               <td width="75px;">用户名：</td>
  	               <td ><input name="userId"/></td>
  	           </tr>
  	           <tr>
  	               <td width="75px;">密&nbsp;&nbsp;码：</td>
  	               <td ><input name="passwd" type="password"/></td>
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
