<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:catch&gt;标签使用例子</title>
  </head>
  
  <body>
       <c:catch var="exception">
           <%=20/0 %>
       </c:catch>  
                 捕获的异常信息为：
      <c:out value="${exception.message}"/>    
  </body>
</html>