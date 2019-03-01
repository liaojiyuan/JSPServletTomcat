package com.eshore;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;

@WebListener
public class MyRequestListener implements ServletRequestListener,
		ServletRequestAttributeListener {
	private static Logger log = Logger.getLogger("MyRequestListener");
	public void requestDestroyed(ServletRequestEvent arg0) {
		log.debug("一个请求消亡");
	}

	public void requestInitialized(ServletRequestEvent arg0) {
		log.debug("产生一个新的请求");
	}

	public void attributeAdded(ServletRequestAttributeEvent arg0) {
		log.debug("加入一个request范围的属性，名称为："+
		   arg0.getName()+",其值为："+arg0.getValue());
	}

	public void attributeRemoved(ServletRequestAttributeEvent arg0) {
		log.debug("移除一个request范围的属性，名称为："+arg0.getName());
	}

	public void attributeReplaced(ServletRequestAttributeEvent arg0) {
		log.debug("修改一个request范围的属性，名称为："+
			arg0.getName()+",修改前的值为："+arg0.getValue());
	}
}
