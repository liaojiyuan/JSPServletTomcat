package com.eshore.reponse;

import java.io.IOException;

import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/AsyncContextServlet" }, asyncSupported = true)
public class AsyncContextServlet extends HttpServlet {
	 
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		final AsyncContext asyncContext = request.startAsync();
		//注册AsyncContext对象超时时间
		asyncContext.setTimeout(1000000);
		asyncContext.addListener(new AsyncListener() {
			public void onComplete(AsyncEvent event) throws IOException {
				ClientService.getInstance().removeAsyncContext(asyncContext);
			}
			public void onTimeout(AsyncEvent event) throws IOException {
				ClientService.getInstance().removeAsyncContext(asyncContext);
			}
			public void onError(AsyncEvent event) throws IOException {
				ClientService.getInstance().removeAsyncContext(asyncContext);
			}
			public void onStartAsync(AsyncEvent event) throws IOException {
			}
		});
		ClientService.getInstance().addAsyncContext(asyncContext);
	}
}
