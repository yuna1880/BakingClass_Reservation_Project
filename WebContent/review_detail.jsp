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
						<td style="text-align: left">${vo.id}</td>
					</tr>
					<tr>
						<th>평점</th>
						<td class="align-star">
							<div class="product-review-stars">
								<c:if test="${vo.review_star eq 5}">
									<p>★★★★★</p>
								</c:if>
								<c:if test="${vo.review_star eq 4}">
									<p>★★★★</p>
								</c:if>
								<c:if test="${vo.review_star eq 3}">
									<p>★★★</p>
								</c:if>
								<c:if test="${vo.review_star eq 2}">
									<p>★★</p>
								</c:if>
								<c:if test="${vo.review_star eq 1}">
									<p>★</p>
								</c:if>
							
								
							</div>
						</td>
					</tr>
					<tr class="content">
						<td colspan="4">
							<div>
								<br>
							</div>
							<div>
								<img src="${vo.review_image}" width="600px" height="700px">
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
						<button type="button" class="btn-point" onclick="javascript:location.href='reviewList'" >목록으로</button>
						
						<!-- 리뷰 작성 아이디가 로그인 아이디랑 같을때만 수정/삭제 가능하도록.. -->
						<c:if test="${vo.id == userid}">
							<button type="button" class="btn-point" onclick="javascript:location.href='ReviewUpdateForm?idx=${vo.review_idx}'" >수정</button>	
							<button type="button" class="btn-point" onclick="javascript:location.href='review_delete.jsp?review_idx=${vo.review_idx}'" >삭제</button>	
								
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