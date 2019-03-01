<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>fn:indexOf()函数和fn:length()函数使用例子</title>
  </head>
  <body>
    <h3>fn:indexOf()函数和fn:length()函数使用例子</h3>
    <c:set var="string1" value="This is the First my test String."/>
	<c:set var="string2" value="This <abc>is the Second my test String.</abc>"/>
	
	<p><h4>使用fn:indexOf()函数:</h4></p>
	<p>字符串1 : ${fn:indexOf(string1,"Fir")}</p>
	<p>字符串2 : ${fn:indexOf(string2,"my")}</p>
	
	<p><h4>使用fn:length()函数:</h4></p>
	<p>字符串1的长度 : ${fn:length(string1)}</p>
  </body>
</html>