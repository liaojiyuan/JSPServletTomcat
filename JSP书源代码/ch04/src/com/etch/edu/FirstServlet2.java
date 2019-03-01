package com.etch.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet2 extends HttpServlet {
    
	//序列化  可以自动生成或者自行定义
	private static final long serialVersionUID = 1L;

	public void init() throws ServletException{
    	System.out.println("初始化  init()");
    }
	 
	public void doGet(HttpServletRequest request, 
			          HttpServletResponse response)
	               throws ServletException,IOException
	{
		System.out.println("调用 doGet方法");
        //设置响应的页面类别跟页面编码
	    response.setContentType("text/html;charset=gbk");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>测试0到10循环结果</title>");
        out.println("<body>");
        out.println("开始执行。。。。。");
        int count=0;
        for(int i=0;i<=10;i++){
        	count+=i;
        }
        out.println("程序执行结果："+count);
        out.println("</body>");
        out.println("</html>");
        out.flush();
        out.close();
	}
	public void doPost(HttpServletRequest request, 
	          		HttpServletResponse response)
    			     throws ServletException,IOException{
		doGet(request,response);
	}
	public void destory(){
		System.out.println("调用 destory()方法");
	}
}