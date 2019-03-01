<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <title>JSP声明例子</title>
  </head>
  <%!
     int x,y=60,z;//多个声明以“,”分割
     String name="John";
     Date date = new Date();
   %>
   <%!
     int add(int m,int n){//计算两个数的和
         int result=0;
         result = m+n;
         return result;
     }
    %>
    <%!
     int chengji(int m,int n){//计算两个数的乘积
         int result=0;
         result = m*n;
         return result;
     }
    %>
    <%!
       class Circle{//计算圆的面积
         double r;
         Circle(double r){
         	super(); //继承空的构造方法
         	this.r = r;
         }
         double area(){
             return  Math.floor(Math.PI*r*r);//取整
         }
      }
     %>
  <body>
    <%  
        out.println("我的名字："+name);
        out.println("<br/><br/>");
        out.println("x的值为："+x);
        out.println("<br/><br/>");
        out.println("y的值为："+y);
        out.println("<br/><br/>");
        out.println("z的值为："+z);
        out.println("<br/><br/>");
        out.println("现在的时间为："+date);
        out.println("<br/><br/>");
        out.println("10与20的和："+add(10,20));
        out.println("<br/><br/>");
        out.println("10与20的积："+chengji(10,20));
     %>
    <br/>
    <br/>
    <jsp:expression>Math.random()</jsp:expression>
    <%
        Circle c = new Circle(6);
        out.println("半径为6的圆面积为："+c.area());
     %>
  </body>
</html>
