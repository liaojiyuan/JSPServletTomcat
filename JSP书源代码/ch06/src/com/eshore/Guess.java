package com.eshore;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Guess extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Guess() {
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
         
			//获取页面提交的数字
		 String guessNumber = request.getParameter("guessNumber");
		 int number = Integer.parseInt(guessNumber);
		 	//产生一个Session，并获取存放在Sessioin中的currentNumber
		 HttpSession session = request.getSession();
		 Integer currentNumber = (Integer)session.getAttribute("currentNumber");
		 String context = request.getContextPath();
		 if(currentNumber==null){
			 //产生1~50的随机数
			 currentNumber = 1+(int)(Math.random()*50);
			 session.setAttribute("currentNumber", currentNumber);
		 }
		 //判断猜得数跟Sessioin中的currentNumber大小
		 if(number>currentNumber){
			 response.sendRedirect(context+"/guessNumber.jsp?flag=larger");
		 }else if(number<currentNumber){
			 response.sendRedirect(context+"/guessNumber.jsp?flag=lessner");
		 }else {
			 currentNumber = 1+(int)(Math.random()*50);
			 session.setAttribute("currentNumber", currentNumber);
			 response.sendRedirect(context+"/guessNumber.jsp?flag=success");
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
