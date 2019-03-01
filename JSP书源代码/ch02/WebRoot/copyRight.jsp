<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" 
          pageEncoding="UTF-8"%>
<%
    Date d = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
    String t = sdf.format(d);
    String copyRightsMess = "John 版权所有 2010-"+t;
%>
<br/>
<div align="center" ><%=copyRightsMess%></div>