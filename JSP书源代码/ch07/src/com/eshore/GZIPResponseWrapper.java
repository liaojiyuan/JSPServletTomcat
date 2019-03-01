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
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class GZIPResponseWrapper extends HttpServletResponseWrapper {
  //原始的response
  private HttpServletResponse response = null;
  //自定义的outputStream,对数据压缩，并且输出
  private ServletOutputStream outputStream = null;
  //自定义PrintWriter,将内容输出到ServletOutputStream
  private PrintWriter printWriter = null;

  public GZIPResponseWrapper(HttpServletResponse response) {
    super(response);
    this.response = response;
  }

  //用GZIPResponseStream创建输出流
  public ServletOutputStream createOutputStream() throws IOException {
    return (new GZIPResponseStream(response));
  }
  //执行这个方法对数据进行GZIP压缩，并输出到浏览器中
  public void finishResponse() {
    try {
      if (printWriter != null) {
    	  printWriter.close();
      } else {
        if (outputStream != null) {
        	outputStream.close();
        }
      }
    } catch (IOException e) {}
  }
  //刷新ServletOutputStream输出流
  public void flushBuffer() throws IOException {
	  outputStream.flush();
  }
  //覆盖getOutputStream方法，处理二进制内容
  public ServletOutputStream getOutputStream() throws IOException {
    if (printWriter != null) {
      throw new IllegalStateException("getWriter() has already been called!");
    }

    if (outputStream == null)
    	outputStream = createOutputStream();
    return (outputStream);
  }
  //处理getWriter方法，处理字符内容
  public PrintWriter getWriter() throws IOException {
    if (printWriter != null) {
      return (printWriter);
    }

    if (outputStream != null) {
      throw new IllegalStateException("getOutputStream() has already been called!");
    }

    outputStream = createOutputStream();
    printWriter = new PrintWriter(new OutputStreamWriter(outputStream, "UTF-8"));
   return (printWriter);
  }
  //压缩后数据长度有变化，所以不用重写该方法
  public void setContentLength(int length) {}
}
