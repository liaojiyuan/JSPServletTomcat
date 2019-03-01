<%@ page language="java" contentType="text/html; charset=UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@page import="java.util.*"%>  
<%  
    request.setAttribute("availableLocales", Locale.getAvailableLocales());  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <title>显示所有的日期格式</title>
  </head>
    <body>
		<table border="1" width="100%" cellpadding="2" cellspacing="1">
			<tr>
				<td>Locale码</td>
				<td>语言</td>
				<td>日期时间</td>
				<td>数字</td>
				<td>货币</td>
				<td>百分比</td>
			</tr>
			<c:set var="date" value="<%=new Date()%>"/>
			<c:forEach var="locale" items="${availableLocales}">
				<fmt:setLocale value="${ locale }" />
				<tr>
					<td align="left">
						${ locale.displayName }
					</td>
					<td align="left">
						${ locale.displayLanguage }
					</td>
					<td>
						<fmt:formatDate value="${date}" type="both" />
					</td>
					<td>
						<fmt:formatNumber value="100000.5" />
					</td>
					<td>
						<fmt:formatNumber value="100000.5" type="currency" />
					</td>
					<td>
						<fmt:formatNumber value="100000.5" type="percent" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>  
</html> 
