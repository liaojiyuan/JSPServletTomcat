<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:if&gt;标签使用例子</title>
  </head>
  
  <body>
      <center>
          <c:if test="${2%2==0}" var="num">
                                    输出数为：偶数！
          </c:if>
          <br/>该数为偶数的检查结果为：
          <c:out value="${num}"/>
          <br/>
          <c:if test="${3%2==0}" var="num">
                                    输出数为：奇数！
          </c:if>
          <br/>该数为偶数的检查结果为：
          <c:out value="${num}"/>
      </center>
  </body>
</html>
