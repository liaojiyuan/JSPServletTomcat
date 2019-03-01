package com.eshore;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
public class ParentTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	
	private Map<String,String> map = new HashMap<String,String>();
	//标签属性id
	private String id ;
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	//该方法在子标签中调用，给父标签中的map赋值
	public void addValue(String key,String value){
		map.put(key,value);
	}
	/**
	 *  doStartTag()方法返回一个整数值，用来决定程序的后续流程。 
	 *　A.Tag.SKIP_BODY：表示标签之间的内容被忽略 
	 *　B.Tag.EVAL_BODY_INCLUDE：表示标签之间的内容被正常执行 
	 */
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			Set<String> keySet = map.keySet();
			Iterator<String> it = keySet.iterator();
			while(it.hasNext()){
				String key = it.next();
				String value = map.get(key);
				out.write(id +": <input type='text' name="+key+" value="+value+" /><br>");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}
	/** 
	 *  doEndTag：当JSP容器遇到自定义标签的结束标志，就会调用doEndTag()方法。doEndTag()方法也返回一个整数值，用来决定程序后续流程。 
　　	 *	A.Tag.SKIP_PAGE：表示立刻停止执行网页，网页上未处理的静态内容和JSP程序均被忽略任何已有的输出内容立刻返回到客户的浏览器上。 
　　	 *	B.Tag.EVAL_PAGE：表示按照正常的流程继续执行JSP网页 
	 */
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}