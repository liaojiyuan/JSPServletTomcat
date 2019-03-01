<%@ page import="java.io.*,java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.util.Date,java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
   <title>sql标签综合示例</title>
</head>
<body>
<!-- 设置数据源-->
<sql:setDataSource var="test" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/TEST"
     user="root"  password="root"/>
<!-- 将用户的年龄增加2岁 -->
<sql:update dataSource="${test}"   var="updatecount">    
   update users set user_age=user_age+?
   <c:set value="2" var="count"/>
   <sql:param value="${count}"/>
</sql:update>
<!-- 给id为1的用户设置日期 -->
<%
Date nowdate = new Date();
int userId = 1;
%>
<sql:update dataSource="${test}"   var="updatecount2">    
   UPDATE users SET createtime = ? WHERE Id = ?
   <sql:dateParam value="<%=nowdate%>" type="timestamp" />
   <sql:param value="<%=userId%>" />
</sql:update>
<!-- 查询数据-->
<sql:query dataSource="${test}" var="result" 
   sql="SELECT * from users;" >
</sql:query>
<!--显示数据  -->
<table border="1" width="100%">
<tr>
   <td colspan="6" align="center">
       共查询${result.rowCount}条用户记录
   </td>
</tr>
<tr>
   <th>用户ID</th>
   <th>用户姓名</th>
   <th>用户性别</th>
   <th>用户年龄</th>
   <th>联系电话</th>
   <th>出身地</th>
   <th>创建日期</th>
</tr>
<c:forEach var="user" items="${result.rows}">
<tr>
   <td><c:out value="${user.id}"/></td>
   <td><c:out value="${user.user_name}"/></td>
   <td><c:out value="${user.user_sex}"/></td>
   <td><c:out value="${user.user_age}"/></td>
   <td><c:out value="${user.user_phone}"/></td>
   <td><c:out value="${user.user_address}"/></td>
   <td><fmt:formatDate type="time" value="${user.createtime}" var="formatUsertime"/>
       <c:out value="${formatUsertime}"></c:out></td>
</tr>
</c:forEach>
</table>
 <sql:transaction dataSource="" isolation="">
 
 </sql:transaction>
</body>
</html>
