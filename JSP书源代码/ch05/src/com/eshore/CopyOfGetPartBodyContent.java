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


public class CopyOfGetPartBodyContent extends HttpServlet {

	private static final long serialVersionUID = 1L;
	// 得到注解信息
	private static final MultipartConfig config;
	static {
		config = CopyOfGetPartBodyContent.class.getAnnotation(MultipartConfig.class);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Part part = request.getPart("file");
		// 获得文件名字
		String filename = getFilename(part);
		part.write(filename);
		// 写到指定位置
//		writeToFile(filename, part);
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
	//写入到指定文件
	private void writeToFile(String filename,Part part)
			throws FileNotFoundException,IOException{
		//写到指定的文件地址
		InputStream is = part.getInputStream();
		FileOutputStream fos = 
			new FileOutputStream("d:/file/"+filename);
		byte[] b = new byte[1024];
		int len=-1;
		while((len=is.read(b))!=-1){
			fos.write(b,0,len);
		}
		is.close();
		fos.close();
	}
}
