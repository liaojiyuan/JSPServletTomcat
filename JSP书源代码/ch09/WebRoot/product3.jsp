<%@ page language="java" import="java.util.*,com.eshore.pojo.Product" pageEncoding="UTF-8"%>
<!-- 设定参数编码 -->
<%
    request.setCharacterEncoding("UTF-8");
 %>
<!-- 导入引用的bean -->
<jsp:useBean id="product" class="com.eshore.pojo.Product" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>通过表单参数值设置Bean属性值</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body>
      <form action="" method="post"> 
       	<br>
       	输入产品名称：<input name="product_name1"/><br/>
       	输入产品编号：<input name="product_id1"/><br/> 
       	输入产品价格：<input name="price1"/><br/>
       	输入产品信息：<input name="info1"/><br/>
       	<input type="submit" value="提交"/>
      </form>
      <!-- 设置产品名称 -->
      <jsp:setProperty name="product" property="product_name" param="product_name1"/>
      <br/>产品名称是：
      <!-- 获取产品名称 -->
      <%=product.getProduct_name() %>
      <!-- 设置产品编号 -->
      <jsp:setProperty name="product" property="product_id"  param="product_id1"/>
      <br/>产品编号是：
      <!-- 获取产品编号 -->
      <%=product.getProduct_id() %>
      <!-- 设置产品价格 -->
      <jsp:setProperty name="product" property="price" param="price1"/>
      <br/>产品价格是：
      <!-- 获取产品价格 -->
      <%=product.getPrice() %>
      <!-- 设置产品信息 -->
      <jsp:setProperty name="product" property="info" param="info1"/>
      <br/>产品信息是：
      <!-- 获取产品信息 -->
      <%=product.getInfo() %>
  </body>
</html>
