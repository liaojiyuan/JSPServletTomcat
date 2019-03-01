<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>&lt;fmt:parseDate&gt;标签使用例子</title>
	</head>

	<body>
		<h3>Number 解析:</h3>
		<c:set var="nowdate" value="<%=new java.util.Date()%>" />
		<p>
			解析字符串"2014.02.10 公元 at 20:10":
			 <fmt:parseDate value="2014.02.10 公元 at 20:10" pattern="yyyy.MM.dd G 'at' HH:mm"/>
		</p>
		<p>
			解析字符串"201402101020CST":
			 <fmt:parseDate value="201402101020CST" pattern="yyyyMMddmmssz"/>
		</p>
		<p>
			解析字符串"2014年2月10日 下午08时10分20秒":
			 <fmt:parseDate value="2014年2月10日 下午08时10分20秒" type="both" dateStyle="long" timeStyle="long"/>
		</p>
		<fmt:setTimeZone value="" scope="" var=""/>
	</body>
</html>