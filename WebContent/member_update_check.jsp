<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 회원정보 수정 전 비밀번호 체크! --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script>
	function checkValue() {
		if(!document.check_form.pwd1.value){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
	}

	function member_pwd_ok(frm) {
		//비밀번호가 일치하면 MemberUpdate_OK.jsp페이지로 이동..
		if(document.check_form.pwd1.value == "<c:out value='${pwd}'/>") {
			frm.action = "MemberUpdate";
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
	
	<form name="check_form" method="post" action="MemberUpdate" onsubmit="return checkValue()">
		<div id="container" role="main">
			<div id="content">
				<br><br><br><br>
			    <h1 align="center">정보 수정</h1>
			    <br>
			    <p align="center">${userid} 님 , 정보 수정을 위해 가입시 비밀번호를 입력해주세요.</p>
			    <br>
				<div class="join_content">
					<div class="join_row">
						<h3 class="join_title">
							<label for="pswd1">비밀번호</label>
						</h3>
						<span class="ps_box int_pass" id="pswd1Img"> <input
							type="password" id="pwd1" name="pwd1" class="int"
							placeholder="password" title="Input password"
							aria-describedby="pswd1Msg" maxlength="20"> <span
							class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
						</span> <span class="error_next_box" id="pswd1Msg" style="display: none"
							aria-live="assertive"></span>
					</div>
					<div class="btn_area">
						<input type="button" value="입력" class="btn_type btn_primary" onclick="member_pwd_ok(this.form)">
						<input type="button" value="이전페이지로" class="btn_type btn_primary"
							onclick="history.back()">
						<input type="hidden" name="pwd" value="${pwd}">
					</div>
				</div>
			</div>
		</div>
	</form>
<c:import url="footer.jsp"></c:import>
</body>
</html>