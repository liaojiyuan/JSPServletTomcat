package com.eshore;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "downloadServlet", urlPatterns = { "/download.do" })
public class DownloadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置响应的内容类型
		response.setContentType("application/msword");
		//设置响应的标头内容
		response.addHeader("Content-disposition","attachment;filename=test.doc");
		//获取资源文件
		InputStream in = getServletContext().getResourceAsStream("/doc/test.doc");
		//输出到浏览器中
		ServletOutputStream os = response.getOutputStream();
		byte[] bytes = new byte[1024];
		int len = -1;
		while((len=in.read(bytes))!=-1){
			os.write(bytes, 0, len);
		}
		//关闭输出输入流
		in.close();
		os.close();
	}
}
