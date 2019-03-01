package com.etch.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
    
	//序列化  可以自动生成或者自行定义
	private static final long serialVersionUID = 1L;

	public void init() throws ServletException{
    	System.out.println("初始化");
    }
    
	public void service(ServletRequest request,
			              ServletResponse response) throws ServletException,IOException{
		System.out.println("调用 public service 方法");
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
        out.println("收到service请求");
	}
	
	protected void service(HttpServletRequest request,
            HttpServletResponse response) throws ServletException{
		System.out.println("调用protected  service 方法");
	}

	public void doGet(HttpServletRequest request,
			            HttpServletResponse response)throws ServletException,IOException

	{
		System.out.println("调用 doGet方法");
        //设置响应的页面类别跟页面编码
	    response.setContentType("text/html;charset=gbk");
        PrintWriter out = response.getWriter();
        out.println("收到HelloServlet doGet请求");
	}
	
	public void doPost(HttpServletRequest request,
            HttpServletResponse response)throws ServletException,IOException

	{
		System.out.println("调用doPost方法");
		//设置响应的页面类别跟页面编码
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		out.println("收到HelloServlet  doPost请求");
	}
	
	public void destory(){
		System.out.println("调用 destory()方法");
	}
}
