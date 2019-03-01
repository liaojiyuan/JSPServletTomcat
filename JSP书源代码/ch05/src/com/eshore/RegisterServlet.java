package com.eshore;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eshore.pojo.User;

@WebServlet(name = "registeServlet", urlPatterns = { "/register.htm" })
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("username");// 获取参数username的值
		String passwd = request.getParameter("passwd");// 获取参数passwd的值
		String confirdPasswd = request.getParameter("confirdPasswd");// 获取参数confirdPasswd的值
		String email = request.getParameter("email");// 获取参数email的值
		List<String> errors = new ArrayList<String>();//装载错误信息
		if(!isValidEmail(email)){//验证邮箱
			errors.add("无效的邮箱号码！");
		}
		if(isValidUsername(userName)){//验证用户名
			errors.add("用户为空或者已经存在！");
		}
		if(isValidPassword(passwd,confirdPasswd)){//验证密码
			errors.add("密码为空或者密码不一致！");
		}
		if(!errors.isEmpty()){//如果List不为空，则跳转到错误页面
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("/error.htm").//跳转到错误的页面
			forward(request, response);
		}else{						//验证通过，获取User中的Map集合添加用户
			User user = User.getInstance();;
			Map<String,String> map = user.getUserMap();
			map.put(userName, passwd+"##"+email);
			request.getRequestDispatcher("/success.htm").//跳转到成功的页面
			forward(request, response);
		}
	}
	//使用正则表达式验证邮箱
	public boolean isValidEmail(String email){
		boolean flag = false;
		if(email==null||"".equals(email)) flag = false;
		if(email!=null&&!"".equals(email)){
			flag = email.matches("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
		}
		return flag;
	}
	//验证用户名是否存在，获取User类中的Map集合
	//根据key判断Map中是否存在用户
	public boolean isValidUsername(String userName){
		User user = User.getInstance();;
		Map<String,String> map = user.getUserMap();
		if(userName!=null&&!userName.equals("")){ 
			if(map.get(userName)!=null&&!map.get(userName).equals("")){
				return true;//存在用户
			}else return false;
		}
		if(userName==null&&userName.equals("")){ 
			return true;
		}
		return true;
	}
	//验证密码，如果密码为空且长度小于6并且跟确认密码不统一
	//返回true
	public boolean isValidPassword(String passwd,String confirdPasswd){
		return passwd==null||confirdPasswd==null
		||passwd.length()<6||confirdPasswd.length()<6
		||!passwd.equals(confirdPasswd);
	}
}
