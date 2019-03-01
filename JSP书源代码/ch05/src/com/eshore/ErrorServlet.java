package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "errorServlet", urlPatterns = { "/error.htm" })
public class ErrorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);// 调用doPost()方法
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");//设置响应的类型和编码
		PrintWriter out = response.getWriter();//取得PrintWriter()对象
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>新增会员失败</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("<h2>新增会员失败</h2>");
		//遍历错误信息
		List<String> list = (List<String>)request.getAttribute("errors");
		for(String str:list){
			out.println(str+"<br>");
		}
		out.print("<a href=\""+request.getContextPath()+"/register.jsp\">返回注册首页</a>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}
}
