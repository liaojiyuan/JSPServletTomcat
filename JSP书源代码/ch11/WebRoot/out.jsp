<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>out标签使用例子</title>
  </head>
  
  <body>
      <center>
          <c:out value="${null}" default="输出默认值" />
          <br/>
          <c:out value="<br/>" escapeXml="false"/>
          <c:out value="<br/>" escapeXml="true"/>
          <c:out value="2*3="/>
          <c:out value="${2*3}"/>
      </center>
  </body>
</html>
