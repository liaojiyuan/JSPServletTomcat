package com.eshore;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetReaderBody2 extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//读取请求Body
		byte[] body = readBody(request);
		//将内容进行统一编码
		String textBody = new String(body,"UTF-8");
		//获得文件名字
		String filename = getFilename(textBody);
		//写到指定位置
		writeToFile(filename, body);
		//返回页面消息
		response.setContentType("text/html;charset=UTF-8");//设置响应的类型和编码
		PrintWriter out = response.getWriter();//取得PrintWriter()对象
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <script>alert(\"上传成功\")</script><BODY>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}
	//读取请求的输入流
	private byte[] readBody(HttpServletRequest request) 
					throws IOException{
		//获取请求内容长度
		int len = request.getContentLength();
		//获取请求的输入流
		InputStream is = request.getInputStream();
		//新建一字节数组
		byte b[] = new byte[len];
		int total = 0;
		while(total<len){//读取字节流
			int bytes = is.read(b, total, len);
			total += bytes;
		}
		return b;
	}
	//获取文件名称
	private String getFilename(String bodyText){
		String filename = bodyText.substring(bodyText.indexOf("filename=\"")+10);
		filename = filename.substring(filename.lastIndexOf("\\")+1,filename.indexOf("\""));
		return filename;
	}
	//写入到指定文件
	private void writeToFile(String filename,byte[] body)
			throws FileNotFoundException,IOException{
		//写到指定的文件地址
		FileOutputStream fileOutputStream = 
			new FileOutputStream("d:/file/"+filename);
		fileOutputStream.write(body);
		fileOutputStream.flush();
		fileOutputStream.close();//注意关闭输出流
	}
}
