package com.eshore;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class ResponseReplaceWrapper extends HttpServletResponseWrapper{

	private CharArrayWriter charWriter = new CharArrayWriter();
	public ResponseReplaceWrapper(HttpServletResponse response) {
		//必须调用父类构造方法
		super(response);
	}
    
	public PrintWriter getWriter() throws IOException{
		//返回字符数组Writer，缓存内容
		return new PrintWriter(charWriter);
	}

	public CharArrayWriter getCharWriter() {
		return charWriter;
	}
}
