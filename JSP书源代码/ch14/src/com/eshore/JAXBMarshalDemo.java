package com.eshore;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

import com.eshore.pojo.User;

public class JAXBMarshalDemo {

	public static void main(String[] args) {
		//创建XML对象，将它保存在F盘下
        File file = new File("F:\\user.xml");
        //声明一个JAXBContext对象
        JAXBContext jaxbContext;
        try {
        	//指定映射的类创建JAXBContext对象的上下文
			jaxbContext = JAXBContext.newInstance(User.class);
			//创建转化对象Marshaller
			Marshaller m = jaxbContext.createMarshaller();
			//创建XML文件中的数据
//			User user = new User("张三", "zhangsan", "30", "男","广州市天河区", "一名出生的工程师");
//			//将Java类User对象转化到XML
//			m.marshal(user, file);
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
