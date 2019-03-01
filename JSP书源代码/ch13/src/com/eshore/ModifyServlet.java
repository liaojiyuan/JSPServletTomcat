package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ModifyServlet extends HttpServlet {
	 
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
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String birthday = request.getParameter("birthday");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String description = request.getParameter("description");
        String sql = "update Person set name=?,age=?,sex=?,birthday=?,description=? where id=?";
        Connection con = null;
        PreparedStatement prest = null;
        int  result = 0;
        try {
			Class.forName("com.mysql.jdbc.Driver");            //注册数据库
			con = DriverManager.getConnection(                 //获取数据库连接
					"jdbc:mysql://localhost:3306/testWeb","root","admin");
			prest = con.prepareStatement(sql);                 //获取PreparedStatement,并且预编译SQL语句
			prest.setString(1, name); 
			prest.setInt(2, Integer.parseInt(age));            //设定第2个参数
			prest.setString(3, sex);                           //设定第3个参数
			Date date = new Date(sdf.parse(birthday).getTime());
			prest.setDate(4, date);                            //设定第4个参数
			prest.setString(5, description);                   //设定第5个参数
			prest.setInt(6, Integer.parseInt(id));             //设定第6个参数
			result = prest.executeUpdate(sql);           //执行查询，返回结果集
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out .println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>列出人员信息表</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("");
			out.println("<a href=\""+request.getContextPath()+"/listPerson.jsp\">返回人员列表</a>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {//记住关闭连接
				prest.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
}
