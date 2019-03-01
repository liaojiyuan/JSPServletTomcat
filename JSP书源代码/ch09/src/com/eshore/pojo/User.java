package com.eshore.pojo;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class User implements Serializable{

	private String username="";//用户名
	private String passwd="";	//密码
	Map<String,String> userMap = null;//存放用户
	Map<String,String> errorsMap = null;//存放错误信息
	
	public User() {	//无参的构造方法
		super();
		this.username = "";
		this.passwd="";
		userMap = new HashMap<String,String>();
		errorsMap = new HashMap<String,String>();
		//添加用户，模拟从数据库中查询出的数据库
		userMap.put("zhangsan", "123zs");
		userMap.put("lisi", "1234zs");
		userMap.put("wangwu", "1234ww");
		userMap.put("zhaoqi", "1234zq");
		userMap.put("zhengliu", "1234zl");
		// TODO Auto-generated constructor stub
	}
    //数据验证
	public boolean isValidate(){
		boolean flag = true;
		//用户名验证
		if(!this.userMap.containsKey(this.username)){
			flag = false;
			errorsMap.put("username", "该用户不存在！");
			this.username = "";
		}
		//根据用户名进行密码验证
		String password = this.userMap.get(this.username);
		if(password==null||!password.equals(this.passwd)){
			flag = false;
			this.passwd = "";
			errorsMap.put("passwd", "密码错误，请输入正确密码！");
			this.username = "";
		}
		return flag;
	}
	//获取错误信息
	public String getErrors(String key){
		String errorV = this.errorsMap.get(key);
		return errorV==null?"":errorV;
	}
	//以下是属性的get和set方法，但必须是public
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
}
