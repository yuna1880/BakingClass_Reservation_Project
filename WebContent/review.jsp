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
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 수강 후기 </title>
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
<script>
//메세지 띄워주기.
let msg = "${param.msg}";
if (msg != null && msg.length > 0) {
	alert(msg);
}
</script>
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
				<a href = "yuna/logout.jsp">로그아웃</a>
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

	<main class="main">
		<h2 class="main title">수강후기</h2>

		<!-- 검색  -->
		<div class="search-form margin-top first align-right">
			<h3 class="hidden">수강후기 검색폼</h3>
			<form class="table-form" action="reviewListSearch">
				<fieldset>
					<legend class="hidden">수강후기 검색 필드</legend>
					<label class="hidden">검색분류</label> 
					<!-- value가 갈때, f라는 key값으로 전달될 것이다. -->
					<select name="f">
						<!-- value가  title일때, selected되도록 -->
						<option ${(param.f == "review_title")? "selected":""} value="review_title">글제목</option>
						<option ${(param.f == "id")? "selected":""} value="id">아이디</option>
					</select> 
					<!-- 사용자가 검색창에 입력한 값 q로 전달. -->
					<label class="hidden">검색어</label>
					<input type="text" name="q" value="${param.q}" />
					<input class="btn btn-search" type="submit" value="검색" />
				</fieldset>
			</form>
			
			<input type="button" value="WRITE" class="btn btn-5"
							onclick="javascript:location.href='write_review2.jsp'">
		</div>

		<!-- 게시판 목록 -->
		<div class="notice margin-top">
			<h3 class="hidden">후기 게시판 목록</h3>
			<table class="table">
				<thead>
					<tr>
						<th class="w60">번호</th>
						<th class="expand">제목</th>
						<th class="w100">작성자</th>
						<th class="w100">작성일</th>
						<th class="w60">조회수</th>
					</tr>
				</thead>
				<tbody>
<!--  글 시작  -->
				<c:if test="${empty list}">
					<tr>
						<p>★ 게시글이 없습니다. 다시 확인해주세요 ★</p>
					</tr>
				</c:if>
				<c:if test="${not empty list}">
					<c:forEach var="list" items="${list}">
						<tr>
							<td>${list.review_idx}</td>
							<td class="title indent text-align-left">
								<form method="get">
									<a href="reviewOne?review_idx=${list.review_idx}">${list.review_title}</a>
								</form>
							</td>
							<td>${list.id}</td>
							<td>
								<fmt:formatDate pattern="yyyy-MM-dd" value="${list.review_date}"/>
							</td>
							<td>${list.review_hit}</td>
						</tr>
					</c:forEach>
					</c:if>	
				</tbody>
			</table>
		</div>
		
		
		<div class="indexer margin-top align-right">
			<h3 class="hidden">현재 페이지</h3>
			<div>
				<span class="text-orange text-strong">${pvo.nowPage}</span> / ${pvo.totalPage} pages
			</div>
		</div>
		
		
		
	<%-- ============================================================= 페이징 영역 ================================================================================== --%>
		
		<div class="margin-top align-center pager">

			<%-- 파라미터  값이 null 이면 1을 넣어주고, null 이 아니면 파라미터값으로 셋팅해준다.
			<c:set var="page" value="${(param.p == null)?1:param.p}" />
			<c:set var="startNum" value="${page-(page - 1)%5}" />
			<c:set var="lastNum" value="23" />--%>


			<!--  페이징 구현  -->
				<div>
					<%-- 이전페이지 --%>
					
					<c:if test="${pvo.beginPage == 1}">
						<a class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</a>
					</c:if>
				
					<c:if test="${not empty param.q}">
						<c:if test="${pvo.beginPage != 1}">
							<a class="btn btn-next" href="reviewListSearch?cPage=${pvo.beginPage - 1}&f=${review_title}&q=${id}">이전</a>
						</c:if>
					</c:if>	
					
					<c:if test="${empty param.q}">
						<c:if test="${pvo.beginPage != 1}">
							<a class="btn btn-next" href="reviewList?cPage=${pvo.beginPage - 1}">이전</a>
						</c:if>
					</c:if>	
				</div>
				
	
			<%-- 페이지 번호 --%>

			<c:forEach var="pageNo" begin="${pvo.beginPage}" end="${pvo.endPage}">

			<%-- 현재 페이지 번호 누를때 -> 해당 페이지 번호의 리스트 보여줌  --%>
	  		
				<c:if test="${pageNo == pvo.nowPage}">
					<c:if test="${empty param.q}">
						<!-- 일반리스트 -->
						<ul class="-list- center">
							<li><a class="-text- orange bold"
								href="reviewList?cPage=${pageNo}">${pageNo}</a></li>
						</ul>
				</c:if>
				
					
					<c:if test="${not empty param.q}">
						<!-- 검색 -->
						<ul class="-list- center">
							<li><a class="-text- orange bold"
								href="reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}">${pageNo}</a></li>
						</ul>
					</c:if>
				</c:if>
				
    			<%-- 현재 페이지 번호랑 다를때  --%>
	  			<c:if test="${pageNo != pvo.nowPage}">
					<ul class="-list- center">
						<c:if test="${empty param.q}">
							<ul class="-list- center">
								<li><a class="-text- orange bold"
									href="reviewList?cPage=${pageNo}">${pageNo}</a></li>
					</ul>
				</c:if>
				
				<c:if test="${not empty param.q}">
							<ul class="-list- center">
								<li><a class="-text- orange bold"
									href="reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}">${pageNo}</a></li>
							</ul>
						</c:if>
					</ul>
				</c:if>
				
			</c:forEach>
			

			<%-- (다음)페이지 --%>
				<div>
					<c:if test="${not empty param.q}">
						<c:if test="${pvo.endPage < pvo.totalPage}">
							<a class="btn btn-next" href="reviewListSearch?cPage=${pvo.endPage + 1}&f=${review_title}&q=${id}">다음</a>
						</c:if>
					</c:if>	

					<c:if test="${empty param.q}">
						<c:if test="${pvo.endPage < pvo.totalPage}">
							<a class="btn btn-next" href="reviewList?cPage=${pvo.endPage + 1}">다음</a>
						</c:if>
					</c:if>	
					
					<!--  다음페이지 없을때  -->
					<c:if test="${pvo.endPage >= pvo.totalPage}">
						<a class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</a>
					</c:if>
				</div>

			</div>
		</main>
		
		
	
	<%-- =============================================================================================================================================== --%>


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