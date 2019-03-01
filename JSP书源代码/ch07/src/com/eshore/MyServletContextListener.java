package com.eshore;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;


@WebListener
public class MyServletContextListener implements ServletContextListener{

	private static Logger log = Logger.getLogger("MyServletContextListener");

	public void contextInitialized(ServletContextEvent sce) {
		//通过ServletContextEvent获得ServletContext对象
		ServletContext context = sce.getServletContext();
		String name = context.getInitParameter("user_name");
		log.debug("初始化参数name的值："+name);
		log.debug("Tomcat正在启动中......");
	}
	
	public void contextDestroyed(ServletContextEvent sce) {
		log.debug("Tomcat正在关闭中......");
	}
}
