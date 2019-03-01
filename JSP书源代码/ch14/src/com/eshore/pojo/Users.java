package com.eshore.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="users")
@XmlAccessorType(XmlAccessType.FIELD)
public class Users {
	
	@XmlElement(name="user")
	private List<User> list = new ArrayList<User>();

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(List<User> list) {
		super();
		this.list = list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public List<User> getList() {
		return list;
	}
   
}
