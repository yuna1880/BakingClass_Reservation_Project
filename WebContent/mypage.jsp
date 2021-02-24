<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 내정보 보기 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
	
	let clo = "${param.clo}";
	if (clo == 'close') {
		//location.reload(true);
		window.close();
	}

	function member_update(frm) {
		//frm.action = "memberupdate"; // 예전 jsp 직접 호출 방식
		frm.action = "MemberUpdateCheck"; //리스트 요청
		frm.submit();
	}
	function member_delete(frm) {
		window.name = "MemberDeleteMessage";
		window.open("memberdelete.jsp", "ow1",
					"width=500, height=500");
		
	}
	function member_reserv(frm) {
		frm.action = "reserv_myPage.jsp"; //리스트 요청
		frm.submit();
		
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

	<form method="get">
		<div id="container" role="main">
			<div id="content">
				<br><br><br><br>
				<br>
				<h2 align="center"> ${userid} 님 안녕하세요.</h2>
				<br>
				 <p align="center">원하시는 항목을 클릭해주세요.</p>
				<br>
				<div class="join_content">
					<div class="btn_area">
						<input type="button" value="정보 수정" class="btn_type btn_primary"
							onclick="member_update(this.form)"> 
						<input type="button" value="예약조회" class="btn_type btn_primary"
							onclick="member_reserv(this.form)">	
						<input type="button" value="회원 탈퇴" class="btn_type btn_primary"
							onclick="member_delete(this.form)">
					</div>
				</div>
			</div>
		</div>
	</form>
	<c:import url="footer.jsp"></c:import>
</body>
</html>