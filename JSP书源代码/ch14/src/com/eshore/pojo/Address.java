package com.eshore.pojo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Address {
	@XmlAttribute
    private String state;   //国家
	@XmlElement               
	private String city;    //城市
	@XmlElement
	private String area;    //地区
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(String state, String city, String area) {
		super();
		this.state = state;
		this.city = city;
		this.area = area;
	}
	 
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	@Override
	public String toString() {
		String str=state+" "+city+" "+area;
		return str;
	}

}
