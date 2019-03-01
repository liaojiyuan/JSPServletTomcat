package com.eshore;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagCopyRight extends SimpleTagSupport{

	private String user;
	private String startY;
	@Override
    public void doTag() throws JspException, IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
    	String endY = sdf.format(new Date());
    	String copyRight = user+"&nbsp;∞Ê»®À˘”–&nbsp;&nbsp;"+startY+"-"+endY;
		getJspContext().getOut().write(copyRight);
    }
	public void setUser(String user) {
		this.user = user;
	}
	public void setStartY(String startY) {
		this.startY = startY;
	}
}
