<%@page import="com.bc.model.vo.ReviewVO"%>
<%@page import="com.bc.model.dao.DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 리뷰 게시물 삭제 전 비밀번호 입력--%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<title>후기 삭제</title>
<script>
	function checkValue() {
		if(!document.check_form.pwd1.value){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
	}
	function member_pwd_ok(frm) {
		if(document.check_form.pwd1.value == ${pwd}) {
			frm.action = "ReviewDelete";
			frm.submit();
		} else {
			alert("비밀번호가 다릅니다. 확인해주세요.");
		}
	}
</script>
<link rel="stylesheet" href="css/style.css"/>

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
	<form name="check_form" method="post" onsubmit="return checkValue()">
		<div id="container" role="main">
			<div id="content">
				<div class="join_content">
					<br><br><br><br>
				    <h1 align="center">후기 삭제</h1>
				    <br>
				    <p align="center">후기 삭제를 위한 회원 비밀번호를 입력해주세요.</p>
				    <br>
					<div class="join_row">
						<h3 class="join_title">
							<label for="pswd1">비밀번호</label>
						</h3>
						<span class="ps_box int_pass" id="pswd1Img"> 
						<input type="password" id="pwd1" name="pwd1" class="int"
							placeholder="password" title="Input password"
							aria-describedby="pswd1Msg" maxlength="20"> 
							<span class="lbl"><span id="pswd1Span" class="step_txt"></span></span></span>
							<span class="error_next_box" id="pswd1Msg" style="display: none"
								aria-live="assertive"></span>
					</div>
					<div class="btn_area">
						<input type="hidden" name="idx" value="${param.review_idx}">
						<input type="button" value="입력" class="btn_type btn_primary" onclick="member_pwd_ok(this.form)">
						<input type="button" value="이전페이지로" class="btn_type btn_primary"
							onclick="history.back()">
					</div>
				</div>
			</div>
		</div>
	</form>
</main>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>