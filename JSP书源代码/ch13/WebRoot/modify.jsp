<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>修改人员信息</TITLE>
	</HEAD>
	<BODY>
		<%
		    Connection con = null;
	        Statement st = null;
	        ResultSet rs = null;
	        try {
				Class.forName("com.mysql.jdbc.Driver");    //注册数据库
				con = DriverManager.getConnection(         //获取数据库连接
				"jdbc:mysql://localhost:3306/testWeb","root","admin");
				st = con.createStatement();                //获取Statement
				request.setCharacterEncoding("UTF-8");
				//获得修改人员的主键ID
                String id = request.getParameter("id");
                //查询该人员的SQL语句
                String sql = "select *  from Person where id='"+id+"'";
		        rs = st.executeQuery(sql);
		        if(rs.next()){
		            //往页面传递人员信息参数
		            request.setAttribute("id",rs.getInt("id"));
		            request.setAttribute("name",rs.getString("name"));
		            request.setAttribute("sex",rs.getString("sex"));
		            request.setAttribute("age",rs.getInt("age"));
		            request.setAttribute("birthday",rs.getString("birthday"));
		            request.setAttribute("description",rs.getString("description"));
		            RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
		            rd.forward(request,response);
		        }else{
		        	out.println("没有找到id为"+id+"的人员记录");
		        }
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {//记住关闭数据库连接
				    rs.close();
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
		 <br/>
	</BODY>
</HTML>
