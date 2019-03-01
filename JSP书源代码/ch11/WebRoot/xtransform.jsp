<%@ page import="java.io.*,java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
   <title>XML标签示例</title>
</head>
<body>
<h3>用户信息:</h3>
<!-- 设置XML信息 -->
<c:set var="xmltext">
  <users>
    <user>
      <name>张三</name>
      <password>568885</password>
      <age>25</age>
      <sex>男</sex>
      <telephone>1331609XXXX</telephone>
      <address>广州中山大道</address>
    </user>
    <user>
      <name>李四</name>
      <password>789658</password>
      <age>35</age>
      <sex>男</sex>
      <telephone>1331609XXXX</telephone>
      <address>广州黄埔大道</address>
    </user>
  </users>
</c:set>
<!-- 转化html -->
<c:import url="http://localhost:8080/ch11/style.xsl" var="xslt"/>
<x:transform xml="${xmltext}" xslt="${xslt}"/>

</body>
</html>

 

