<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.bc.model.vo.Paging"%>
<%@page import="com.bc.model.vo.ReviewVO"%>
<%@page import="com.bc.model.dao.DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 리뷰 게시판 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<link rel="stylesheet" href="css/write_style.css"/>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" 
    integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>

<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			
			reader.onload = function (e) {
				$('#blah').attr('src',e.target.result);
			};
			reader.readAsDataURL(input.files[0]);
		}
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

	<!-- 게시판 들어와야 하는 영역  -->

	<main>
	<!--  후기 -->

		<div class="container">
			<form id="contact" action="reviewWrite" method="post" enctype="multipart/form-data">
				<h3>후기작성</h3>
				<h4> ${userid} 님, 수강하신 클래스 후기를 자유롭게 작성해주세요! </h4>
				
				<fieldset>
					<input placeholder="제목" name="title" type="text" tabindex="1" required
						autofocus>
					<select name="class_name" class="class_select" required>
						<option value="선택없음" disabled>수강 클래스 리스트</option>
						<option value="미니타르트 클래스">미니타르트 클래스</option>
						<option value="마카롱 클래스">마카롱 클래스</option>
						<option value="초콜릿 클래스">초콜릿 클래스</option>
						<option value="스콘 클래스">스콘 클래스</option>
						<option value="케이크 클래스">케이크 클래스</option>
						<option value="쿠키 클래스">쿠키 클래스</option>
					</select>
				</fieldset>
				
				<!-- 별점 -->
				<div class="product-review-stars">
					<input type="radio" id="star5" name="rating" value="5"
						class="visuallyhidden" /><label for="star5" title="Rocks!">★</label>
					<input type="radio" id="star4" name="rating" value="4"
						class="visuallyhidden" /><label for="star4" title="Pretty good">★</label>
					<input type="radio" id="star3" name="rating" value="3"
						class="visuallyhidden" /><label for="star3" title="Meh">★</label>
					<input type="radio" id="star2" name="rating" value="2"
						class="visuallyhidden" /><label for="star2" title="Kinda bad">★</label>
					<input type="radio" id="star1" name="rating" value="1"
						class="visuallyhidden" /><label for="star1"
						title="Sucks big time">★</label>
				</div>
				<p class="star_text"> 별표를 클릭하여 평가해주세요.</p>
				<fieldset>
					<textarea placeholder="어떤 점이 좋았나요?" id="blah" name="content"></textarea>
				</fieldset>
				<fieldset>
					<input type=file name="file">
				</fieldset>
				<fieldset>
					<button name="submit" type="submit" id="contact-submit"
						data-submit="...Sending">등록</button>
				</fieldset>
			</form>
		</div>
	</main>
	</div>
</div>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>