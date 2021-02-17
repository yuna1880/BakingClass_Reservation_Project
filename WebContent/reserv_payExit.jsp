<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		window.close();
	});
	
	function close(){
		window.close();
		alert("오냐?");
	}
</script>
</head>
<body>
	<input type="button" onclick="close()" value = "닫기">
</body>
</html>