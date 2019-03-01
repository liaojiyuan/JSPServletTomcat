package com.eshore;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		urlPatterns = { "/logout.do" }, 
		loadOnStartup = 0, 
		name = "Logout", 
		displayName = "demo", 
		initParams = { 
			@WebInitParam(name = "login", value = "login.jsp")
		}
	)
public class Logout extends HttpServlet{
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		if(userId!=null&&!"".equals(userId)){
			request.getSession().removeAttribute(userId);
		}
		String login = getInitParameter("login");
		response.sendRedirect(login);
	}
}
