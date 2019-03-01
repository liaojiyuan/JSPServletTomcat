<%@ page import="java.io.*,java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
   <title>&lt;x:parse&gt;标签示例</title>
</head>
<body>
    <h3>新浪RSS节点信息:</h3>
    <!-- 导入新浪RSS的xml信息 -->
	<c:import var="xinlangInfo" url="http://localhost:8080/ch11/test.xml"/>
	<x:parse xml="${xinlangInfo}" var="output"/>
	<b>输出第一个outline中的各属性值：</b>: 
	
	<x:out select="$output/opml/body/outline/outline[1]/@xmlUrl" />
	<x:out select="" escapeXml=""/>
</body>
</html>