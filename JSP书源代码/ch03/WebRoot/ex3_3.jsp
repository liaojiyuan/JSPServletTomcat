<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'ex3_2.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  </head>
  <body>
  <%
         String sessionID = session.getId();
         String name = (String)session.getAttribute("name");//强制转为String类型
         long time = session.getCreationTime();
         Date date = new Date(time);
   %>
   <center>
   		<p>您访问的是ex3_3.jsp页面</br>
   		   <%=name %>,您的session对象ID为：</br>
   		   <%=sessionID%></br>
   		   session对象创建时间：<%=date %>
   		   </br>
   		</p>
   		<a href="ex3_2.jsp"><%=name %>,欢迎到ex3_2.jsp页面</a></br>
   		<a href="../ch03_2/ex3_4.jsp"><%=name %>,欢迎到ex3_4.jsp页面</a>
   </center>
  </body>
</html>
