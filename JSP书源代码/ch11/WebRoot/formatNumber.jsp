<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>&lt;fmt:formatNumber&gt;标签使用例子</title>
  </head>
  
  <body>
  <center>
  	   formatNumber标签使用例子<br/>
  	   <c:set var="numberT" value="123456789.8796"/>
  	   初始值：<fmt:formatNumber value="${numberT}"/><br/>
  	  设置为货币时：
  	 <fmt:formatNumber value="${numberT}" type="currency"/><br/>
  	 使用科学计数法时，整数部分部分最多1位，小数最多3位、最少2位：
  	 <fmt:formatNumber value="${numberT}" pattern="###.##E0"
  	    maxIntegerDigits="1" maxFractionDigits="3" minFractionDigits="2"/><br/>
  	 设定为货币，符号用美元符，区隔数字：
  	  <fmt:formatNumber value="${numberT}" type="currency" 
  	      currencySymbol="$" groupingUsed="true"/><br/>
  	      
  	      <fmt:parseNumber value="" integerOnly="" parseLocale=""
  	        pattern="" scope="" type="" var=""/>
  </center>
  </body>
</html>