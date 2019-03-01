<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String flag = (String)session.getAttribute("flag");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>上传页面</title>
  </head>
   <script type="text/javascript">
       var flag = <%=flag%>;
       if(flag!=null){
          if(flag){
	      	  alert("导入文件成功！");
	      }else{
	       	  alert("导入文件失败！");
	      }
       }
   </script>
    
  <body>
      <form action="<%=path %>/servlet/Upload" method="post" enctype="multipart/form-data">
           <span>请选择：</span>
           <input type="file"/>
           <input type="submit" value="上传"/>
      </form>
  </body>
</html>
