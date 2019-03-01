<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>人员信息列表</TITLE>
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
				rs = st.executeQuery("select * from person");//执行查询，返回结果集;
		        ResultSetMetaData rsmd = rs.getMetaData();
		        int columnCount= rsmd.getColumnCount();       //获取列数
		        String[] columnNames = new String[columnCount];
		        for(int i=0;i<columnCount;i++){               //获取列对应的列名
		        	columnNames[i] = rsmd.getColumnName(i+1);
		        }
		        out.println("<table border=\"1\" width=\"100%\" cellpadding=\"2\" cellspacing=\"1\"><tr>");
		        for(int i=0;i<columnCount;i++){               //输出列名
		            out.println("<td>"+columnNames[i]+"</td>");
		        }
		        out.println("</tr>");
		        //遍历结果集ResultSet
				while(rs.next()){
					out.println("</tr>");
					//根据列名取得对应列的值
					for(int i=0;i<columnCount;i++){
			            out.println("<td>"+rs.getString(columnNames[i])+"</td>");
			        }
			        out.println("</tr>");
				}
				out.println("</table>");
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//记住关闭连接
				try {
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
</HTML>