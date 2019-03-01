package com.eshore;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eshore.AsyncServlet.AsyncRequest;

@WebServlet(asyncSupported = true, urlPatterns = { "/asyncNum.do" }, name = "asyncNumServlet")
public class AsyncNumServlet extends HttpServlet {
	private List<AsyncContext> asyncs = new ArrayList<AsyncContext>();;

	public void init() throws ServletException {
		asyncs = (List<AsyncContext>) getServletContext().getAttribute("asyncs");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		AsyncContext ctx = request.startAsync(); 
		synchronized(this){
			asyncs.add(ctx);
		}
	}
}
