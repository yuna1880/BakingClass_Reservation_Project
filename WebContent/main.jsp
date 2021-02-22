<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 메인페이지</title>
<script>
	let msg = "${param.msg}";
	if (msg != null && msg.length > 0) {
		alert(msg);
	}
</script>
<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
</head>
<body>

<!-- Navbar -->

    <nav id="navbar">
        <div class="navbar__logo">
        </div>
        <div>
            <ul class="navbar__menu">
            	<c:if test="${userid != null}">
                	<li class="navbar__menu_item">${sessionScope.userid} 님</li>
                	<li class="navbar__menu_item"><a href = "yuna/mypage.jsp">내정보</a></li>
	                <li class="navbar__menu_item">예약조회</li>
	                <li class="navbar__menu_item"><a href = "yuna/logout.jsp">로그아웃</a></li>
                </c:if>
                <c:if test="${userid == null}">
                	<li class="navbar__menu_item"><a href = "yuna/login.jsp">로그인</a></li>
                	<li class="navbar__menu_item"><a href = "yuna/longin.jsp">내정보</a></li>
	                <li class="navbar__menu_item">예약조회</li>
	                <li class="navbar__menu_item"><a href = "yuna/login.jsp">로그아웃</a></li>
                </c:if>
                
                <br>
            </ul>
        </div>
    </nav>


<!-- header html영역 -->
	<header>
		<nav id="navbars">
			<div id="logo">
				<img src="images/header_logo4.jpg" width="155px" height="140px">
			</div>
			<div id="menu">

				<ul id="main_menu">
					<li>
						<a class="main_me" href = "main.jsp">Home</a>
					</li>
					<li>
						<a class="main_me">About</a>
					</li>
					<li>
						<a class="main_me">Teacher</a>
					</li>
				</ul>

			</div>
		</nav>
	</header>
	
<!-- mainimg html 영역 -->
	<section id="main_image">
		<a href="#"><img src="./images/btn_goclass.png"></a>
	</section>
	
<!-- sidebar html 영역 -->
	<div class="box">
		<aside>
			<h2 class="title1">SWEETIE BAKING</h2>
			<p class="comment"> 베이킹 클래스 전문 SWEETIE 입니다.  
						모든 클래스는 원데이 클래스로 운영되며, 자세한 내용은 상세페이지를 확인바랍니다.</p>
			<p class="comment">모든 예약은 수업시간 기준 24시간 전까지 신청가능합니다.</p>
	
			<h2 class="title2">전체메뉴</h2>
			<ul class="list">
				<form method="get">
					<li>
						<a href="noticeList">공지사항</a>
					</li>
					<!-- reviewList 컨트롤러로 이동 !!  -->
					<li>
						<a href="reviewList">수강후기</a>
					</li>
				</form>
			</ul>
		</aside>
	</div>
	
<!-- product html 영역 -->
	<section id="main">
		<h3 class="title">클래스 목록</h3>
		<div class="items">
			<ul>
				<li class="i1"><img src="./images/mini2.png"></li>
				<li class="i2">건강은 스스로 만든다! [디저트 베이킹 입문]</li>
				<li class="i3">미니타르트 클래스</li>
				<li class="i4">
		<div>
			<span class="s1">1인/35,000</span>
			<span class="s2">김보경 파티쉐</span>
		</div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><img src="./images/macarong1.png"></li>
			<li class="i2">매일을 달콤하게~ 간식용, 선물용 [취미반]</li>
			<li class="i3">마카롱 클래스</li>
			<li class="i4">
				<div><span class="s1">1인/22,000</span>
				<span class="s2">김보경 파티쉐</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><img src="./images/choco6.jpg"></li>
			<li class="i2">누구나 쉽고 재밌게 배우는 초콜릿 스타일링![취미반]</li>
			<li class="i3">초콜릿 클레스</li>
			<li class="i4">
				<div><span class="s1">1인/25,000</span>
				<span class="s2">권유나 쇼콜라티에</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><img src="./images/scon.png"></li>
			<li class="i2">고급 감성을 담고 자격증까지![디저트 베이킹 중급] </li>
			<li class="i3">스콘 클래스</li>
			<li class="i4">
				<div><span class="s1">1인/30,000</span>
				<span class="s2">권유나 쇼콜라티에</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><img src="./images/cake.png"></li>
			<li class="i2">특별한 날을 더 특별하게! 창업까지 [디저트 베이킹 마스터]</li>
			<li class="i3">케이크 클래스</li>
			<li class="i4">
				<div><span class="s1">1인/40,000</span>
				<span class="s2">이상희 제빵사</span></div>
			</li>
			</ul>
		</div>
		
		<div class="items">
			<ul>
			<li class="i1"><img src="./images/cookie.png"></li>
			<li class="i2">쿠키 위에 그려내는 동화, 아이싱부터 차근히![취미반]</li>
			<li class="i3">쿠키 클래스</li>
			<li class="i4">
				<div><span class="s1">1인/39,000</span>
				<span class="s2">이상희 제빵사</span></div>
			</li>
			</ul>
		</div>
	</section>
	
	<!-- footer html 영역 -->
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