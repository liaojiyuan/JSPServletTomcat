<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:forEach&gt;标签使用例子</title>
  </head>
  
  <body>
      <%
           List<String> nameLists = new ArrayList<String>();
           nameLists.add("Toms");
           nameLists.add("Smith");
           nameLists.add("John");
           nameLists.add("Anna");
           nameLists.add("James");
           nameLists.add("Roses");
           nameLists.add("Bruce");
           request.setAttribute("nameLists",nameLists);
       %>
      <center>
                             输出集合中的内容：<hr/>
           <c:forEach items="${nameLists}" var="name" varStatus="currentStatus">
		                 当前元素为：<c:out value="${name}"/>&nbsp;&nbsp;
		                 当前元素索引号为：<c:out value="${currentStatus.index}"/>&nbsp;&nbsp;
		                 当前迭代数为：<c:out value="${currentStatus.count}"/>&nbsp;&nbsp;
              <c:if test="${currentStatus.first}">第一次循环操作</c:if>
              <c:if test="${currentStatus.last}">最后一次循环操作</c:if>
                 <hr/>
           </c:forEach>
      </center>
  </body>
</html>