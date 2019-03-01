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
    <title>通过表单参数设置Bean属性值</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body>
      <form action="" method="post"> 
       	<br>
       	输入产品名称：<input name="product_name"/><br/>
       	输入产品编号：<input name="product_id"/><br/> 
       	输入产品价格：<input name="price"/><br/>
       	输入产品信息：<input name="info"/><br/>
       	<input type="submit" value="提交"/>
      </form>
      <!-- 设定product的属性值 -->
      <jsp:setProperty property="*" name="product"/>
      <br/>产品名称是：
      <!-- 获取产品名称 -->
      <%=product.getProduct_name() %>
      <br/>产品编号是：
      <!-- 获取产品编号 -->
      <%=product.getProduct_id() %>
      <br/>产品价格是：
      <!-- 获取产品价格 -->
      <%=product.getPrice() %>
      <br/>产品信息是：
      <!-- 获取产品信息 -->
      <%=product.getInfo() %>
  </body>
</html>
