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
<%-- 리뷰게시판 --%>
<%
	//사용자 로그인 정보 가져오기
	String id = (String)session.getAttribute("userid");

	System.out.println(id);
//
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<link rel="stylesheet" href="css/board_style.css"/>
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
					</p class="comment"> 자세한 문의는 카카오톡 : dalcoco 로 주시면 빠른 답변 드리도록 하겠습니다.</p>

			<h2 class="title2">게시판</h2>
			<ul class="list">
				<li>공지사항</li>
				<form method="get">
					<!-- reviewList 컨트롤러로 이동 !!  -->
					<a href="reviewList">후기게시판</a>
				</form>
				
			</ul>
		</aside>
	</div>
	
	<!-- 게시판 들어와야 하는 영역  -->

	<main>
		<h2 class="main title">후기 작성</h2>

		<div class="margin-top first">
			<h3 class="hidden">수강후기 내용</h3>
			<table class="table">
				<tbody>
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="subject" size="100" title="제목" 
							style="width:520px;height:25px;font-size:20px;">
						</td>
						
					</tr>
					<tr>
						<th>작성일</th>
						<td class="text-align-left text-indent" colspan="3">2019-08-18
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>ㅎㅎㅎ</td>
						<th>조회수</th>
						<td>148</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td colspan="3"></td>
					</tr>
					<tr class="content">
						<td colspan="4">너무재밌어요
							<div>
								<br>
							</div>
							<div>다음에 또 들으러 갈게요</div>
							<div>
								<br>
							</div>
							<div>
								<a href="http://www.newlecture.com/resource/spring2.zip"><b><u><font
											size="5" color="#dd8a00">사진 다운로드하기</font></u></b></a>
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
			</form>
		</div>
		<div class="margin-top">
			<table class="table border-top-default">
				<tbody>

					
				</tbody>
			</table>
		</div>
	</main>
	</div>
</div>

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
			<li>카카오톡 : bbo</li>
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