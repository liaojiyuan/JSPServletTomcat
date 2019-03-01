package com.eshore;

import java.io.IOException;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.Tag;

public class TRTag extends BodyTagSupport{
	 
	private static final long serialVersionUID = 1L;
	private static final Tag TableTag = new TableTag();;
	private Object value;    
	    
	    /** *//**
	     *覆盖doStartTag方法
	     */
	   public void setValue(Object value)
	   {
	        this.value=value;
	   }
	   
	    public int doStartTag() throws JspTagException {
	        return EVAL_BODY_INCLUDE;
	    }
	    
	    /** *//**
	     *覆盖doEndTag方法
	     */
	    public int doEndTag()throws JspTagException
	    {

	    	try 
	        {  
	    		setParent(TableTag);
	             if(bodyContent != null)  
	             {
	                 bodyContent.writeOut(bodyContent.getEnclosingWriter()); 
	             }
	        } 
	        catch(java.io.IOException e)
	        {
	            throw new JspTagException("IO Error: " + e.getMessage());  
	        } 
	        return EVAL_PAGE;
	    }
}
