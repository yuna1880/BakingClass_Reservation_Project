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
						<li>재 료 : 100% 우유버터와 생크림, 유기농 밀가루, 고메버터, 유럽산 초콜릿&치즈 등 </li>
						<li>종 류 : 16종 스콘(수업시간에 선택)</li>
						<li>용 도 : 간식용, 선물용, 디저트메뉴용</li>
						<li>레시피 : 오프라인 공개(온라인 공개x)</li>
						<li>예 약 : 10명 이내 소수정예로 진행합니다. 예약하지 않은 동반인의 수업참여는 불가능합니다. </li>
					</ul><br>
					<h3>Information</h3>
					<p>16가지 모두 식감과 맛 당도가 다른 스콘 클래스입니다. 각각 레시피에서도 다양한 맛으로 변화를 줄 수 있어 나만의 스콘을 만들 수 있어요!
					손으로 반죽하는 방법, 기계로 반죽하는 방법 모두 실습합니다.</p>
					<br>
					<h3>#이런점이 좋아요</h3>
					<p>1. 식감과 맛 당도를 모두 설정이 가능합니다.</p>
					<p>2. 건강하게 만들수 있습니다.  </p>
					<p>3. 관련 자격증에 대한 팁도 알려드립니다. (베이킹 중급자 해당)</p>
					<br>
					<h3>커리큘럼</h3>
					<p>기본 설명 : 재료와 도구를 통해 타르트를 만드는 과정 및 유의할 점 등에 대한 설명을 진행합니다. </p>
					<p>재료 계량 : 계량하는 방법을 자세하고 친절하게 알려드리고 레시피를 제공해드려요.</p>
					<p>굽는 시간 : 굽는 시간동안 시식할 수 있고</p>
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