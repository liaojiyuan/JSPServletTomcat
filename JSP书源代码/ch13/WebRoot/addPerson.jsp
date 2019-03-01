<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>增加人员列表</title>
    <!-- 调用日期控件的js -->  
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.js"></script>
  </head>
  <body>
      <form action="${pageContext.request.contextPath}/servlet/OperateServlet" method="post">
	      <table>
	            <tr>
	                <td>姓名</td>        
	                <td><input name="name"/></td>     
	            </tr>
	            <tr>
	                <td>性别</td>        
	                <td><select name="sex">
	                       <option value="男">男</option>
	                       <option value="女">女</option>
	                  </select></td>     
	            </tr>
	            <tr>
	                <td>年龄</td>        
	                <td><input name="age"/></td>     
	            </tr>
	            <tr>
	                <td>生日</td>    
	                <!-- 调用日期控件 -->    
	                <td><input id="d11" name="birthday" type="text" onClick="WdatePicker()"/></td>     
	            </tr>
	            <tr>
	                <td>描述</td>        
	                <td><textarea name="description"></textarea></td>     
	            </tr>
	            <tr>
	                <td colspan="2">
	                   <input type="submit" value="提交"/>
	                </td>
	            </tr>
	       </table>
      </form>
  </body>
</html>
