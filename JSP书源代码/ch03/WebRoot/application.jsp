<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'application.jsp' starting page</title>
  </head>
  <body>
      <h3>指定页的实际路径、相对路径和当前应用程序路径</h3>
      <hr/>
      <table border="1" bordercolor="black">
          <tr>
              <td>当前服务器的名称和版本</td>
              <td><%=application.getServerInfo() %></td>
          </tr>
          <tr>
              <td>页面application.jsp的实际路径</td>
              <td><%=application.getRealPath("application.jsp") %></td>
          </tr>
          <tr>
              <td>页面application.jsp的URL</td>
              <td><%=application.getResource("application.jsp") %></td>
          </tr>
          <tr>
              <td>当前Web程序的路径</td>
              <td><%=application.getContextPath() %></td>
          </tr>
      </table>
  </body>
</html>
