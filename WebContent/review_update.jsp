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
<%-- 리뷰 수정 폼  --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/write_style.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<style>
input[type='file']{
	display:none;
}
</style>
<script>
	
	document.addEventListener("DOMContentLoaded", function(){
		
		document.querySelector("#fileAttach").addEventListener("click", function() {
			document.querySelector("#fileUpdate").click();
		});
		
		//파일 새로 업로드시 -> false
		document.querySelector("#fileUpdate").addEventListener("change", function() {
			//선택한 0번째 파일의 이름을 fileName에 저장.
			let fileName = this.files[0].name;
			// 파일 이름을 빈 칸에 표시!
			document.querySelector("#fileName").innerText = fileName;
			document.querySelector("#removed").value = "false";
		});
		
		document.querySelector("#fileDelete").onclick = function () {
			document.querySelector("#fileName").innerText = "첨부된 파일이 없습니다."
			document.querySelector("#fileUpdate").value = "";
			document.querySelector("#removed").value = "true";
		};
		
	});

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
			<form id="contact" method="post" action="reviewUpdate" enctype="multipart/form-data">
				<h3>후기수정</h3>
				<h4>${userid} 님, 수정할 내용을 입력 후, 등록 버튼을 눌러주세요.</h4>
				<fieldset>
					<input value="${vo.review_title}" name="title" type="text" tabindex="1" required
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
				
				
				<!-- 별점 선택한 값으로 checked -->
				
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
				<p class="star_text">별표를 클릭하여 평가해주세요.</p>
				
				<fieldset>
					<textarea placeholder="어떤 점이 좋았나요?" name="content" tabindex="5"
						required>${vo.review_content}</textarea>
				</fieldset>
				
				<fieldset>
					<p id="fileName">${vo.review_image}</p>
					<input type="file" name="file" id="fileUpdate">
					<button type="button" id="fileAttach">파일수정</button>
					<button type="button" id="fileDelete">파일삭제</button>
					<input type="hidden" id="removed" name="removed" value="false">
					<input type="hidden" name="idx" value="${vo.review_idx}">
				</fieldset>
				<fieldset>
					<button type="submit" id="contact-submit">등록</button>
				</fieldset>
			</form>
		</div>
	</main>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>