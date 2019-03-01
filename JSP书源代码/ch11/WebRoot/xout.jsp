<%@ page import="java.io.*,java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
   <title>&lt;x:forEach&gt;标签遍历新浪RSS新闻示例</title>
</head>
<body>
    <h3>新浪RSS节点信息:</h3>
    <!-- 导入新浪RSS的xml信息 -->
	<c:import var="xinlangInfo" url="http://localhost:8080/ch11/test.xml" charEncoding="utf8"/>
	<x:parse xml="${xinlangInfo}" var="output"/>
	<table border="1" width="100%">
	   <tr>
	      <td colspan="5" align="center">新闻信息</td>
	   </tr>
	   <tr>
	      <td align="center">内容</td>
	      <td align="center">标题</td>
	      <td align="center">类别</td>
	      <td align="center">xml路径</td>
	      <td align="center">html路径</td>
	   </tr>
	   <!-- 遍历输出新浪RSS新闻中第一个outline节点下的outline所有属性 -->
	   <x:forEach select="$output/opml/body/outline[1]//outline" var="items">
		   <tr>
		      <td align="center"><x:out select="$items/@text" /></td>
		      <td align="center"><x:out select="@title" /></td>
		      <td align="center"><x:out select="$items/@type" /></td>
		      <td align="center"><x:out select="$items/@xmlUrl" /></td>
		      <td align="center"><x:out select="$items/@htmlUrl" /></td>
		   </tr>
	   </x:forEach>
	   
	</table>
</body>
</html>