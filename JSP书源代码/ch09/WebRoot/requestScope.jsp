<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导入引用的bean -->
<jsp:useBean id="circle" class="com.eshore.pojo.Circle" scope="request"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>测试scope为request</title>
  </head>
  <%
    //获取页面获得的圆半径，如果没有默认是1
  	String radius = request.getParameter("radius");
  	if(radius==null||radius.equals("")){
  		radius = "1";
  	}
  	double rad = Double.parseDouble(radius);
  	//设置圆半径
  	circle.setRadius(rad);
   %>
  <body>
       <form action="" method="post">
           	请输入圆的半径：<input name="radius"/><br/>
           	<input type="submit" value="提交"/><br/>
           	该Bean类对象为：<%=circle.toString()%><br/>
           	<br/>圆的半径为：<jsp:getProperty property="radius" name="circle"/>
           	<br/>圆的周长为：<jsp:getProperty property="circumference" name="circle"/>
           	<br/>圆的面积为：<jsp:getProperty property="circleArea" name="circle"/>
       </form>
  </body>
</html>