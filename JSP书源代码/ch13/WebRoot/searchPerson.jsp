<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>查询人员信息列表</TITLE>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.1.js"></script>
	    <!-- 调用日期控件的js -->  
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
	</HEAD>
	<BODY>
	    <user>
	         <name>张三</name>
	         <english-name>zhangsan</english-name>
	         <age>20</age>
	         <sex>男</sex>
	         <address>广东省广州市</address>
	         <description>他是一个工程师</description>
	    </user>
	    <user>
	         <property name="name" value="张三"/>
	         <property name="english-name" value="zhangsan"/>
	         <property name="age" value="20"/>
	         <property name="sex" value="男"/>
	         <property name="address" value="广东省广州市"/>
	         <property name="description" value="他是一个工程师"/>
	    </user>
		<center>
			<h4>人员信息列表</h4>
		</center>
		<% 
		    //获取页面查询条件
		    request.setCharacterEncoding("UTF-8");
		    String name = request.getParameter("name");
		    String sex = request.getParameter("sex");
		    String age = request.getParameter("age");
		    String description = request.getParameter("description");
		    String startTime = request.getParameter("startTime");
		    String endTime = request.getParameter("endTime");
		    Connection con = null;
	        PreparedStatement st = null;
	        ResultSet rs = null;
	        //组合SQL的where条件
	        String sql = "select * from person where 1=1 ";
	        if(name!=null&&!"".equals(name)){
	        	sql+="and name like '%"+name+"%'";
	        }
	        if(sex!=null&&!"".equals(sex)){
	        	sql+="and sex ='"+sex+"'";
	        }
	        if(age!=null&&!"".equals(age)){
	        	sql+="and age ='%"+age+"'";
	        }
	        if(description!=null&&!"".equals(description)){
	        	sql+="and description like '%"+description+"%'";
	        }
	        if(startTime!=null&&!"".equals(startTime)){
	        	sql+="and birthday >= '"+startTime+"'";
	        }
	        if(endTime!=null&&!"".equals(endTime)){
	        	sql+="and birthday <= '%"+endTime+"'";
	        }
	        try {
				Class.forName("com.mysql.jdbc.Driver");     //注册数据库
				con = DriverManager.getConnection(          //获取数据库连接
				"jdbc:mysql://localhost:3306/testWeb","root","admin");
				st = con.prepareStatement(sql);             //获取Statement
				rs = st.executeQuery(sql);                  //执行查询，返回结果集
		 %>
		 <form action="searchPerson.jsp" method="post">
			 <table>
			     <tr>
			         <td>姓名：</td>
			         <td><input name="name"/></td>
			         <td>性别：</td>
			         <td><select name="sex" style="width:100">
			                <option value="">无限制</option>
			                <option value="男">男</option>
			                <option value="女">女</option>
			           </select></td>
			     </tr>
			     <tr>
			         <td>年龄：</td>
			         <td><input name="age"/></td>
			         <td>备注：</td>
			         <td><input name="description"/></td>
			     </tr>
			     <td colspan="4">出生日期： 
	              <label> 从：</label><input class="Wdate"  name="startTime" id="startBeginTime" onFocus="WdatePicker({dateFmt:'yyyyMMdd HH:mm:ss',minDate:'1900-01-01'})"/>
			          到
			     <input   class="Wdate" name="endTime" id="endBeginTime" onFocus="WdatePicker({dateFmt:'yyyyMMdd HH:mm:ss',minDate:'1900-01-01'})"/></td>
			     </tr>
			     <tr>
			         <td>
			             <input type="submit" value="提交">
			             <input type="reset" value="重置">
			         </td>
			     </tr>
			 </table>
		 </form>
		 <br/>
		 <br/>
		<table border="1" width="100%" cellpadding="2" cellspacing="1">
			<tr>
				<td>选择</td>
				<td>姓名</td>
				<td>年龄</td>
				<td>性别</td>
				<td>生日</td>
				<td>备注</td>
				<td>操作</td>
			</tr>
		    <%
		        //遍历结果集ResultSet
				while(rs.next()){
					int id = rs.getInt("id");              //获取ID
					String name2  = rs.getString("name");  //获取姓名
					int age2 = rs.getInt("age");           //获取年龄
					String sex2  = rs.getString("sex");    //获取性别
					Date birthday = rs.getDate("birthday"); //获取出生日期
					String description2 = rs.getString("description"); //获取备注
					out.println("<tr>");
					out.println("<td><input type=\"checkbox\" name=\"checkPerson\" value=\""+id+"\"></td>");
					out.println("<td >"+name2+"</td>");
					out.println("<td >"+age2+"</td>");	 
					out.println("<td >"+sex2+"</td>");
					out.println("<td >"+birthday+"</td>");
					out.println("<td >"+description2+"</td>");
					out.println("<td><a href=\"modify.jsp?id="+id+"\">修改</a>&nbsp;&nbsp;"+
					"<a href=\"delete.jsp?id="+id+"\" onclick=\"return confirm('确定删除该记录？')\">删除</a></td>");
				    out.println("</tr>");
				}
		     %>
		</table>
		<table>
		     <tr>
		        <td>
		                              全选<input type="checkbox" onclick="selectPerson(this);"/>
		        </td>
		     </tr>
		</table>
		<%
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//记住关闭连接
				try {
					rs.close();
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
	</BODY>
	<script type="text/javascript">
         function selectPerson(obj){
              $('input[name="checkPerson"]').attr("checked",obj.checked);  
         }
	</script>
</HTML>

