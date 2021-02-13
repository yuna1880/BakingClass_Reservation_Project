<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = (String)session.getAttribute("userid");

	System.out.println(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>

<script>
	var id = "<c:out value='${userid}'/>";
	alert( id + "님 환영합니다." );
	location.href = "mypage.jsp";
</script>

</head>
<body>

</body>
</html>