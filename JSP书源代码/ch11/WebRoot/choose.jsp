<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:choose&gt;标签使用例子</title>
  </head>
  
  <body>
      <center>
                             输出数检查结果：
           <c:set value="2" var="num"/><!-- set标签 设定输入值为2-->
           <c:choose>
               <c:when test="${num%2==0}">
               		偶数
               </c:when>
               <c:when test="${num%2!=0}">
               		奇数
               </c:when>
           </c:choose>
      </center>
  </body>
</html>
