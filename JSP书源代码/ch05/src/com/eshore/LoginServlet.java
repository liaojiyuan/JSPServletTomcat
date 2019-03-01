package com.eshore;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eshore.pojo.User;

@WebServlet(name = "loginServlet", urlPatterns = { "/login.htm" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("username");// 获取参数username的值
		String passwd = request.getParameter("passwd");// 获取参数passwd的值
		if(checkLogin(userName,passwd)){//用户登录成功，跳转到用户页面
			request.getRequestDispatcher("/member.htm").
			forward(request, response);
		}else{
			response.sendRedirect("login.jsp");//重定向到登录首页
		}
	}
	//验证登录用户
	public boolean checkLogin(String username,String passwd){
		User user = User.getInstance();
		Map<String,String> map = user.getUserMap();
		if(username!=null&&!"".equals(username)&&		//用户不为空才判断
			passwd!=null&&!"".equals(passwd)){
			String[] arr = map.get(username).split("##");//分割Map中的值
			if(arr[0].equals(passwd)) return true;
			else return false;
		}else
			return false;
	}
}
