<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>人员信息列表</TITLE>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.js"></script>
	</HEAD>
	<BODY>
		<center>
			<h4>人员信息列表</h4>
		</center>
		<%
		    Connection con = null;
	        Statement st = null;
	        ResultSet rs = null;
	        try {
				Class.forName("com.mysql.jdbc.Driver");       //注册数据库
				con = DriverManager.getConnection(            //获取数据库连接
				"jdbc:mysql://localhost:3306/testWeb","root","admin");
				st = con.createStatement();                  //获取Statement
				rs = st.executeQuery("select * from person");//执行查询，返回结果集
		 %>
		 <a href="addPerson.jsp">新增人员信息</a>
		 <br/>
		 <br/>
		<table border="1" width="100%" cellpadding="2" cellspacing="1">
			<tr>
				<td>选择</td>
				<td>姓名</td>
				<td>年龄</td>
				<td>性别</td>
				<td>生日</td>
				<td>备注</td>
				<td>操作</td>
			</tr>
		    <%
				while(rs.next()){                                   //遍历结果集ResultSet
					int id = rs.getInt("id");                       //获取ID
					String name  = rs.getString("name");            //获取姓名
					int age = rs.getInt("age");                     //获取年龄
					String sex  = rs.getString("sex");              //获取性别
					Date birthday = rs.getDate("birthday");         //获取生日
					String description = rs.getString("description");//获取备注
					out.println("<tr>");
					out.println("<td><input type=\"checkbox\" name=\"checkPerson\" value=\""+id+"\"></td>");
					out.println("<td >"+name+"</td>");
					out.println("<td >"+age+"</td>");	 
					out.println("<td >"+sex+"</td>");
					out.println("<td >"+birthday+"</td>");
					out.println("<td >"+description+"</td>");
					out.println("<td><a href=\"modify.jsp?id="+id+"\">修改</a>&nbsp;&nbsp;"+
					"<a href=\"delete.jsp?id="+id+"\" onclick=\"return confirm('确定删除该记录？')\">删除</a></td>");
				    out.println("</tr>");
				}
		     %>
		</table>
		<table>
		     <tr>
		        <td>
		                              全选<input type="checkbox" onclick="selectPerson(this);"/>
		        </td>
		     </tr>
		</table>
		<%
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {//记住关闭连接
					rs.close();
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
	</BODY>
	<script type="text/javascript">
         function selectPerson(obj){
              $('input[name="checkPerson"]').attr("checked",obj.checked);  
         }
	</script>
</HTML>

