package com.eshore;

import java.io.File;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class Dom4jDemo {

	/**
	 * Dom4j解析XML文件
	 */
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		//创建待解析的XML文件，并指定目录
        File file = new File("F:\\users.xml");
        //指定XML解析器SAXReader
		SAXReader saxReader = new SAXReader();
		try {
			//SAXReader解析XML文件
			Document document = saxReader.read(file);
			//指定要解析的节点
			List<Element> list = document.selectNodes("/users/user" );
			for(Element element:list){
				//获得节点country属性值
				 System.out.println("country----"+element.attributeValue("country"));;
				 //获得节点的子节点
				 List<Element> childList = element.elements();
				 //遍历节点的子节点
				 for(Element childelement:childList){
					 //如果是address子节点，遍历address的子元素
					 if("address".equals(childelement.getName())){
						//获得节点state属性值
						System.out.println("state----"+childelement.attributeValue("state"));
						//遍历address元素的子元素
						List<Element> addressElements =  childelement.elements();
						for(Element e:addressElements){
							System.out.println(e.getName()+"----"+e.getText());
						}
					 }
					System.out.println(childelement.getName()+"----"+childelement.getText());
				 }
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
}
