<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:import&gt;标签使用例子</title>
  </head>
  
  <body>
        <!-- 导入publisher.txt -->
        <c:import url="publisher.txt" charEncoding="gb2312" >
        </c:import>
        <c:out value="这些出版社很出名"/>    
        <hr/> 
        <c:import url="author.jsp" charEncoding="gb2312">
            <!-- 传入参数 -->
             <c:param name="authorname1" value="John"/>
             <c:param name="authorname2" value="Smith"></c:param>
             <c:param name="authorname3" value="Bruce"></c:param>
        </c:import>
  </body>
</html>