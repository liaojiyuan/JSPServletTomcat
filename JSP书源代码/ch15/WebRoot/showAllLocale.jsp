<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@page import="java.util.Locale" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <title>资源国际化显示所有的Locale代码</title>
  </head>
  <%
     Locale[] availableLocales = Locale.getAvailableLocales(); 
     request.setAttribute("availableLocales",availableLocales);  
  %>
    <body>  
         <table border="1" width="100%" cellpadding="2" cellspacing="1">
             <tr>
				<td>名称</td>
				<td>国家</td>
				<td>国家名称</td>
				<td>语言</td>
				<td>语言名称</td>
				<td>别名</td>
			</tr>
			<c:forEach items="${availableLocales}" var="locale">
			   <tr>
			      <td>${locale.displayName}</td>
			      <td>${locale.country}</td>
			      <td>${locale.displayCountry}</td>
			      <td>${locale.language}</td>
			      <td>${locale.displayLanguage}</td>
			      <td>${locale.variant}</td>
			   </tr>
			</c:forEach>
         </table>
    </body>  
</html> 
