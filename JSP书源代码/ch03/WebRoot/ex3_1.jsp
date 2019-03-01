<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>'ex3_1.jsp'</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body >
      <center>
	      <form action="getParameter.jsp" method="post">
	          <table>
	                 <tr>
	                     <td>姓名</td>
	                     <td><input type="text" name="name" value=""/></td>
	                 </tr>
	                 <tr>
	                     <td>城市</td>
	                     <td><input type="text" name="city" value=""/></td>
	                 </tr>
	                 <tr>
	                     <td><input type="submit" value="提交"/></td>
	                     <td><input type="reset" value="重置"/></td>
	                 </tr>
	          </table>
	      </form>
	      <form action="getHeaders.jsp" method="post">
	          <table>
	                 <tr>
	                     <td><input type="submit" value="提交"/></td>
	                     <td><input type="reset" value="重置"/></td>
	                 </tr>
	          </table>
	      </form>
      </center>
  </body>
</html>
