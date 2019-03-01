<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String userName= request.getParameter("userName");
    String passwd= request.getParameter("passwd");
    String address= request.getParameter("address");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>子页面</title>
  </head>
  <body>
      <center>
          <table>
              <tr>
                  <th>子页面：人员信息</th>
              </tr>
          </table>
      </center>
      <center>
          <table>
               <tr>
                  <td>用户名：<%=userName%></td>
               </tr>
               <tr>
                  <td>密   码：<%=passwd%></td>
               </tr>
               <tr>
                  <td>用户地址：<%=address%></td>
               </tr>
          </table>
      </center>
  </body>
</html>
