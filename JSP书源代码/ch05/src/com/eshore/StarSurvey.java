package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		name = "starSurvey", 
		urlPatterns = { "/diaocha.do" })
public class StarSurvey extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置请求的编码类型
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String[] starname = request.getParameterValues("starname");
		// 设置响应的类型和编码
		response.setContentType("text/html;charset=UTF-8");
		// 取得PrintWriter()对象
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>感谢您的调查</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println("联系人：<a href='"+email+"'>"+username+"</a>");
		out.println("<br/>喜欢的明星：");
		String str = "";
		for(int i=0;i<starname.length;i++){
			str +=starname[i]+"，";
		}
		str = str.substring(0, str.length()-1);
		out.println(str);
		out.println("  </BODY>");
		out.println("</HTML>");
		out.close();
	}
}
