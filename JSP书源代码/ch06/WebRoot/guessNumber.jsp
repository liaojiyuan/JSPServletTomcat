<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>在线猜数字</title>
  </head>
  <%
     String flag = request.getParameter("flag");
     String message="";
     if(flag!=null&&"larger".equals(flag)){
     	message="太大了";
     }else if(flag!=null&&"lessner".equals(flag)){
     	message="太小了";
     }else if(flag!=null&&"success".equals(flag)){
     	message="您猜对了";
     }
   %>
  <body>
       <form action="<%=path %>/servlet/Guess" method="post">
           <span>请输入您猜得数字：</span>
           <input name="guessNumber" size=""10/>
           <span style="color: red"><%=message %></span>
           <input type="submit" value="提交" />
       </form>
  </body>
</html>
