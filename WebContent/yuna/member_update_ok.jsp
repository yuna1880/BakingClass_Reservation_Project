<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 완료</title>
<script>
		alert("탈퇴가 완료되었습니다. 안녕히가십시오.");
</script>
<%
	//세션에 들어있는 정보 모두 삭제 !
	session.invalidate();
	response.sendRedirect("login.jsp");
%>	
	
</head>
<body>

</body>
</html>