package com.eshore.pojo;

import java.io.Serializable;

public class Circle implements Serializable{

	private static final long serialVersionUID = 1L;
	private double radius =1.0d;	//半径
	private double circleArea = 0.0d;	//圆面积
	private double circumference=0.0d;	//圆周长
	public Circle() {	//无参数的构造方法
		super();
		// TODO Auto-generated constructor stub
	}
	//属性的get和set方法
	public double getRadius() {
		return radius;
	}
	public void setRadius(double radius) {
		this.radius = radius;
	}
	public double getCircleArea() {
		circleArea = Math.PI*radius*radius;//设置圆面积
		return circleArea;
	}
	public void setCircleArea(double circleArea) {
		this.circleArea = circleArea;
	}
	public double getCircumference() {
		circumference = 2*Math.PI*radius;//设置圆周长
		return circumference;
	}
	public void setCircumference(double circumference) {
		this.circumference = circumference;
	}
}
