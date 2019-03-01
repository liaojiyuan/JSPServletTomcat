<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:forTokens&gt;标签使用例子</title>
  </head>
  <%
  	String person = new String("name=James|age=30|sex=male");
  	request.setAttribute("person",person);
   %>
  <body>
       <c:out value="用\"|\"作为分隔符分隔字符串:"/>&nbsp;&nbsp;${person}
       <br/> 
       <c:forTokens items="${person}" delims="|" var="currentPerson" 
             varStatus="currentStatus">
            当前元素是：<c:out value="${currentPerson}"/>&nbsp;&nbsp;
           当前元素的索引号是：<c:out value="${currentStatus.index}"/>&nbsp;&nbsp;
           当前迭代数为：<c:out value="${currentStatus.count}"/>&nbsp;&nbsp;
           <c:if test="${currentStatus.first}">第一次循环操作</c:if>&nbsp;&nbsp;
           <c:if test="${currentStatus.last}">最后一次循环操作</c:if>&nbsp;&nbsp;
           <hr/>
       </c:forTokens>
       <br/> <br/>
       <c:set value="name=Rose|age=26|sex=female" var="people"/>
       <c:out value="先用\"|\"作为分隔符分隔，再用\"=\"作分隔符:"/>&nbsp;&nbsp;${people}
       <br/>  
       <c:forTokens items="${people}" delims="|" var="currentPerson" >
           <c:forTokens items="${currentPerson}" delims="=" var="currentPerson1"
             varStatus="currentStatus">
		             当前元素是：<c:out value="${currentPerson1}"/>&nbsp;&nbsp;
		           当前元素的索引号是：<c:out value="${currentStatus.index}"/>&nbsp;&nbsp;
		           当前迭代数为：<c:out value="${currentStatus.count}"/>&nbsp;&nbsp;
		         <c:if test="${currentStatus.first}">第一次循环操作</c:if>&nbsp;&nbsp;
		         <c:if test="${currentStatus.last}">最后一次循环操作</c:if>&nbsp;&nbsp;
		         <br/>
           </c:forTokens>
           <hr/>
       </c:forTokens>
  </body>
</html>