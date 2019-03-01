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

public class GetReaderBody3 extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//读取请求Body
		byte[] body = readBody(request);
		//将内容进行统一编码
		String textBody = new String(body,"UTF-8");
		//获得文件名字
		String filename = getFilename(textBody);
		//取得文件开始和结束位置
		Integer[] p = getFilePosition(request, textBody);
		//写到指定位置
		writeToFile(filename, body,p);
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
	//返回位置信息，这部分要根据实际的文件进行解析
	private Integer[] getFilePosition(HttpServletRequest request,
			String textBody)throws IOException{
		//获得请求的类别
		String contentType = request.getContentType();
		//获取文件中重复的内容
		String text = contentType.
				substring(contentType.indexOf("=")+1, contentType.length());
		int pos = textBody.indexOf("filename=\"");
		pos = textBody.indexOf("\n",pos)+1;
		pos = textBody.indexOf("\n",pos)+1;
		pos = textBody.indexOf("\n",pos)+1;
		//截取不需要的字符，这个需要根据实际的文件进行解析
		int location = textBody.indexOf(text,pos)-11;
		int begin = ((textBody.substring(0, pos)).getBytes("UTF-8")).length;
		int end = ((textBody.substring(0, location)).getBytes("UTF-8")).length;
		Integer[] position = new Integer[2];
		position[0]=begin;
		position[1]=end;
		return position;
	}
	//获取文件名称
	private String getFilename(String bodyText){
		String filename = bodyText.substring(bodyText.indexOf("filename=\"")+10);
		filename = filename.substring(filename.lastIndexOf("\\")+1,filename.indexOf("\""));
		return filename;
	}
	//写入到指定文件
	private void writeToFile(String filename,byte[] body,Integer[] p)
			throws FileNotFoundException,IOException{
		//写到指定的文件地址
		FileOutputStream fileOutputStream = 
			new FileOutputStream("d:/file/"+filename);
		fileOutputStream.write(body, p[0], (p[1]-p[0]));
		fileOutputStream.flush();
		fileOutputStream.close();//注意关闭输出流
	}
}
