<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>显示全球时间</title>
	</head>
	<%
		Map<String, TimeZone> hashMap = new HashMap<String, TimeZone>();
		for (String id : TimeZone.getAvailableIDs()) { // 所有可用的TimeZone  
			hashMap.put(id, TimeZone.getTimeZone(id));  
		}
		request.setAttribute("timeZoneIds", TimeZone.getAvailableIDs());
		request.setAttribute("timeZone", hashMap); 
		request.setAttribute("date",new Date());//当前时间
	%>
	<body>
		<fmt:setLocale value="zh_CN" />
		现在时刻：<%=TimeZone.getDefault().getDisplayName()%> 
		<fmt:formatDate value="${date}" type="both" />
		<br />
		<table border="1">
			<tr>
				<td>时区ID</td>
				<td>时区</td>
				<td>现在时间</td>
				<td>时差间隔</td>
			</tr>
			<c:forEach var="id" items="${ timeZoneIds }" varStatus="status">
				<tr>
					<td>${id}</td>
					<td>${timeZone[id].displayName}</td>
					<td>
					   <!-- 用fmt标签格式化日期输出 -->
						<fmt:timeZone value="${id}">
							<fmt:formatDate value="${date}" type="both" timeZone="${id}" />
						</fmt:timeZone>
					</td>
					<td>
						${ timeZone[id].rawOffset / 60 / 60 / 1000 }
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>
