<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导入引用的bean -->
<jsp:useBean id="circle2" class="com.eshore.pojo.Circle" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>测试scope为page</title>
  </head>
  <body>
        pageScope2.jsp页面信息：<br/>
		该Bean类对象为：<%=circle2.toString()%><br/>
       <br/>圆的半径为：<jsp:getProperty property="radius" name="circle2"/>
       <br/>圆的周长为：<jsp:getProperty property="circumference" name="circle2"/>
       <br/>圆的面积为：<jsp:getProperty property="circleArea" name="circle2"/>
  </body>
</html>