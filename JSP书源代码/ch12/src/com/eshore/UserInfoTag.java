package com.eshore;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class UserInfoTag extends TagSupport{
	 
	private static final long serialVersionUID = 1L;
	private UserInfo user;

    @Override
    public int doStartTag() throws JspException {

        try {
            JspWriter out = this.pageContext.getOut();
            if(user == null) {
                out.println("No UserInfo Found...");
                return SKIP_BODY;
            }
            String content = "<td>"+user.getUserName()+"</td>";
            content+="<td>"+user.getAge()+"</td>";
            content+="<td>"+user.getEmail()+"</td>";
            out.println("<tr>"+content+"</tr>");

        } catch(Exception e) {
            throw new JspException(e.getMessage());
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
 
    @Override
    public void release() {
        //ÊÍ·Å×ÊÔ´
        super.release();
        this.user = null;

    }
    
    public UserInfo getUser() {
        return user;
    }
    public void setUser(UserInfo user) {
        this.user = user;
    }

}
