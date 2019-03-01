<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>getPart()获取上传文件body内容</title>
  </head>
  
  <body>
       <form action="<%=request.getContextPath()%>/upload.do" 
       		method="POST" enctype="multipart/form-data">
       		选择文件：<input type="file" name="filename"/>
       		<input type="submit" name="file_submit" value="提交" />
       </form>
  </body>
</html>
