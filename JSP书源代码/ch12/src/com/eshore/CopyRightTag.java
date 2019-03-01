package com.eshore;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.tagext.TagSupport;

public class CopyRightTag extends TagSupport{
	
    @Override
    public int doStartTag(){
    	 
    	String copyRight = "林龙版权所有&nbsp;&nbsp;&copy2014";
    	try {
			pageContext.getOut().print(copyRight);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	return EVAL_PAGE; 
    }
    
    public int doEndTag(){
    	
    	return EVAL_PAGE;
    }

}
