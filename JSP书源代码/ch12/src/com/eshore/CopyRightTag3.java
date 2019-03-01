package com.eshore;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class CopyRightTag3 extends BodyTagSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int time;
    @Override
    public int doStartTag(){
    	 
    	return EVAL_BODY_INCLUDE; 
    }
    public int doAfterBody(){
    	if(time>1){
    		time--;
    		return EVAL_BODY_AGAIN;
    	}else{
    		return SKIP_BODY;
    	}
    	
    }
    public int doEndTag(){
    	JspWriter out = pageContext.getOut();
    	try {
			out.print("");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return EVAL_PAGE;
    }
	 
	public void setTime(int time) {
		this.time = time;
	}
}
