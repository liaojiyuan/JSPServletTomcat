<%@ page import="java.io.*,java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
   <title>sql:update标签示例</title>
</head>
<body>
<!-- 设置数据源-->
<sql:setDataSource var="test" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/TEST"
     user="root"  password="root"/>
<sql:update dataSource="${test}"   var="count">    
INSERT INTO  users values(6, 6,'马超', 35,'男','133160987XX','陕西兴平','','2014-02-15 22:08:17');
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
