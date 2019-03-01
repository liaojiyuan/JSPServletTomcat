package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CheckUser() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		
		//判断是否是linl用户且密码相符。
		if(userId!=null&&"linl".equals(userId)
				&&passwd!=null&&"123456".equals(passwd)){
			//获得sessioin对象
			HttpSession session = request.getSession();
			//设置user参数
			session.setAttribute("user", userId);
			//跳转页面
			RequestDispatcher dispatcher = request.
			getRequestDispatcher("/welcome.jsp");
			dispatcher.forward(request, response);
		}else{
			RequestDispatcher dispatcher = request.
			getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
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
