<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>明星调查</title>
  </head>
  
  <body>
       <center>
       	       调查问卷
	       <form action="<%=request.getContextPath()%>/diaocha.do" method="POST">
	       		姓名：<input name="username"/><br/>
	       		邮箱：<input name="email"/><br/>
	       		你喜欢的明星：<br/>
	       		<select name="starname" multiple="multiple">
	       		    <option value="成龙">成龙</option>
	       		    <option value="李连杰">李连杰</option>
	       		    <option value="邓超">邓超</option>
	       		    <option value="元彪">元彪</option>
	       		    <option value="洪金宝">洪金宝</option>
	       		    <option value="周润发">周润发</option>
	       		</select>
	       		<input type="submit" value="提交"/>
	       </form>
       </center>
  </body>
</html>
