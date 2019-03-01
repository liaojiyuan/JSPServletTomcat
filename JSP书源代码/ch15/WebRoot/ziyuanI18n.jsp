<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <title>资源国际化编程示例</title>
  </head >
    <body>  
        <fmt:bundle basename="message">  
             <fmt:message key="helloInfo"/> 
        </fmt:bundle>  
    </body>  
</html> 
