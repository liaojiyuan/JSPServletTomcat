package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
	asyncSupported = true, 
	urlPatterns = { "/asyncdemo.do" }, 
	name = "myAsyncServlet"
)
public class MyAsyncServlet extends HttpServlet {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("开始时间：" + sdf.format(new Date()) + " <br/> ");
        out.flush();
        //在子线程中执行业务调用，并由其负责输出响应，主线程退出
        AsyncContext asyncContext = request.startAsync(request,response);
        asyncContext.setTimeout(900000000);//设置最大的超时时间
        new Thread(new Executor(asyncContext)).start();
        out.println("结束时间：" + sdf.format(new Date())+ " <br/> ");
        out.flush();
	}
	//内部类
	public class Executor implements Runnable {
	    private AsyncContext ctx = null;
	    public Executor(AsyncContext ctx){
	        this.ctx = ctx;
	    }
	    public void run(){
	        try {
	            //等待二十秒钟，以模拟业务方法的执行
	            Thread.sleep(20000);
	            PrintWriter out = ctx.getResponse().getWriter();
	            out.println("业务处理完毕的时间：" + sdf.format(new Date()) + " <br/> ");
	            out.flush();
	            ctx.complete();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
}
