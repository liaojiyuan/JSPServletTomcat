<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:remove&gt;标签使用例子</title>
  </head>
  
  <body>
            国际公共管理班级<br/>
     <c:set value="张三" var="studentName" />
     <c:set value="王老师" var="techerName" scope="request"/>
     <c:set value="管理班级0301班" var="className" scope="session"/>
             下面是删除前的变量值:<br/>
     学生：<c:out value="${studentName}"/><br/>
     老师：<c:out value="${techerName}"/><br/>
     班级：<c:out value="${className}"/><br/>
     <c:remove var="studentName"/>
     <c:remove var="techerName" scope="request"/>
     <c:remove var="className" scope="request"/><hr/>
     国际公共管理班级<br/>
     下面是删除后的变量值:<br/>
     学生：<c:out value="${studentName}"/><br/>
     老师：<c:out value="${techerName}"/><br/>
     班级：<c:out value="${className}"/><br/>
  </body>
</html>