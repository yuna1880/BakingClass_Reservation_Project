<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 로그인 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script>
	let msg = "${param.msg}";
	if (msg != null && msg.length > 0) {
		alert(msg);
	}
	
	
	
	function checkValue() {
		if(!document.join_form.id.value){
			alert("아이디를 입력해주세요.");
			join_form.id.focus();
			return false;
		}
		if(!document.join_form.pwd1.value){
			alert("비밀번호를 입력해주세요.");
			join_form.pwd1.focus();
			return false;
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

	<form name="login_form" method="post" action="Memberlogin"
		onsubmit="return checkValue()">
		<div id="container" role="main">
			<div id="content">                                                                            
			<br><br><br><br>
		    <h1 align="center">로그인</h1>
		    <br><br>
			<h2 class="blind">Sign In</h2>
				<div class="join_content">
					<div class="row_group">
						<div class="join_row">
							<h3 class="join_title">
								<label for="id">아이디</label>
							</h3>
							<div class="name_wrap">
								<div class="">
									<span class="ps_box box_right_space"> <input type="text"
										id="id" name="id" placeholder=id class="int" maxlength="40">
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
								placeholder="password" title="Input password"
								aria-describedby="pswd1Msg" maxlength="20"> <span
								class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
							</span> <span class="error_next_box" id="pswd1Msg" style="display: none"
								aria-live="assertive"></span>
						</div>
						<div class="btn_area">
							<button type="submit" id="btnJoin" class="btn_type btn_primary">
								<span>로그인</span>
							</button>
							<button type="button" id="member_join"
								class="btn_type btn_primary"
								onclick="location.href='member_join.jsp'">
								<span>회원가입</span>
							</button>
						</div>
					</div>
				</div>
			</div>
	</form>
	<c:import url="footer.jsp"></c:import>
</body>
</html>