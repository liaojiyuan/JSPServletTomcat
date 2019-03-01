package com.eshore;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletResponse;

//@WebFilter(
//		asyncSupported = true,
//	description = "内容替换过滤器", 
//	filterName = "replaceFilter", 
//	urlPatterns = { "/*" },
//	initParams = { 
//		@WebInitParam(name = "filePath", value = "replace_ZH.properties")
//	} 
//)
public class ReplaceFilter implements Filter{

	private Properties propert = new Properties();
	public void init(FilterConfig filterConfig) throws ServletException {
		//通过filterConfig获得初始化文件名
		String filePath = filterConfig.getInitParameter("filePath");
		try {
			//导入资源文件
			propert.load(ReplaceFilter.class.getClassLoader()
				.getResourceAsStream(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletResponse res = (HttpServletResponse)response;
		//实例化响应器包装类
		ResponseReplaceWrapper resp = new ResponseReplaceWrapper(res);
		chain.doFilter(request, resp);
		//缓存输出字符
		String outString = resp.getCharWriter().toString();
		//循环替换不合法的字符
		for(Object obj:propert.keySet()){
			String key = (String) obj;
			outString = outString.replace(key, propert.getProperty(key));
//			System.out.println(outString);
		}
		//用原先的HttpServletResponse输出字符
		PrintWriter out = res.getWriter();
		out.write(outString);
	}
	public void destroy() {
		
	}
}
