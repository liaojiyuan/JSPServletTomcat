<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="mt" uri="/qiaotao-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自定义版本标签示例</title>
  </head>
  <body>
        <%
 boolean test=true;
 String outValue="HelloWorld!";
 %>
    <mt:if value="<%=test%>">
      <mt:out value="<%=outValue%>">
      这是mt:out打印出的内容。
      </mt:out>
    </mt:if>

 <HR>  
 
<mt:if value="false">
     <mt:out value="<%=outValue%>">
          这些内容会显示在客户端。
       </mt:out>
</mt:if>

    <table>
        <tr>
           <td></td>
        </tr>
    </table>
  </body>
</html>
