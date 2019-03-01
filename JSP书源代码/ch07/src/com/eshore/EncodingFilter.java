package com.eshore;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

@WebFilter(
		asyncSupported = true,
		description = "字符编码过滤器", 
		filterName = "encodingFilter", 
		urlPatterns = { "/*" },
		initParams = { 
			@WebInitParam(name = "ENCODING", value = "UTF-8")
		} 
	)
public class EncodingFilter implements Filter{

	private static Logger log = Logger.getLogger("EncodingFilter");
	private String encoding="";
	private String filterName="";
	
	public void init(FilterConfig filterConfig) throws ServletException {
		//通过filterConfig获得初始化中编码值
		encoding = filterConfig.getInitParameter("ENCODING");
		filterName = filterConfig.getFilterName();
		if(encoding==null||"".equals(encoding)){
			encoding="UTF-8";
		}
		log.debug("获得编码值");
	}
	
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//分别对请求和响应进行编码设置
		HttpServletRequest req = (HttpServletRequest)request;
		log.debug("请求被"+filterName+"过滤");
		if("GET".equals(req.getMethod())){
			req = new RequestEncodingWrapper(req,encoding);
		}else{
			request.setCharacterEncoding(encoding);
		}
		response.setCharacterEncoding(encoding);
		//传输给过滤器链过滤
		chain.doFilter(req, response);
		log.debug("响应被"+filterName+"过滤");
	}

	public void destroy() {
		log.debug("请求销毁");
	}
}
