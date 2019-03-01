package com.eshore;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.lang.StringUtils;

@MultipartConfig(location = "D:/tmp/", maxFileSize = 1024 * 1024 * 10)
@WebServlet(name = "getPartsBodyContentServlet", urlPatterns = { "/uploads.do" }, loadOnStartup = 0)
public class GetPartsBodyContent extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置处理编码
		request.setCharacterEncoding("UTF-8");
		request.getParts();
		for(Part part:request.getParts()){
			//只处理上传文件，因为提交按钮也被当作是一个Part对象
			if(part.getName().startsWith("filenam")){
				// 获得文件名字
				String filename = getFilename(part);
				part.write(filename);
			}
		}
		// 返回页面消息
		response.setContentType("text/html;charset=UTF-8");// 设置响应的类型和编码
		PrintWriter out = response.getWriter();// 取得PrintWriter()对象
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <script>alert(\"上传成功\")</script><BODY>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}
	// 获取文件名称
	private String getFilename(Part part) {
		if (part == null)
			return null;
		String fileName = part.getHeader("content-disposition");
		if (StringUtils.isBlank(fileName)) {
			return null;
		}
		return StringUtils.substringBetween(fileName, "filename=\"", "\"");
	}
}
