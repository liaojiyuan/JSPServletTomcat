<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:redirect&gt;标签使用例子</title>
  </head>
  
  <body>
       <c:redirect url="author.jsp">
           <!-- 传入参数 -->
           <c:param name="authorname1" value="谭浩强"/>
           <c:param name="authorname2" value="Smith"/> 
           <c:param name="authorname3" value="张爱国"/> 
       </c:redirect>
  </body>
</html>
