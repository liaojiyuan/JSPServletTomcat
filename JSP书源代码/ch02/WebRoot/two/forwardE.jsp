<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String url = "";
	int random = (int)(Math.random()*10);//产生10以内的随机数
	int m = random%2;
	switch(m){
		case 0:
		    url = "even.jsp";
		    break;
		case 1:
		    url = "odd.jsp";
		    break;
	}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'forwardE.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
      <jsp:forward page="<%=url %>"/>
  </body>
</html>
