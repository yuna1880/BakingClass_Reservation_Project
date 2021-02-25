<%@page import="com.bc.model.vo.ClsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<title>${vo.getCls_name() }</title>
<link href="css/product.css" rel ="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function reservGo(frm){
		frm.action="reservGo?idx=${vo.getCls_idx()}&clsname=${vo.getCls_name()}&clsprice=${vo.getCls_price()}";
		frm.submit();
		
	}
</script>

<style>
 .hidden{
 	display:none;
 }
	
</style>
</head>
<body>
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
<!-- mainimg html 영역 -->
	<c:import url="mainimage.jsp"></c:import>
<!-- sidebar html 영역 -->
	<c:import url="sidebar.jsp"></c:import>


<form method="post">
	<div id="container">
			
			<h1 id="heading">${vo.getCls_name() }</h1> 
			<div id="prod-pic">
				<img src="images/${vo.getCls_image1() }" id="mini" width="270" height="220">
					<div id="small-pic">
						<img src="images/${vo.getCls_image1() }" class="small">
						<img src="images/${vo.getCls_image2() }" class="small">
						<img src="images/${vo.getCls_image3() }" class="small">
					</div>
			</div>			
			<div id="pro">
				<ul>
					<li name ="clsname" value = "${vo.getCls_name()}">클래스명 : ${vo.getCls_name() } </li>
					<li class="redtext" name="clsprice">수강료(1인) : ${vo.getCls_price()}원 </li>
					<li>개강 날짜 : ${vo.getCls_startdate().substring(0,10) } </li>
					<li>마감 날짜 : ${vo.getCls_enddate().substring(0,10) } </li>
					<li>소요 시간 : 약 4시간 
					<li>오전 : 9:00 ~ 13:00 </li>
					<li>오후 : 14:00 ~ 18:00 </li>
					<li>강사명 : ${vo.getName()} </li>
					<li>장 소 : ${vo.getCls_location() } </li>
					<input type="hidden" name="clsidx" value="${vo.getCls_idx()}"></input>
					<button type ="button" onclick="reservGo(this.form)">신청하기</button>
				</ul>						
			</div>
			<hr>
			<div id="detail">									
					
					<h2>클래스 상세 정보</h2>
					<ul>
						<li>재 료 : 계란, 생아몬드, 설탕, 무염버터 + 바닐라에센스 등  </li>
						<li>종 류 : 순수우유, 황치즈, 인절미, 딸기, 녹차 등 16가지 (수업시간에 선택)</li>
						<li>용 도 : 간식용, 선물용, 디저트메뉴용</li>
						<li>레시피 : 오프라인 공개(온라인 공개x)</li>
						<li>예 약 : 10명 이내 소수정예로 진행합니다. 예약하지 않은 동반인의 수업참여는 불가능합니다. </li>
					</ul><br>
					<h3>Information</h3>
					<p>이 수업은 초보자를 위한 '취미반' 수업이므로 예쁜모양 만들기에 집중된 마카롱 수업입니다!
					아메리카노가 필요없는 담백하고 달지 않은 마카롱을 만들 수 있습니다. 동그란 마카롱 모양부터 나만의 디자인 마카롱을 만들어 볼 수 있습니다.</p>
					<br>
					<h3>#이런점이 좋아요</h3>
					<p>1. 쫀득한 식감의 마카롱 꼬끄 만들고 싶으신분</p>
					<p>2. 홈베이킹으로 도전하고 싶으신 분</p>
					<p>3. 선물용 또는 답례품으로 초보자도 손 쉽게 도전하고 싶으신 분</p>
					<br>
					<h3>커리큘럼</h3>
					<p>머랭작업 : 아몬드가루 준비 후 머랭치기 작업을 합니다. </p>
					<p>마카로나주  : 머랭과 아몬드가루를 넣어 마카로나주 작업을 진행합니다.</p>
					<p>도안짜기  : 원하는 도안대로 알맞게 꼬끄를 짠 후 오븐에 굽습니다.</p>
					<p>필링 : 원하는 필링맛을 준비 후 꼬끄에 필링을 짭니다.</p>
					<p>아이싱작업 : 색을 입히고 각 디자인에 맞게 아이싱과 장식을 합니다.</p>
					<p>포장 : 예쁘게 사진도 찍을 수 있고 포장도 해가실 수 있게 예쁜 포장지도 드려요.</p>
			</div>
	</div>
	
	<script src="js/product.js"></script>
	
	<br><br><br><br><br><br><br><br><br><br>
	</form>
	<!-- footer html 영역 -->
<c:import url="footer.jsp"></c:import>
</body>
</html>