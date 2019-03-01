package com.eshore;

import java.io.IOException;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class OutTag extends BodyTagSupport{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
	            System.out.println(value);
	            pageContext.getOut().write(value.toString());
	            
	        }
	        catch(IOException ex)
	        {
	            throw new JspTagException("Fatal error:hello tag conld not write to JSP out");
	        }
	        return EVAL_PAGE;
	    }
}
