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
						<li>재 료 : 100% 우유버터와 우유생크림, 유기농 밀가루, 무항생제계란, 비정제 설탕, 유럽산 초콜릿과 크림치즈 </li>
						<li>종 류 : 팥절미, 밀크유, 초코퐁당, 와인무화과 등 (수업시간때 선택)</li>
						<li>용 도 : 간식용, 선물용, 디저트메뉴용</li>
						<li>레시피 : 오프라인 공개(온라인 공개x)</li>
						<li>예 약 : 10명 이내 소수정예로 진행합니다. 예약하지 않은 동반인의 수업참여는 불가능합니다. </li>
					</ul><br>
					<h3>Information</h3>
					<p>고소한 버터쿠키에 고퀄리티의 아이싱을 장식하여 선물하기에도 좋은 쿠키 클래스입니다. 15~20개 정도의 아이싱쿠키+버터쿠키를
					가져가실 수 있습니다! 아이싱 해보고 원하시는 자유 쿠키도 만들어 보실 수 있게끔 넉넉히 반죽을 준비하고 있습니다~ 원하는 컬러 2가지를 함께 조색까지 
					해보실 수 있고, 특별한 체험활동을 희망하시는 분들이 많이 찾아주시는 클래스입니다.</p>
					<br>
					<h3>#이런점이 좋아요</h3>
					<p>1. 수제간식을 만들어보고 싶었지만 조리도구 없거나, 계량법이 어려워 망설이셨던 분께 좋아요.</p>
					<p>2. 아이싱쿠키 꾸미기에 더 관심있는 수강생들에게 추천해요.  </p>
					<p>3. 특별한 취미활동, 선물용으로 좋아요.</p>
					<br>00.
					<h3>커리큘럼</h3>
					<p>아이싱 크림 조색 : 알록달록 아이싱크림을 조색합니다. </p>
					<p>굽는 시간 : 쿠키를 굽는 시간동안 디자인을 도안합니다.</p>
					<p>아이싱크림 도포 : 여러가지 기법을 이용하여 아이싱 크림을 도포합니다.</p>
					<p>건조작업 : 아이싱쿠키를 건조시켜 말립니다.</p>
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