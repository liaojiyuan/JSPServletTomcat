<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>'getHeaders.jsp'</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body >
	       <%
	       	  Enumeration<String> enumeration = request.getHeaderNames();
	       	  while(enumeration.hasMoreElements()){
	       	      String name = enumeration.nextElement();
	       	      String value = request.getHeader(name);
	       	      if(value==null||"".equals(value)){
	       	      	  value="空字符串";
	       	      }
	        %>
	            <p>表头名称：<%=name %>&nbsp;&nbsp;对应的值：<%=value %></p>
	         <%} %>
  </body>
</html>