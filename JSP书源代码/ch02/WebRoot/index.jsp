<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html;charset=UTF-8" http-equiv="Content-Type">
    <title>JSP taglib指令演示</title>
  </head>
  <body>
       <table>
           <tr>
               <td>输出值</td>
           </tr>
           <c:forEach begin="1" end="10" var="num">
              <tr>
                 <td><c:out value="${num}"></c:out></td>
              </tr>
           </c:forEach>
       </table>
  </body>
</html>
