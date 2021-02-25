<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/sidebar.css" rel ="stylesheet">
</head>
<body>
<!-- sidebar html 영역 -->
	<div class="box">
		<aside>
			<h2 class="title1">&nbspSWEETIE &nbsp BAKING</h2>
			<p class="comment"> 베이킹 클래스 전문 SWEETIE 입니다.  
						모든 클래스는 원데이 클래스로 운영되며, 자세한 내용은 상세페이지를 확인바랍니다.</p>
			<p class="comment">모든 예약은 수업시간 기준 24시간 전까지 신청가능합니다.</p>
	
			<h2 class="title2">전체메뉴</h2>
			<ul class="list">
				<form method="get">
					<li>
						<a href="noticeList">공지사항</a>
					</li>
					<!-- reviewList 컨트롤러로 이동 !!  -->
					<li>
						<a href="reviewList">수강후기</a>
					</li>
				</form>
			</ul>
		</aside>
	</div>
</body>
</html>