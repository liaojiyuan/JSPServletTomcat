<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); //设定页面传递参数的编码格式%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>主页面</title>
  </head>
  
  <body>
      <center>
          <table>
              <tr>
                  <th>主页面</th>
              </tr>
          </table>
      </center>
      <jsp:include page="subPage.jsp">
           <jsp:param value="Smith" name="userName"/>
           <jsp:param value="10086" name="passwd"/>
           <jsp:param value="北京丰台" name="address"/>
      </jsp:include>
  </body>
</html>
