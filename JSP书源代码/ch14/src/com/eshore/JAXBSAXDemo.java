package com.eshore;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

public class JAXBSAXDemo extends DefaultHandler{

	private String preTag;
	 
	//接收文档开始的通知
	@Override
    public void startDocument() throws SAXException {
        preTag = null;

    }
	//接收元素开始的通知
	@Override
    public void startElement(String uri, String localName, String qName,
            Attributes attributes) throws SAXException {
		if("user".equals(qName)) {
            System.out.println(qName+"节点的country属性值为："+attributes.getValue("country"));
        }
        if("address".equals(qName)){
        	System.out.println(qName+"节点的state属性值为："+attributes.getValue("state"));
        }
        preTag = qName;
    }
    
	//接收元素结束的通知
	@Override
    public void endElement(String uri, String localName, String qName)
            throws SAXException {
        preTag = null;
    }

    //接收元素中数据的通知，在执行完startElement和endElement方法之后执行
    public void characters(char ch[], int start, int length)throws SAXException {
        String value = new String(ch, start, length);
        if("name".equals(preTag)) {
            System.out.println("name节点的值为："+value);
        } else if("english_name".equals(preTag)) {
        	System.out.println("english_name节点的值为："+value);
        }else if("age".equals(preTag)){
        	System.out.println("age节点的值为："+value);
        }else if("sex".equals(preTag)){
        	System.out.println("sex节点的值为："+value);
        }else if("description".equals(preTag)){
        	System.out.println("description节点的值为："+value);
        }
        if("city".equals(preTag)) {
        	System.out.println("city节点的值为："+value);
        } else if("area".equals(preTag)) {
        	System.out.println("area节点的值为："+value);
        } 
    }

    public static void main(String[] args) throws Exception {
        //由XMLReaderFactory类 创建XMLReader实例
        XMLReader xmlReader = XMLReaderFactory.createXMLReader();
        //创建一事件监听类
        JAXBSAXDemo handler = new JAXBSAXDemo();
        //XMLReader解析类设定事件处理类
        xmlReader.setContentHandler(handler);
        //XMLReader解析类解析XML文件
        xmlReader.parse("F:\\users.xml");
    }
}
