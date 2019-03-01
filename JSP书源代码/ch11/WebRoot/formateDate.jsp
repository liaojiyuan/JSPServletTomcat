<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>&lt;fmt:formateDate&gt;标签使用例子</title>
	</head>

	<body>
		<h3>Number 格式化:</h3>
		<c:set var="nowdate" value="<%=new java.util.Date()%>" />

		<p>
			格式化 Date (1):
			<fmt:formatDate type="time" value="${nowdate}" />
		</p>
		<p>
			格式化 Date (2):
			<fmt:formatDate type="date" value="${nowdate}" />
		</p>
		<p>
			格式化 Date (3):
			<fmt:formatDate type="both" value="${nowdate}" />
		</p>
		<p>
			格式化 Date (4):
			<fmt:formatDate type="both" dateStyle="short" timeStyle="short"
				value="${nowdate}" />
		</p>
		<p>
			格式化 Date (5):
			<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"
				value="${nowdate}" />
		</p>
		<p>
			格式化 Date (6):
			<fmt:formatDate type="both" dateStyle="long" timeStyle="long"
				value="${nowdate}" />
		</p>
		<p>
			格式化 Date (7):
			<fmt:formatDate pattern="yyyy-MM-dd" value="${nowdate}" />
		</p>
		<p>
			格式化 Date (8):
			<fmt:formatDate pattern="yyyyMMddmmssz" value="${nowdate}" />
		</p>
		<p>
			格式化 Date (9):
			<fmt:formatDate pattern="yyyy.MM.dd G 'at' HH:mm" value="${nowdate}" />
		</p>
		
		<fmt:parseDate dateStyle="" parseLocale="" pattern="" 
		     scope="" timeStyle="" timeZone="" type=""
		     value="" var=""/>
	</body>
</html>