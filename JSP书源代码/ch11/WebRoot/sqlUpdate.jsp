<%@ page import="java.io.*,java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
   <title>sql:query标签示例</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/TEST"
     user="root"  password="root"/>

<sql:update dataSource="${snapshot}" var="count">
   INSERT INTO users VALUES (104, 2, 'Nuha', 'Ali');
</sql:update>

<sql:query dataSource="${snapshot}" var="result">
   SELECT * from users;
</sql:query>
 
<!--显示数据  -->
<table border="1" width="100%">
<tr>
   <td colspan="6" align="center">
       共查询${result.rowCount }条用户记录
   </td>
</tr>
<tr>
   <th>用户ID</th>
   <th>用户姓名</th>
   <th>用户性别</th>
   <th>用户年龄</th>
   <th>联系电话</th>
   <th>出身地</th>
</tr>
<c:forEach var="user" items="${result.rows}">
<tr>
   <td><c:out value="${user.id}"/></td>
   <td><c:out value="${user.user_name}"/></td>
   <td><c:out value="${user.user_sex}"/></td>
   <td><c:out value="${user.user_age}"/></td>
   <td><c:out value="${user.user_phone}"/></td>
   <td><c:out value="${user.user_address}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>
 
