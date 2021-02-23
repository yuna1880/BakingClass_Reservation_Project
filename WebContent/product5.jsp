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
		/* frm.action="reservGo"; */
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
						<li>재 료 : 유기농 박력분, 비정제 설탕, 100% 우유 버터와 생크림, 무항생제 계란 등</li>
						<li>종 류 : 아이스박스케이크, 브라우니 롤케이크, 레드하트 초코무스케이크(수업시간때 선택)</li>
						<li>용 도 : 선물용, 디저트메뉴용</li>
						<li>레시피 : 오프라인 공개(온라인 공개x)</li>
						<li>예 약 : 10명 이내 소수정예로 진행합니다. 예약하지 않은 동반인의 수업참여는 불가능합니다. </li>
					</ul><br>
					<h3>Information</h3>
					<p>맛있는 생크림과 과일을 이용하여 만든 케이크와 내가 직접 디자인한 토퍼를 이용해서 세상에 단 하나뿐인 특별한 케이크를
					만들어 보실 수 있습니다! 선물용으로 좋고 카페에 디저트를 구상하고 계신 수강생분들에게도 추천드립니다~ </p>
					<br>
					<h3>#이런점이 좋아요</h3>
					<p>1. 혼자서 시트부터 크림, 가나슈까지 다 만들어 보고 싶으신분 추천드립니다.</p>
					<p>2. 케이크 창업에 대한 설명도 해드립니다.</p>
					<p>3. 수업 후 집에서 해보시다가 막히는 부분은 확인 후 피드백을 해드립니다.</p>
					<p>4. 인스타 대세! 디저트 도시락 케이크를 도전해보고싶으신 분. </p>
					<br>
					<h3>커리큘럼</h3>
					<p>케이크 시트 만들기 : 선택한 종류에 따라 반죽합니다. </p>
					<p>생크림 만들기 : 입맛에 맞게 간맞춰 휘팽해서 만들고 아이싱용, 모양내기용으로 나눠 준비합니다.</p>
					<p>디자인 : 원하는 디자인과 데코로 케이크를 완성해 보실 수 있습니다.</p>
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