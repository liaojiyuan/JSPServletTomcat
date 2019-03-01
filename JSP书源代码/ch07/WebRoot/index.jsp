<html>
	<head>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery-1.8.1.js"></script>
		<style>
.textareaStyle {
	width: 100%;
	height: 100%;
	border: 0;
}
</style>
<script type="text/javascript">
	function update(data) {			
	   var result = $('#result')[0];
		result.value = result.value + data + '\n';
	}
</script>
	</head>
	<body style="margin: 0; overflow: hidden">
		<table width="100%" height="100%" border="0" >
			<tr>
				<td colspan="2">
					<textarea name="result" id="result" readonly="true" wrap="off"
						style="padding: 10; overflow: auto" class="textareaStyle"></textarea>
				</td>
			</tr>
		</table>
		<iframe id="autoFrame" style="display: none;" src="/ch07/AsyncContextServlet"></iframe>
	</body>
</html>


