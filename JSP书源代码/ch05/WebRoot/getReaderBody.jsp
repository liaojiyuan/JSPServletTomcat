<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>获取body内容</title>
  </head>
  
  <body>
       <form action="<%=request.getContextPath()%>/servlet/GetReaderBody" method="POST">
       		用户名：<input name="username"/><br/>
       		密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="password" type="password"/><br/>
       		<input type="submit" name="user_submit" value="提交" />
       </form>
  </body>
</html>
