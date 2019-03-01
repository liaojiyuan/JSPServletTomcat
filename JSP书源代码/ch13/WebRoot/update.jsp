<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改人员</title>
    <!-- 调用日期控件的js -->  
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
  </head>
  <%
     //获取传递的参数信息
     Integer id = (Integer)request.getAttribute("id");
     String name = (String)request.getAttribute("name");
     Integer age = (Integer)request.getAttribute("age");
     String sex = (String)request.getAttribute("sex");
     String birthday = (String)request.getAttribute("birthday");
     String description = (String)request.getAttribute("description");
   %>
  <body>
      <form action="${pageContext.request.contextPath}/servlet/ModifyServlet?id=<%=id%>" method="post">
	      <table>
	            <tr>
	                <td>姓名</td>        
	                <td><input name="name" value="<%=name %>" />
	                </td>     
	            </tr>
	            <tr>
	                <td>性别</td>        
	                <td><select name="sex">
	                        <%
	                          if("男".equals(sex)){
	                       %>
	                       <option value="男" selected>男</option>
	                       <%
	                         }else{
	                        %>
	                        <option value="男" >男</option>
	                        <%
	                         }
	                         %>
	                       <%
	                          if("女".equals(sex)){
	                       %>
	                       <option value="女" selected>女</option>
	                       <%
	                         }else{
	                        %>
	                        <option value="女" >女</option>
	                        <%
	                         }
	                         %>
	                  </select></td>     
	            </tr>
	            <tr>
	                <td>年龄</td>        
	                <td><input name="age" value="<%=age%>"/></td>     
	            </tr>
	            <tr>
	                <td>生日</td>    
	                <!-- 调用日期控件 -->    
	                <td><input id="d11" name="birthday" type="text" onClick="WdatePicker()" value="<%=birthday %>"/></td>     
	            </tr>
	            <tr>
	                <td>描述</td>        
	                <td><textarea name="description" ><%=description %></textarea></td>     
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
