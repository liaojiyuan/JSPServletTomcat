<%@ page language="java" import="java.util.*,com.eshore.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="linl" uri="/table-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自定义表格标签示例</title>
  </head>
  <%
    UserInfo user = new UserInfo();
    user.setUserName("林龙");
    user.setAge(33);
    user.setEmail("linlong@sina.com");
    pageContext.setAttribute("userinfo", user);  
   %>
  <body>
      <linl:showUserInfo user="${userinfo}" />
  </body>
</html>
