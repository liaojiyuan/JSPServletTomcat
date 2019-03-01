<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="linl" uri="/copyrightBodycontent-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自定义版本标签示例</title>
  </head>
  <%
  
       int num = (int)(Math.random()*6)+1;
   %>
  <body>
         <p>这里是正文的内容</p>
         <linl:loop time="<%=num %>" >
              <a href="http://www.sina.com">新浪网</a><br/>
         </linl:loop>
  </body>
</html>
