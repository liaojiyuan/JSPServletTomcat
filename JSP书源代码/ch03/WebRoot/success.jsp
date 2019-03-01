<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>success.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
   <%! 
       //声明一个用户集合,模拟从数据库中取出用户集
       Map<String, String> map =new HashMap<String, String>(); 
       //声明验证的标识
       boolean flag = false;
   %> 
	<% 
	    //向集合添加数据
        map.put("John","123456");
        map.put("Smith","222222");
        map.put("Bob","333333");
        map.put("Bruth","666666");
	 %>
     <%!
        //声明验证方法
        boolean validate(String username,String password){
	        String passwd = map.get(username);
	        if(passwd!=null&&passwd.equals(password)){
	            return true;
	        }else{
	        	return false;
	        }
        }
      %>
      <%
          //获得页面提交的用户名跟密码
          String username = request.getParameter("username");
          String password = request.getParameter("password");
          if(username==null||username==""||password==null||password==""){
              response.sendRedirect("login.jsp");
          }
          flag = validate(username,password);
          if(flag){
              //保存在session对象中
              session.setAttribute("username",username);
              session.setAttribute("password",password);
              response.sendRedirect("class.jsp");
          }
       %>
	<body>
         <center>
             <font size="6">用户登录</font>
         </center>
         <br/>
         <center>
             <%if(!flag){ %>
                 <a href="login.jsp">重新登录系统</a>
             <%} %>
         </center>
  </body>
</html>
