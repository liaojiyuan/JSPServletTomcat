package com.eshore;

import java.util.Collection;
import java.util.Iterator;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class TableTag extends TagSupport {
 
	private static final long serialVersionUID = 1L;
	private Collection items;
    private Iterator it;
    private String var;
    
    @Override
    public int doStartTag() throws JspException {

        if(items == null || items.size() == 0) return SKIP_BODY;
        it = items.iterator();  
        if(it.hasNext()) {
            pageContext.setAttribute(var, it.next());
        }
        return EVAL_BODY_INCLUDE;

    }

    @Override
    public int doAfterBody() throws JspException {
        if(it.hasNext()) {
            pageContext.setAttribute(var, it.next());
            return EVAL_BODY_AGAIN;
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
    public void setItems(Collection items) {
        this.items = items;
    }

    public void setVar(String var) {
        this.var = var;

    }


}
