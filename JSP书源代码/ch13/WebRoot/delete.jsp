<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>删除人员信息</TITLE>
	</HEAD>
	<BODY>
		<%
		    Connection con = null;
	        Statement st = null;
	        try {
	        	Class.forName("com.mysql.jdbc.Driver");       //注册数据库
				con = DriverManager.getConnection(            //获取数据库连接
				"jdbc:mysql://localhost:3306/testWeb","root","admin");
				st = con.createStatement();                  //获取Statement
				request.setCharacterEncoding("UTF-8");
                String id = request.getParameter("id");       //获取页面参数id
                String sql = "delete from Person where id='"+id+"'"; //删除指定人员
		        int  result = st.executeUpdate(sql); 
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//记住关闭连接
				try {
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
		 <a href="listPerson.jsp">返回人员信息列表</a>
		 <br/>
	</BODY>
</HTML>
