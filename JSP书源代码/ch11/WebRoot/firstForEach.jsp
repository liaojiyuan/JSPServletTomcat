<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:forEach&gt;标签使用例子</title>
  </head>
  
  <body>
      <center>
                             输出3到12中的奇偶数。<br/>
           <c:forEach begin="3" end="12" step="1" var="num" varStatus="currentStatus">
                <c:if test="${num%2==0}">
                                                    输出数   <c:out value="${num}"/>为偶数&nbsp;&nbsp;
                </c:if>
                <c:if test="${num%2!=0}">
                                                    输出数   <c:out value="${num}"/>为奇数&nbsp;&nbsp;
                </c:if>
                	当前共计迭代数为：<c:out value="${currentStatus.count}"/>
                <br/>
           </c:forEach>
      </center>
  </body>
</html>
