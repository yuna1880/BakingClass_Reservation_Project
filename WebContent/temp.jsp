<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function test(frm){
		frm.action = "reserv_form";
		frm.submit();
	}
</script>
</head>
<body>
<h1>테스트 페이지입니다.</h1>
	<form method="get">
		<tr>
			<td>클래스명 </td>
			<td><input type="text" name="clsName"></td>
		</tr>
		<tr>
			<td>1인당가격</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td>클래스번호 </td>
			<td><input type="text" name="clsNum" value ="2"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" value = "lsh3748"></td>
		</tr>
		
		<tr>
			<td><input type="button" value="확인" onclick="test(this.form)"></td>
		</tr>
	</form>
</body>
</html>