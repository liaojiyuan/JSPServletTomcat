package com.eshore.pojo;

import java.util.HashMap;
import java.util.Map;

public class User {
	
	private Map<String,String> userMap = new HashMap<String,String>();
	private static User user = null;
	private User(){
		userMap.put("zhangsan", "111111##zhangsan@sian.com");
		userMap.put("lisi", "222222##lisi@sian.com");
		userMap.put("wangwu", "333333##wangwu@sian.com");
		userMap.put("zhaoliu", "444444##zhaoliu@sian.com");
	}
	
	public static User getInstance(){
		if(user==null){
			user = new User();
		}
		return user;
	}
	public Map<String, String> getUserMap() {
		return userMap;
	}
	public void setUserMap(Map<String, String> userMap) {
		this.userMap = userMap;
	}
}
