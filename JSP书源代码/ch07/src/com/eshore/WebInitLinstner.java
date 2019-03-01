package com.eshore;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class WebInitLinstner implements ServletContextListener {

	private List<AsyncContext> asyncs = new ArrayList<AsyncContext>();
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub

	}

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
        sce.getServletContext().setAttribute("asyncs", asyncs);
        new Thread(new Runnable(){

			public void run() {
				// TODO Auto-generated method stub
				while(true){
					try {
						Thread.sleep((int)(Math.random()*1000));
						double num = Math.random()*10;
						synchronized(asyncs){
							for(AsyncContext ctx:asyncs){
								ctx.getResponse().getWriter().println(num);
								ctx.complete();
							}
						}
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
        	
        }).start();
	}

}
