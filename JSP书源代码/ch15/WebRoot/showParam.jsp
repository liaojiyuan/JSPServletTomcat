<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@page import="java.util.Date" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <title>显示带参数的资源</title>
  </head>
  
    <body> 
                     带参数的资源示例<br/> 
        <fmt:bundle basename="param">  
        <c:set var="todayT" value="<%=new Date()%>"/>
		<fmt:message key="message">  
		    <!-- 输出地址 -->
			<fmt:param value="${pageContext.request.remoteAddr }" />  
			<!-- 输出Locale -->
			<fmt:param value="${pageContext.request.locale }" />
			<!-- 输出浏览器显示语言 -->  
			<fmt:param value="${pageContext.request.locale.displayLanguage }" />
			<!-- 输出日期 --> 
			<fmt:param value="${todayT}" />  
		</fmt:message>  
        </fmt:bundle> 
    </body>  
</html> 
