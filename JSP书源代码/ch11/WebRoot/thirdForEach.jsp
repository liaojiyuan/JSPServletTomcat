<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:forEach&gt;标签使用例子</title>
  </head>
  
  <body>
      <%
           Map<String,String> nameAndIdMaps = new HashMap<String,String>();
           nameAndIdMaps.put("350101","Toms");
           nameAndIdMaps.put("350102","Smith");
           nameAndIdMaps.put("350103","John");
           nameAndIdMaps.put("350104","Anna");
           nameAndIdMaps.put("350105","James");
           nameAndIdMaps.put("350106","Roses");
           nameAndIdMaps.put("350107","Bruce");
           request.setAttribute("nameAndIdMaps",nameAndIdMaps);
       %>
      <center>
                             输出Map集合中的内容：<hr/>
           第一种遍历Map方法<br/>
           <c:forEach items="${nameAndIdMaps}" var="nameAndId" varStatus="currentStatus">
		                 当前元素为：<c:out value="${nameAndId.key}"/>&nbsp;&nbsp;
		                 <c:out value="${nameAndId.value}"/>&nbsp;&nbsp;
		                 当前元素索引号为：<c:out value="${currentStatus.index}"/>&nbsp;&nbsp;
		                 当前迭代数为：<c:out value="${currentStatus.count}"/>&nbsp;&nbsp;
              <c:if test="${currentStatus.first}">第一次循环操作</c:if>
              <c:if test="${currentStatus.last}">最后一次循环操作</c:if>
                 <hr/>
           </c:forEach>
           <br/>
           第二种种遍历Map方法<br/>
           <c:forEach items="${nameAndIdMaps}" var="nameAndId" varStatus="currentStatus">
                <c:forEach items="${nameAndId.value}" var="name">
                    Map中的值为：${name}<hr/>
                </c:forEach>
           </c:forEach>
      </center>
  </body>
</html>