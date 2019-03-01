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

public class JAXBUnmarshalDemo {

	public static void main(String[] args) {
		//创建XML对象，将它保存在F盘下
        File file = new File("F:\\user.xml");
        //声明一个JAXBContext对象
        JAXBContext jaxbContext;
        try {
        	//指定映射的类创建JAXBContext对象的上下文
			jaxbContext = JAXBContext.newInstance(User.class);
			//创建转化对象Marshaller
			Unmarshaller u = jaxbContext.createUnmarshaller();
			User user = (User)u.unmarshal(file);
			//输出对象中的内容
//			System.out.println("姓名----"+user.getName());
//			System.out.println("英文名字----"+user.getEnglish_name());
//			System.out.println("年龄----"+user.getAge());
//			System.out.println("性别----"+user.getSex());
//			System.out.println("地址----"+user.getAddress());
//			System.out.println("描述----"+user.getDescription());

		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
