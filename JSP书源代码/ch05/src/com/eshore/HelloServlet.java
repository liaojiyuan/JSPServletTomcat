package com.eshore;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eshore.pojo.HelloUser;

@WebServlet(
		name = "helloServlet", 
		urlPatterns = { "/hello.do" })
public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	private HelloUser user = new HelloUser();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		doPost(request,response);//调用doPost()方法
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("username");//获取参数username的值
		String message = user.sayHello(userName);//获取消息值
		request.setAttribute("message", message);//设置参数值
		request.getRequestDispatcher("/hello.htm").//跳转到hello.htm
				forward(request, response);
	}
}
