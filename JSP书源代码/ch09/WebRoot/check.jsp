<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.eshore.pojo.User" scope="session"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>验证用户</title>
  </head>
  
  <body>
    <!-- 
                    设置user属性，判断是否合法
        合法跳转成功，否则跳转到登录页面
     -->
     <jsp:setProperty property="*" name="user"/>
      <%
      	 if(user.isValidate()){
       %>
       <jsp:forward page="success.jsp"/>
       <%
         }else{
        %>
        <jsp:forward page="login.jsp"/>
        <%} %>
  </body>
</html>
