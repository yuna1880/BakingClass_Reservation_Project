<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업선택</title>
<script>
	function all_search(frm) {
		//frm.action = "list.jsp"; // 예전 jsp 직접 호출 방식
		frm.action = "list"; //리스트 요청
		frm.submit();
	}

</script>
</head>
<body>
	<h1>작업선택</h1>
	<form method="get">
		<input type="button" value="테스트버튼" onclick="all_search(this.form)">
	</form>
<script>
	
</script>
</body>
</html>