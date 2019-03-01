package com.eshore;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(asyncSupported = true, urlPatterns = { "/async.do" }, name = "asyncServlet")
public class AsyncServlet extends HttpServlet {
	private ExecutorService executorService = Executors.newFixedThreadPool(10);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		AsyncContext ctx = request.startAsync();
		executorService.submit(new AsyncRequest(ctx));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	public void destroy(){
		executorService.shutdown();
	}
	
	public class AsyncRequest implements Runnable{

		private AsyncContext ctx;
		public AsyncRequest(AsyncContext ctx){
			this.ctx = ctx;
		}
		public void run() {
			// TODO Auto-generated method stub
			try {
	            //等待十秒钟，以模拟业务方法的执行
	            Thread.sleep(2000);
	            PrintWriter out = ctx.getResponse().getWriter();
	            out.println("久等了：" + new Date() + ".");
	            //out.flush();
	            ctx.complete();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
		
	}
}
