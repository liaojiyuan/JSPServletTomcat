<%@ page  import="java.util.*,com.eshore.pojo.Product" pageEncoding="UTF-8"%>
<%@ page import="com.eshore.factory.DAOFactory" %>
<%
request.setCharacterEncoding("utf-8");//解决中文乱码
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询产品列表</title>
  </head>
  
  <body>
      <%
         String product_name = request.getParameter("product_name");//
         List<Product> list = DAOFactory.getIEmpDAOInstance().findAll(product_name);
       %>
       <form action="product_list.jsp" method="post">
           	 请输入产品名称：<input name="product_name"/>
            <input type="submit" value="提交">
       </form>
       <table border="1">
           <tr>
               <td>产品编号</td>
               <td>产品名称</td>
               <td>产品价格</td>
               <td>产品信息</td>
           </tr>
           <%
               for(int i=0;i<list.size();i++){
               		Product p = list.get(i);	//取出每一个产品
            %>
            <tr>
               <td><%=p.getProduct_id() %></td>
               <td><%=p.getProduct_name() %></td>
               <td><%=p.getPrice() %></td>
               <td><%=p.getInfo() %></td>
           </tr>
           <%} %>
       </table>
  </body>
</html>
