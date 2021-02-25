<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 회원수정 페이지 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 정보 수정</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script>
	function member_update_ok(frm) {
		//MemberUpdate_OK.jsp페이지로 이동..
		frm.action = "MemberUpdate_OK";
		frm.submit();
	}
	
	function checkValue() {
		
		if(!document.join_form.pwd1.value){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		//비밀번호와 비밀번호 확인 입력값이 다를때
		if(document.join_form.pwd1.value != document.join_form.pwd2.value){
			alert("비밀번호가 일치하지 않습니다. 확인해주세요.");
			return false;
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

    <form name="join_form" method="post" action="MemberUpdate" onsubmit="return checkValue()">
        <!-- container -->
		<div id="container" role="main">
			<div id="content">
				<br>
				<br>
				<br>
				<br>
				<h1 align="center">내 정보 수정</h1>
				<br>
				<p align="center">변경하실 정보를 변경하실 수 있습니다.</p>
				<br>
				<!-- tg-text=title -->
				<h2 class="blind">Sign Up</h2>
				<div class="join_content">
					<!-- 아이디, 비밀번호 -->
					<div class="row_group">
						<div class="join_row">
							<h3 class="join_title">
								<label for="id">아이디</label>
							</h3>
							<div class="name_wrap">
								<div class="">
									<span class="ps_box box_right_space"> <input type="text"
										id="id" name="id" value="${userid}" class="int" maxlength="40"
										readonly>
									</span>
								</div>
							</div>
							<span class="error_next_box" id="nameMsg" style="display: none"
								aria-live="assertive"></span>
						</div>


						<div class="join_row">
							<h3 class="join_title">
								<label for="pswd1">비밀번호</label>
							</h3>
							<span class="ps_box int_pass" id="pswd1Img"> <input
								type="password" id="pswd1" name="pwd1" class="int"
								placeholder="5~12자의 영문 대소문자와 숫자로만 입력하세요." title="Input password"
								aria-describedby="pswd1Msg" maxlength="20"> <span
								class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
							</span> <span class="error_next_box" id="pswd1Msg" style="display: none"
								aria-live="assertive"></span>

							<h3 class="join_title">
								<label for="pswd2">비밀번호 확인</label>
							</h3>
							<span class="ps_box int_pass_check" id="pswd2Img"> <input
								type="password" id="pswd2" name="pwd2" class="int"
								placeholder="5~12자의 영문 대소문자와 숫자로만 입력하세요."
								title="Input password confirm" aria-describedby="pswd2Blind"
								maxlength="20"> <span id="pswd2Blind" class="wa_blind"></span>
							</span> <span class="error_next_box" id="pswd2Msg" style="display: none"
								aria-live="assertive"></span>
						</div>
					</div>
					<!-- 이름 -->
					<div class="row_group">
						<div class="join_row">
							<h3 class="join_title">
								<label for="name1">이름</label>
							</h3>
							<div class="name_wrap">
								<div class="">
									<span class="ps_box box_right_space"> <input type="text"
										id="name" name="name" value="${name}" class="int"
										maxlength="40">
									</span>
								</div>
							</div>
							<span class="error_next_box" id="nameMsg" style="display: none"
								aria-live="assertive"></span>
						</div>
						<!-- 전화번호 -->
						<div class="join_row join_mobile">
							<h3 class="join_title">
								<label for="phoneNo">휴대전화</label>
							</h3>
							<span class="ps_box box_right_space"> <input type="tel"
								id="phoneNo" name="phoneNo" value="${phone}" title="핸드폰번호"
								class="int" maxlength="40">
							</span> <span class="error_next_box" id="phoneMsg" style="display: none"
								aria-live="assertive"></span>
						</div>
						<!-- 주소 -->
						<div class="join_row">
							<h3 class="join_title">
								<label for="addr">주소</label>
							</h3>
							<div class="name_wrap">
								<div class="">
									<span class="ps_box box_right_space"> <input type="text"
										id="addr" name="addr" value="${addr}" class="int"
										maxlength="40">
									</span>
								</div>
							</div>
							<span class="error_next_box" id="nameMsg" style="display: none"
								aria-live="assertive"></span>
						</div>
					</div>

					<div class="btn_area">
						<input type="submit" value="수정완료 " class="btn_type btn_primary"
							onclick="member_update_ok(this.form)"> <input
							type="button" value="취소" class="btn_type btn_primary"
							onclick="history.back()">
					</div>
				</div>
			</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br>

                    <!-- footer -->

    </form>
    <c:import url="footer.jsp"></c:import>
</body>
</html>