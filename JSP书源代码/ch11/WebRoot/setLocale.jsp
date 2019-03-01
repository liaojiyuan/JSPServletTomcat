<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;c:setLocale&gt;标签使用例子</title>
  </head>
  
  <body>
      <%
         Date today = new Date();
         request.setAttribute("today",today);
       %>
               输出各种国家或者地区的语言表达形式<br/>
             中文表达：<fmt:setLocale value="zh"/>   
        <fmt:formatDate value="${today}"/><hr/>
     中国台湾地区：<fmt:setLocale value="zh_TW"/>   
        <fmt:formatDate value="${today}"/><hr/>
        中国香港地区：<fmt:setLocale value="zh_HK"/>   
       <fmt:formatDate value="${today}"/><hr/>
       新加坡：<fmt:setLocale value="zh_SG"/>   
       <fmt:formatDate value="${today}"/><hr/>
     英文：<fmt:setLocale value="en"/>   
        <fmt:formatDate value="${today}"/><hr/>
        美国：<fmt:setLocale value="en_US"/>   
       <fmt:formatDate value="${today}"/><hr/>
        法国：<fmt:setLocale value="fr"/>   
        <fmt:formatDate value="${today}"/><hr/>
       德国：<fmt:setLocale value="de"/>   
       <fmt:formatDate value="${today}"/><hr/>
        日本：<fmt:setLocale value="ja"/>   
        <fmt:formatDate value="${today}"/><hr/>
        越南：<fmt:setLocale value="vi"/>   
        <fmt:formatDate value="${today}"/><hr/>
        朝鲜：<fmt:setLocale value="ko"/>   
        <fmt:formatDate value="${today}"/><hr/>
  </body>
</html>