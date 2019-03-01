<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>淘淘网—开心淘</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>

	<body>
		<div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%
				if (session.getAttribute("uname") == null
						|| session.getAttribute("uname").equals("")) {
			%>
			您好，欢迎来淘淘网！
			<a href="login.jsp">[请登录]</a>
			<a href="register.jsp">[免费注册]</a>
			<%
				} else {
			%>
			您好
			<a href="shoppingcart?action=lookbus"> <font><%=session.getAttribute("uname")%></font>
			</a>，欢迎来淘淘网！
			<a href="login?action=logout">[注销]</a>
			<%
				}
			%>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="index.jsp">我要买</a>
			<img src="image/buslogo.jpg" border="0"/>
			<a href="shoppingcart?action=lookbus">购物车</a>
			<img src="image/homelogo.jpg" border="0"/>
			<a href="shoppingcart?action=paid">已淘到的宝贝</a>
		</div>
	</body>
</html>
