/*
 * Copyright 2003 Jayson Falkner (jayson@jspinsider.com)
 * This code is from "Servlets and JavaServer pages; the J2EE Web Tier",
 * http://www.jspbook.com. You may freely use the code both commercially
 * and non-commercially. If you like the code, please pick up a copy of
 * the book and help support the authors, development of more free code,
 * and the JSP/Servlet/J2EE community.
 */
package com.eshore;

import java.io.*;
import java.util.zip.GZIPOutputStream;
import javax.servlet.*;
import javax.servlet.http.*;

public class GZIPResponseStream extends ServletOutputStream {
	//将压缩后的数据存放在ByteArrayOutputStream对象中
  protected ByteArrayOutputStream bArrayOutputStream = null;	
  	//JDK中自带的GZIP压缩类
  protected GZIPOutputStream gzipOutputStream = null;	
  protected boolean closed = false;
  protected HttpServletResponse response = null;//原先的response
  protected ServletOutputStream outputStream = null;	//response中的输出流
  //构造方法，初始化定义值
  public GZIPResponseStream(HttpServletResponse response) throws IOException {
    super();
    closed = false;
    this.response = response;
    this.outputStream = response.getOutputStream();
    bArrayOutputStream = new ByteArrayOutputStream();
    gzipOutputStream = new GZIPOutputStream(bArrayOutputStream);
  }
  //执行压缩，并将数据输出到浏览器
  public void close() throws IOException {
    if (closed) {
      throw new IOException("This output stream has already been closed");
    }
    //执行压缩，必须要调用这个方法
    gzipOutputStream.finish();
    //将压缩后的数据输出到浏览器中
    byte[] bytes = bArrayOutputStream.toByteArray();
    //设置压缩算法为gzip，浏览器会自动解压数据
    response.addHeader("Content-Length",Integer.toString(bytes.length)); 
    response.addHeader("Content-Encoding", "gzip");
    //输出到浏览器
    outputStream.write(bytes);
    outputStream.flush();
    outputStream.close();
    closed = true;
  }

  public void flush() throws IOException {
    if (closed) {
      throw new IOException("不能刷新关闭的流！");
    }
    gzipOutputStream.flush();
  }

  public void write(int b) throws IOException {
    if (closed) {
      throw new IOException("输出流关闭中！");
    }
    gzipOutputStream.write((byte)b);
  }

  public void write(byte b[]) throws IOException {
    write(b, 0, b.length);
  }

  public void write(byte b[], int off, int len) throws IOException {
    if (closed) {
      throw new IOException("输出流关闭中！");
    }
    gzipOutputStream.write(b, off, len);
  }

  public boolean closed() {
    return (this.closed);
  }
  
  public void reset() {
    //noop
  }
}
