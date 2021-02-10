<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체직원목록</title>
</head>
<body>
	<h1>전체직원목록</h1>
	<h3>사번, 성명, 직종, 부서코드</h3>
	<ul>
		<!-- request scope에 저장한 list -->
		<c:forEach var="vo" items="${list }">
			<li>
				${vo.id }
			</li>
		</c:forEach>
			
	</ul>
</body>
</html>