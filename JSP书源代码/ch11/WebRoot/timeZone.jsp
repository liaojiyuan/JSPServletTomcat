<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>&lt;fmt:timeZone&gt;标签使用例子</title>
	</head>

	<body>
	   <h3>fmt:timeZone使用例子:</h3>
		<c:set var="now" value="<%=new java.util.Date()%>" />
    <table border="1" width="100%">
      <c:forEach var="zone"
      items="<%=java.util.TimeZone.getAvailableIDs()%>">
        <tr>
          <td width="51%">
            <c:out value="${zone}" />
          </td>
          <td width="49%">
            <fmt:timeZone value="${zone}">
              <fmt:formatDate value="${now}" timeZone="${zn}"
              type="both" />
            </fmt:timeZone>
          </td>
        </tr>
      </c:forEach>
    </table>

	</body>
</html>