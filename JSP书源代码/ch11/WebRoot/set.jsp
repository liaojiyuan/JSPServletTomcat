<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:set&gt;标签使用例子</title>
  </head>
  
  <body>
      <center>
          <c:set value="2" var="num"/>
                                  输出数为：<c:out value="${num}"/>
          <br/>
          <c:set var="num">3</c:set>
                                  输出数为：<c:out value="${num}"/>
      </center>
  </body>
</html>
