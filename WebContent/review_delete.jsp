<%@page import="com.bc.model.vo.ReviewVO"%>
<%@page import="com.bc.model.dao.DAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 리뷰 게시물 삭제 전 비밀번호 입력--%>
<%

	//사용자 로그인 정보 가져오기
	String id = (String)session.getAttribute("userid");
	String pwd = (String)session.getAttribute("pwd");
	String review_idx = (String)request.getParameter("review_idx");
	
	System.out.println("현재 id : " + id);
	System.out.println("가입시 pwd : " + pwd);
	System.out.println("현재 review_idx : " + review_idx);
	
	session.setAttribute("idx", review_idx);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			frm.action = "ReviewDelete?idx=${idx}";
			frm.submit();
		} else {
			alert("비밀번호가 다릅니다. 확인해주세요.");
		}
	}
</script>
<link rel="stylesheet" href="css/style.css"/>
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box; 
} 
li { list-style-type: none; }

/*------------ header css영역 --------------*/
header{ 
	height: 166px;
}
.box { /* 클래스 박스들 너비, 중앙배치 */
	width: 1100px;
	margin: 0 auto;
}
#logo {
	float: left; /* 좌측배치 */
	margin: 20px 0 0 30px;
}
#menu {
	float: right;
	text-align: right;
	margin-right: 20px;
}
#menu li {
	display: inline-block; /* 수평방향으로 배치 */
}
#top_menu li {
	margin: 30px 0 0 10px;
}
#main_menu li {
	margin: 50px 0 0 80px;
	font-family: "맑은고딕";
	font-weight: bold;
	font-size: 20px;
}

/*------------ mainimg css영역 --------------*/

#main_image{
	height: 312px;
	background-image: url("./images/main_new.png");
	background-position: top center;
	text-align: center;
	padding: 230px 0 0 750px;
}

/*------------ product css영역 --------------*/
#main {
	width: 840px;
	float: left;
	margin: 70px 10px;
}
#main .title{
	padding-bottom: 10px;
	border-bottom: solid 1px black;
}

#main .items {
	width: 250px;
	border: solid 1px #cccccc;
	padding: 30px 0 0 20px;
	margin: 30px 0px 10px 30px;
	float: left;
	
}
#main .i1 img { width: 210px; height: 170px;}
#main .i2 {
	margin-top: 20px;
	font-size: 16px;
	color: #908076;
}
#main .i3 {
	margin-top: 10px;
	font-size: 23px;
	font-weight: bold;
}
#main .i4 {
	margin-top: 20px;
	margin-bottom: 10px;
}
#main .i4 div{
	border-top: solid 1px black;
	padding: 15px 0;
	font-size: 16px;
}
#main .i4 .s1 { color: #908076; }


/*------------ sidebar css영역 --------------*/
aside {
	width: 220px;
	float: left;
	margin: 70px 0;
}
aside .title1{
	padding: 12px;
	background-color: #0ca9a3;
	color: white;
	font-size: 18px;
}
aside .comment{
	padding: 20px 10px;
	line-height: 150%;
}

aside .title2 {
	margin-top: 20px;
	padding: 12px;
	border-top: solid 2px black;
	border-bottom: solid 1px #cccccc;
	font-size: 18px;
}
aside .list {
	margin: 20px 0;
}
aside .list li {
	margin: 10px 12px;
}

/*------------ footer css영역 --------------*/
footer{
	clear: both; /* float 속성 해제 footer가 새로운 줄에서 시작 */
	height: 260px;
	background-color: #474d54;
	color: white;
}
footer .items {
	float: left;
	margin: 40px 0 0 100px;
}
footer h3 {color:#0ca9a3;}
footer .items ul{ margin-top: 15px; }
footer .items li{ margin-top: 5px; }
footer .phone{
	font-size: 25px;
	font-weight: bold;
}

</style>
</head>
<body>
<!-- header html영역 -->
	<header>
		<div class="box">
			<div id="logo">
				<img src="./images/header_logo.jpeg" width="155px" height="140px">
			</div>
			<div id="menu">
				<ul id="top_menu">
				<li>${userid} 님</li>
				<a href = "yuna/mypage.jsp">내정보</a>
				<li>관심목록</li>
				<li>예약조회</li>
				<a href = "yuna/member_delete_ok.jsp">로그아웃</a>
				</ul>
				<ul id="main_menu">
				<li>Home</li>
				<li>DALCOCO소개</li>
				<li>강사소개</li>
				</ul>
			</div>
		</div>
	</header>

<!-- mainimg html 영역 -->
	<section id="main_image">
		<a href="#"><img src="./images/btn_goclass.png"></a>
	</section>
	
<!-- sidebar html 영역 -->
<div class="box">
	<aside>
			<h2 class="title1">DALCOCO 베이킹</h2>
			<p class="comment">예약제 원데이 베이킹 클래스 DALCOCO 입니다.</p>
			<p class="comment"> 자세한 문의는 카카오톡 : dalcoco 로 주시면 빠른 답변 드리도록 하겠습니다.</p>

			<h2 class="title2">게시판</h2>
			<ul class="list">
				<li>공지사항</li>
				<a href="reviewList"> 후기게시판</a>
			</ul>
	</aside>
</div>
	
	<!-- 페이지 내용 들어와야 하는 영역  -->
<main>
	<form name="check_form" method="post" action="checkpwd" onsubmit="return checkValue()">
		<div id="container" role="main">
			<br><br><br><br>
		    <h1 align="center">후기 삭제</h1>
		    <br>
		    <p align="center">후기 삭제를 위한 회원 비밀번호를 입력해주세요.</p>
		    <br>
			<div id="content">
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
					</div>
				</div>
			</div>
		</div>
	</form>
</main>

	<!-- footer html 영역 -->
	<footer>
		<div class="box">
		<div class="items">
			<h3>문의전화</h3>
			<ul>
			<li class="phone">1588-8282</li>
			<li>10:00 ~ 18:00 (점심시간 12:00 - 13:00)</li>
			</ul>
		</div>
		<div class="items">
			<h3>달코코(DALCOCO)</h3>
			<ul>
			<li>주소 : 경기도 용인시 수지구 123 </li>
			<li>전화 : 031-123-1234</li>
			<li>팩스 : 002-323-8222</li>
			<li>카카오톡 : dalcoco_office</li>
			<li>인스타그램: @coco_yeah</li>
			<li>이메일 : dalcoco@test.com</li>
			</ul>
		</div>
		<div class="items">
			<h3>입금 정보</h3>
			<ul>
			<li> 우리 12345-678-172023</li>
			<li> 예금주 : DALCOCO(관리자) </li>
			</ul>
			</div>
		</div>
	</footer>
</body>
</html>