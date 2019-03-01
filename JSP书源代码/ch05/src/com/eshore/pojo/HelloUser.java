package com.eshore.pojo;

import java.util.HashMap;
import java.util.Map;

public class HelloUser {

	private Map<String,String> helloMessage = new HashMap<String,String>();
	//构建用户值，模拟从数据库中取出的值
	public HelloUser(){
		helloMessage.put("John", "Hello,John");
		helloMessage.put("Smith", "Welcome,Smith!");
		helloMessage.put("Rose", "Hi,Rose");
	}
	//根据用户，返回Map中的消息
	public String sayHello(String userName){
		return helloMessage.get(userName);
	}
}
