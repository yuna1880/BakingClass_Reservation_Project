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
						<li>재 료 : 다크초콜릿 커버춰, 카카오, 분홍/화이트 초콜릿, 아마레또 등 </li>
						<li>종 류 : 코팅초콜릿/술초콜릿 (수업시간에 선택)</li>
						<li>용 도 : 간식용, 선물용, 디저트메뉴용</li>
						<li>레시피 : 오프라인 공개(온라인 공개x)</li>
						<li>예 약 : 10명 이내 소수정예로 진행합니다. 예약하지 않은 동반인의 수업참여는 불가능합니다. </li>
					</ul><br>
					<h3>Information</h3>
					<p>이 수업은 초보자를 위한 '취미반' 수업이므로 예쁜모양 만들기에 집중된 초콜릿 수업입니다!
					누구나 쉽게 수제 초콜릿을 만들 수 있습니다. 재료가 있어도 처음하면 막막할 수 있고 어떤 구성으로 해야할지 고민이 되시는 분들. 
					그런 고민들을 타파하기 위해 도움이 되는 클래스입니다~!</p>
					<br>
					<h3>#이런점이 좋아요</h3>
					<p>1. 직접 만든 디저트를 선물할 수 있어요.</p>
					<p>2. 선물할 때 특별한 선물용으로 좋아요.</p>
					<p>3. 디자인샘플, 도구, 재료 모두 다 준비되어 있어 몸만 가서 가볍게 만들어 올 수 있어요.</p>
					<br>
					<h3>커리큘럼</h3>
					<p>재료소개 : 간단한 재료 설명을 합니다. </p>
					<p>재료개량  : 준비된 재료를 개량하여 중탕준비를 합니다.</p>
					<p>템퍼링  : 개량한 초콜릿을 중탕시켜 적정온도로 템퍼링을 합니다.</p>
					<p>몰딩 : 템퍼링한 초콜릿을 틀에 부은 후 털어내어 코팅작업을 합니다</p>
					<p>채우기&꾸미기 : 색을 입히고 각 디자인에 맞게 아이싱과 장식을 합니다.</p>
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