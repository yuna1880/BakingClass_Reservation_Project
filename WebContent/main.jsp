<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DALCOCO 메인페이지</title>
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box; 
} 
li { list-style-type: none; }

a { color: black; text-decoration: none; }
a:visited { color: black; text-decoration: none;}


/*------------ header css --------------*/
header{ 
	height: 166px;
}
.box { /*클래스 박스들 너비, 중앙배치*/
	width: 1100px;
	margin: 0 auto;
}
#logo {
	float: left; /* 좌측배치 */
	margin: 20px 0 0 30px;
}
#menu {
	float: right;
	text-align: right;
	margin-right: 20px;
}
#menu li {
	display: inline-block; /* 수평방향으로 */
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

/*------------ mainimg css--------------*/

#main_image{
	height: 312px;
	background-image: url("./images/main_new.png");
	background-position: top center;
	text-align: center;
	padding: 230px 0 0 750px;
}

/*------------ product css­ --------------*/
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


/*------------ sidebar css --------------*/
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

/*------------ footer css --------------*/
footer{
	clear: both; /* float 속성 해제 footer가 새로운 줄에서 시작  */
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
<!-- header html -->
	<header>
		<div class="box">
			<div id="logo">
				<a href="main.html"><img src="./images/header_logo.jpeg" width="155px" height="140px"></a>
			</div>
			<div id="menu">
				<ul id="top_menu">
				<li>김보경님</li>
				<li>내정보</li>
				<li>관심목록</li>
				<li>예약조회</li>
				<li>로그아웃</li>
				</ul>
				<ul id="main_menu">
				<li><a href="list">HOME</a></li>
				<li><a href="#">DALCOCO소개</a></li>
				<li><a href="#">강사소개</a></li>
				</ul>
			</div>
		</div>
	</header>
	
<!-- mainimg html -->
	<section id="main_image">
		<a href="productController?cls_idx=200"><img src="./images/btn_goclass.png"></a>
	</section>
	
<!-- sidebar html­ -->
	<div class="box">
	<aside>
			<h2 class="title1">DALCOCO 베이킹</h2>
			<p class="comment"> 달코코는 예약제 베이킹 클래스입니다.
					자세한 문의는 카톡bbo로 주시면 빠르고 정확한 답변을 확인할 수 있습니다^^</p>

			<h2 class="title2">게시판</h2>
			<ul class="list">
				<li><a href="#">공지사항</a></li>
				<li><a href="#">후기게시판</a></li>
			</ul>
		</aside>
	</div>
<!-- product html -->
	<section id="main">
		<h3 class="title">클래스 목록</h3>
	 
		<c:forEach var="vo" items="${list }">
		
		<div class="items">
			<li class="i1"><a href="productController?cls_idx=${vo.cls_idx }"><img src="images/${vo.cls_image1 } "></a></li>
			<li class="i2">${vo.cls_content }</li>                                  
			<li class="i3"><a href="productController?cls_idx=100">${vo.cls_name }</a></li>
			<li class="i4">
				<div><span class="s1">1인/${vo.cls_price }</span>
				<span class="s2">${vo.teacher_id } 파티쉐</span></div>
			</li>
			</ul>
		</div>
		</c:forEach>
		 
		 
<%-- 		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=100"><img src="./images/mini2.png"></a></li>
			<li class="i2">건강은 스스로 만든다! [디저트 베이킹 입문]</li>
			<li class="i3"><a href="productController?cls_idx=100">미니타르트 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/35,000</span>
				<span class="s2">김보경 파티쉐</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=200"><img src="./images/macarong1.png"></a></li>
			<li class="i2">매일을 달콤하게~ 간식용, 선물용 [취미반]</li>
			<li class="i3"><a href="productController?cls_idx=200">마카롱 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/32,000</span>
				<span class="s2">김선바 파티쉐</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=300"><img src="./images/choco6.jpg"></a></li>
			<li class="i2">누구나 쉽고 재밌게 배우는 초콜릿 스타일링![취미반]</li>
			<li class="i3"><a href="productController?cls_idx=300">초콜릿 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/25,000</span>
				<span class="s2">권유나 쇼콜라티에</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=400"><img src="./images/scon.png"></a></li>
			<li class="i2">고급 감성을 담고 자격증까지![디저트 베이킹 중급] </li>
			<li class="i3"><a href="productController?cls_idx=400">스콘 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/30,000</span>
				<span class="s2">안스 쇼콜라티에</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=500"><img src="./images/cake.png"></a></li>
			<li class="i2">특별한 날을 더 특별하게! 창업까지 [디저트 베이킹 마스터]</li>
			<li class="i3"><a href="productController?cls_idx=500">케이크 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/40,000</span>
				<span class="s2">이상희 제빵사</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><a href="productController?cls_idx=600"><img src="./images/cookie.png"></a></li>
			<li class="i2">쿠키 위에 그려내는 동화, 아이싱부터 차근히![취미반]</li>
			<li class="i3"><a href="productController?cls_idx=600">쿠키 클래스</a></li>
			<li class="i4">
				<div><span class="s1">1인/20,000</span>
				<span class="s2">류제홍 제빵사</span></div>
			</li>
			</ul>
		</div>
		
--%>
	</section>
	<!-- footer html­ -->
	<footer>
		<div class="box">
		<div class="items">
			<h3>문의전화</h3>
			<ul>
			<li class="phone">1588-8282</li>
			<li>10:00 ~ 18:00(점심시간 12:00 - 13:00)</li>
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