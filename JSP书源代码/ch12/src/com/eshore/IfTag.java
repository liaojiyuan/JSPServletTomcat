package com.eshore;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class IfTag extends BodyTagSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean value;
    /** *//**
     *设置属性的值。
     */
    public void setValue(boolean value)
    {
        this.value=value;
    }
    
    /** *//**
     *doStartTag方法，如果value为true，那么
     *就计算tagbody的值，否则不计算body的值。
     */
    public int doStartTag() throws JspTagException
    {
        if(value)
        {
           System.out.println("value is true");
           return EVAL_BODY_INCLUDE; 
         }  
         else
         { 
           System.out.println("value is false");
            return SKIP_BODY; 
         } 
    }
    /** *//**
     *覆盖doEndTag方法
     */
    public int doEndTag() throws JspTagException 
    {
        try 
        {  
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
