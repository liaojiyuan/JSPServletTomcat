package com.eshore;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class MyHttpSessionListener implements HttpSessionListener{

	private static int count;//Í³¼ÆÊý
	
	public static int getCount() {
		return count;
	}
 
	public void sessionCreated(HttpSessionEvent se) {
		MyHttpSessionListener.count++;
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		MyHttpSessionListener.count--;
	}

}
