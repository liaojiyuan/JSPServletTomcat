<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.eshore.pojo.Users" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>EL标签运算符示例</title>
  </head>
  <body>
  <%
         Users user = new Users();
         user.setAddress("中国");
         request.setAttribute("user",user);
         request.setAttribute("str",null);
         String[] arr = new String[]{"第1个","第2个"};
         request.setAttribute("arr",arr);
       %>
  <table border="1">
      <tr>
         <td>算术运算符：</td>
         <td>逻辑运算符：</td>
         <td>关系运算符：</td>
         <td>其他运算符：</td>
      </tr>
      <tr>
          <td> 
   加：3+3 = ${2+3}<br/>
   减：4-3 = ${4-3}<br/>
   乘：2*3 = ${2*3}<br/>
   除：3/6 = ${3/6}<br/>
   求模：10%3 = ${10%3}</td>
      
          <td>  
   逻辑与：${2<15 && 15<20}<br/>
    逻辑与： ${2<15 and 15 <20}<br/>
    逻辑或： ${2<15||15<20}<br/>
  逻辑或：${2<15 or 15<20}<br/>
  逻辑否： ${!(2<15)}<br/>
  逻辑否： ${not(2<15)}<br/></td>
       
          <td>   
   符号左右两端是否相等：2==15 : ${2 == 15 }或${2 eq 15 }<br/>
   符号左右两端是否不相等：2!=15：${2 != 15 }或${2 ne 15 }<br/>
  符号左边是否小于右边： 2<15：${2 < 15 }或${2 lt 15 }<br/>
  符号左边是否大于右边 ：2>15：${2 > 15 }或${2 gt 15 }<br/>
 符号左边是否小于或者等于右边：  2<=15：${2 <= 15 }或${2 le 15 }<br/>
  符号左边是否大于或者等于右边： 2>=15：${2 >= 15 }或${2 ge 15 }<br/></td>
       
          <td> 
   str是否为空：${empty str }<br/>
   user对象是否为空：${empty user }<br/>
   2小于15输出yes否则输出no：${2<15?'yes':'no' }<br/>
       输出user对象的address属性：${user["address"]}<br/>
       输出arr数组的第一个值：${arr[0]}<br/></td>
      </tr>
  </table>
    
  </body>
</html>
