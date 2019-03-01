<%@ page language="java" import="java.util.*,com.eshore.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="linl" uri="/table-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自定义表格标签示例</title>
  </head>
  <%
    //模拟从数据库中取出数据
    List<UserInfo> users = new ArrayList<UserInfo>();   
    users.add(new UserInfo("张三", 20, "Zhangsan@163.com"));
    users.add(new UserInfo("李四", 26, "Lisi@sina.com"));
    users.add(new UserInfo("王五", 33, "Wangwu@qq.com"));
    pageContext.setAttribute("users", users);
   %>
  <body>
   <center>
      用户信息<br/>
   </center>
	<table width='400px' border='1' align='center'>
	    <tr>
	        <td width='20%'>用户名</td>
	        <td width='20%'>年龄</td>
	        <td>邮箱</td>
	    </tr>
	    <!-- 使用标签输出用户信息 -->
	    <linl:table var="item" items="${users}">
	       <linl:showUserInfo user="${item}" />
	    </linl:table>
	</table>
       
  </body>
</html>
