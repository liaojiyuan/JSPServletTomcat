<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'setMeta.jsp' starting page</title>
  </head>
  <body>
     <center class="aa">
        <p class="bb">
                             现在的时间为：<br/>
           <%
               out.print(""+ new Date());
               response.setHeader("refresh","1");
               response.setHeader("description","实时的显示当前时间");
               response.setHeader("keywords","实时,显示,显示当前时间");
               response.setHeader("cache-control","no-cache");
            %>
          <br/><br/>
          copyright:2013
     </center>
  </body>
</html>
