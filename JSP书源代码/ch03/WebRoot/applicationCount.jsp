<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    Integer count =(Integer) application.getAttribute("count");
    if(count==null){
    	count=1;
    }else{
        count++;
    }
    application.setAttribute("count",count);
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网站计数器</title>
  </head>
  <body>
      欢迎访问本网站，您是第<%=count %>位访问客户！
  </body>
</html>
