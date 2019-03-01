<%@ page import="java.io.*,java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
   <title>XML标签示例</title>
</head>
<body>
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

<x:parse xml="${xmltext}" var="output"/>
<!-- 判断是否有多个user节点 -->
<x:if select="$output//user">
    文档不止一个&lt;user&gt;节点。
</x:if>
<br />
<!-- 判断第一个用户的年龄是否小于30岁-->
<x:if select="$output/users/user[1]/age < 30">
   第一个用户的年龄小于30岁。
</x:if>
<br />
<!-- 设定第一个用户的年龄大于30岁-->
<x:set var="fragment" select="$output/users/user[1]/age > 30"/>
设定第一个用户年龄大于30岁的结果: 
<c:out value="${fragment}" />
<br />
<!-- 判断所有user节点下的姓名 -->
<x:choose>
   <x:when select="$output//user/name = '张三'">
      用户的姓名为张三。
   </x:when>
   <x:when select="$output//user/name = '李四'">
      用户的姓名为李四。
   </x:when>
   <x:otherwise>
      未知用户。
   </x:otherwise>
</x:choose>

</body>
</html>