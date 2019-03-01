<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>作者页面</title>
  </head>
  
  <body>
       <p>
          <font size="3">作者：<c:out value="${param.authorname1}">${param.authorname1}</c:out>&nbsp;&nbsp;</font>
          <font size="3"> <c:out value="${param.authorname2}">${param.authorName2}</c:out>&nbsp;&nbsp;</font>
          <font size="3"> <c:out value="${param.authorname3}">${param.authorName3}</c:out>&nbsp;&nbsp;</font>
          <font size="3">联合出版所有2013</font>
       </p>
  </body>
</html>