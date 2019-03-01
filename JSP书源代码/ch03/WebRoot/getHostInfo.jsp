<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>'getHostInfo.jsp'</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body >
       <p>
			本地机器IP：<%=request.getLocalAddr() %><br>
			本地机器名称：<%=request.getLocalName() %><br>
			本地机器端口：<%=request.getLocalPort() %><br>
		</p>
		<p>
			客户主机IP：<%=request.getRemoteAddr() %><br>
			客户主机名称：<%=request.getRemoteHost() %><br>
			客户主机端口：<%=request.getRemotePort()%><br>
		</p>
		<p>
			服务器IP：<%=request.getServerName() %><br>
			服务器端口：<%=request.getServerPort() %><br>
		</p>
	</body>
</html>


