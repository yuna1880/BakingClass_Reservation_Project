<%@page import="com.bc.model.vo.ReviewVO"%>
<%@page import="com.bc.model.dao.DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 리뷰게시판 상세페이지--%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 수강 후기 </title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/board_style.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<script>
//메세지 띄워주기
let msg = "${param.msg}";
if (msg != null && msg.length > 0) {
	alert(msg);
}
</script>
</head>
<body>
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
<!-- mainimg html 영역 -->
	<c:import url="mainimage.jsp"></c:import>
<!-- sidebar html 영역 -->
	<c:import url="sidebar.jsp"></c:import>

	<!-- 페이지 내용 들어와야 하는 영역  -->
	
	<main>
	<br><br>
		<h2 class="main title">수강 후기</h2>
		<div class="margin-top first">
			<h3 class="hidden">수강후기 내용</h3>
			<table class="table">
				<tbody>
					<tr>
						<th>제목</th>
						<td class="text-align-left text-indent text-strong text-orange"
							colspan="3">${vo.review_title}</td>
						</tr>
					<tr>
						<th>작성일</th>
						<td class="text-align-left text-indent" colspan="3">${vo.review_date}</td>
					</tr>
					<tr>
						<th>수업명 </th>
						<td class="text-align-left text-indent" colspan="3">${vo.review_cls}</td>
						</tr>
					<tr>
						<th>작성자</th>
						<td>${vo.id}</td>
					</tr>
					<tr>
						<th>평점</th>
						<td>
							<div class="product-review-stars">
								<input type="radio" id="star5" name="rating" value="5"
									class="visuallyhidden" ${vo.review_star == '5' ? "checked" : ""} />
								<label for="star5" title="Rocks!">★</label>
							
								<input type="radio" id="star4" name="rating" value="4"
									class="visuallyhidden" ${vo.review_star == '4' ? "checked" : ""}/>
								<label for="star4" title="Pretty good">★</label>
							
								<input type="radio" id="star3" name="rating" value="3"
									class="visuallyhidden" ${vo.review_star == '3' ? "checked" : ""}/>
								<label for="star3" title="Meh">★</label>
							
								<input type="radio" id="star2" name="rating" value="2"
									class="visuallyhidden" ${vo.review_star == '2' ? "checked" : ""}/>
								<label for="star2" title="Kinda bad">★</label>
							
								<input type="radio" id="star1" name="rating" value="1"
									class="visuallyhidden" ${vo.review_star == '1' ? "checked" : ""}/>
								<label for="star1" title="Sucks big time">★</label>	
							</div>
						</td>
					</tr>
					<tr class="content">
						<td colspan="4">
							<div>
								<br>
							</div>
							<div>
								<img src="${vo.review_image}" width="600px" height="500px">
							<br>
								${vo.review_content}
							</div>
							<div>
								<br>
							</div>
							<div>
								<br>
							</div>
							<div>
								<br>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="margin-top text-align-center">
				<form method="get">
						<!-- reviewList 컨트롤러로 이동 !!  -->
						<a href="reviewList">목록으로</a>
						<!-- 리뷰 작성 아이디가 로그인 아이디랑 같을때만 수정/삭제 가능하도록.. -->
						<c:if test="${vo.id == userid}">
							<a href="ReviewUpdateForm?idx=${vo.review_idx}">수정</a>
							<a href="review_delete.jsp?review_idx=${vo.review_idx}">삭제</a>
						</c:if>
				</form>
		</div>
		<div class="margin-top">
			<table class="table border-top-default">
				<tbody>
					<tr>
						<th>다음글</th>
						<td colspan="3" class="text-align-left text-indent">다음글이 없습니다.</td>
					</tr>
					<tr>
						<th>이전글</th>
						<td colspan="3" class="text-align-left text-indent"><a
							class="text-blue text-strong" href="">좋아요</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
	
	<!-- footer html 영역 -->
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>