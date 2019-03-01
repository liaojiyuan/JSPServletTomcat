<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>'getParameter.jsp'</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body >
      <center>
	       <%
	          String name= new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	          String city= new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
	          if(name!=null&&city!=null)
	          {
	        %>
	          <p>Welcome <%=name %>,您所在的城市是<%=city %></p>
	         <%
	           }else{
	          %>
	          <p>欢迎访问本页面！</p>
	          <%
	            }
	           %>
      </center>
  </body>
</html>