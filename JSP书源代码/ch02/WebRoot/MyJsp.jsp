<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
 <head>
   <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
  <title>JSP注释例子</title>
</head>
	  
	  <body>
    <!-- 该JSP注释可以在浏览器文件中看到 -->
	    <br/>
		<center>
			<table>
				<tr>
					<th>
						<b>JSP注释</b>
					</th>
				</tr>
			</table>
		</center>
		<table>
			<tr>
				<th>
					<b>JSP注释</b>
				</th>
			</tr>
		</table>
		<table align="right">
			<tr>
				<th>
					<b>JSP注释</b>
				</th>
			</tr>
		</table>
		<%--该JSP注释无法在浏览器中看到 --%>
	    <%
	    	//  这是脚本中的Java注释○1
	    	/*
	    	这也是脚本中的Java注释
	    	 */
	    %>
	  </body>
	</html>

