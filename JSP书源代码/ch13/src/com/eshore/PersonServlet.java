package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PersonServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
			Class.forName("com.mysql.jdbc.Driver");                            //注册数据库
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("驱动程序加载错误");
		}
		try {
			con = DriverManager.
			getConnection("jdbc:mysql://localhost:3306/testWeb","root","admin");//获取数据库连接
			st = con.createStatement();                                         //获取Statement
			rs = st.executeQuery("select * from person");                       //执行查询，返回结果集
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out .println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>列出人员信息表</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("<center><h4>人员信息列表</h4>");
			out.println("  <table border=\"1\" width=\"100%\" cellpadding=\"2\" cellspacing=\"1\">");
			out.println("<tr>");
			out.println("<td>选择</td>");
			out.println("<td>姓名</td>");
			out.println("<td>年龄</td>");
			out.println("<td>性别</td>");
			out.println("<td>生日</td>");
			out.println("<td>备注</td>");
			out.println("</tr>");
			while(rs.next()){                                      //遍历结果集ResultSet
				int id = rs.getInt("id");                          //获取ID
				String name  = rs.getString("name");               //获取姓名
				int age = rs.getInt("age");                        //获取年龄
				String sex  = rs.getString("sex");                 //获取性别
				Date birthday = rs.getDate("birthday");            //获取生日
				String description = rs.getString("description");  //获取备注
				out.println("<tr>");
				out.println("<td><input type=\"checkbox\" name=\"id\" value=\""+id+"\"></td>");
				out.println("<td >"+name+"</td>");
				out.println("<td >"+age+"</td>");	 
				out.println("<td >"+sex+"</td>");
				out.println("<td >"+birthday+"</td>");
				out.println("<td >"+description+"</td>");
			    out.println("</tr>");
			}
			out.println("</table></center>"); 
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try { //记住关闭连接
				rs.close();
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
