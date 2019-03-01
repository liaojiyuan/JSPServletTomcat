package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetResourceBundelServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public GetResourceBundelServlet() {
		super();
	}
	 
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
		//设定页面请求的Locale
		Locale loc = request.getLocale();
		//绑定welcome资源文件
		ResourceBundle rb = ResourceBundle.getBundle("welcome", loc);
		//获取文件上welcomeinfo内容
		String welcomeinfo = rb.getString("welcomeinfo");
		//获取文件上message内容
		String message = rb.getString("message");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>welcomeinfo</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println(" <h2>"+welcomeinfo+"</h2>");
		out.println("  http://blog.sina.com.cn/u/1268307652</br>");
		out.println(" <h4>"+message+"</h4>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
