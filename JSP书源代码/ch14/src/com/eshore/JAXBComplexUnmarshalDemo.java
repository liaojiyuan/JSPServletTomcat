package com.eshore;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import com.eshore.pojo.Address;
import com.eshore.pojo.User;
import com.eshore.pojo.Users;

public class JAXBComplexUnmarshalDemo {

	public static void main(String[] args) {
		//创建XML对象，将它保存在F盘下
		File file = new File("F:\\users.xml");
		//声明一个JAXBContext对象
		JAXBContext jaxbContext;
		try {
			//指定映射的类创建JAXBContext对象的上下文
			jaxbContext = JAXBContext.newInstance(Users.class);
			//创建转化对象Unmarshaller 
			Unmarshaller u = jaxbContext.createUnmarshaller();
			//转化指定XML文档为Java对象
			Users users = (Users)u.unmarshal(file);
			List<User> list = users.getList();
			for(User user:list){
				//输出对象中的内容
				System.out.println("输出----"+user.toString());
			}
			
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
