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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<title> 수강 후기 </title>
<link rel="stylesheet" href="css/board_style.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<script>
	let msg = "${param.msg}";
	if (msg != null && msg.length > 0) {
		alert(msg);
	}
</script>
</head>
<body>
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
<!-- mainimg html 영역 -->
	<c:import url="mainimage.jsp"></c:import>
<!-- sidebar html 영역 -->
	<c:import url="sidebar.jsp"></c:import>
	
	
	
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
							<td>
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
				<div><span class="text-orange text-strong">${pvo.nowPage}</span> / ${pvo.totalPage} pages</div>
		</div>
		<div class="text-align-right margin-top">
			<button type="button" class="btn-point" onclick="javascript:location.href='write_review2.jsp'">후기작성
			</button>					
		</div>
		
	<%-- ============================================================= 페이징 영역 ================================================================================== --%>
		
		<div class="align-center pager">
			<%-- 파라미터  값이 null 이면 1을 넣어주고, null 이 아니면 파라미터값으로 셋팅해준다.
			<c:set var="page" value="${(param.p == null)?1:param.p}" />
			<c:set var="startNum" value="${page-(page - 1)%5}" />
			<c:set var="lastNum" value="23" />--%>

			<!--  페이징 구현  -->
				<div class="divNum">
					<%-- 이전페이지 --%>
					<c:if test="${pvo.beginPage == 1}">
							<button type="button" class="btn-search-pager" onclick="javascript:alert('이전 페이지가 없습니다.');">이전</button>
					</c:if>
				
					<c:if test="${not empty param.q}">
						<c:if test="${pvo.beginPage != 1}">
							<button type="button" class="btn-search-pager" onclick="javascript:location.href='reviewListSearch?cPage=${pvo.beginPage - 1}&f=${review_title}&q=${id}'">이전</button>
						</c:if>
					</c:if>	
					
					<c:if test="${empty param.q}">
						<c:if test="${pvo.beginPage != 1}">
							<button type="button" class="btn-search-pager" onclick="javascript:location.href='reviewList?cPage=${pvo.beginPage - 1}'">이전</button>
						</c:if>
					</c:if>	
				</div>
				
			<%-- 페이지 번호 --%>
		<div class="divNum">
			<c:forEach var="pageNo" begin="${pvo.beginPage}" end="${pvo.endPage}">

			<%-- 현재 페이지 번호 누를때 -> 해당 페이지 번호의 리스트 보여줌  --%>
				<c:if test="${pageNo == pvo.nowPage}">
					<c:if test="${empty param.q}">
						<!-- 일반리스트 -->
						<ul class="-list- center">
							<li>
								<!-- <a class="-text- orange bold" href="reviewList?cPage=${pageNo}">${pageNo}</a>-->
								<button type="button" class="btn-search-num" onclick="javascript:location.href='reviewList?cPage=${pageNo}'">${pageNo}</button>
							</li>
						</ul>
				</c:if>
				
					<c:if test="${not empty param.q}">
						<!-- 검색 -->
						<ul class="-list- center">
							<li>
								<!-- <a class="-text- orange bold" href="reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}">${pageNo}</a> -->
								<button type="button" class="btn-search-num" onclick="javascript:location.href='reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}'">${pageNo}</button>
							</li>
						</ul>
					</c:if>
				</c:if>
				
    			<%-- 현재 페이지 번호랑 다를때  --%>
	  			<c:if test="${pageNo != pvo.nowPage}">
					<ul class="-list- center">
						<c:if test="${empty param.q}">
							<ul class="-list- center">
								<li>
									<!-- <a class="-text- orange bold" href="reviewList?cPage=${pageNo}">${pageNo}</a> -->
									<button type="button" class="btn-search-num" onclick="javascript:location.href='reviewList?cPage=${pageNo}'">${pageNo}</button>
								</li>
							</ul>
						</c:if>
				
				<c:if test="${not empty param.q}">
							<ul class="-list- center">
								<li>
								<!-- <a class="-text- orange bold"href="reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}">${pageNo}</a></li> -->
								<button type="button" class="btn-search-num" onclick="javascript:location.href='reviewListSearch?cPage=${pageNo}&f=${review_title}&q=${id}'">${pageNo}</button>
							</ul>
						</c:if>
					</ul>
				</c:if>
			</c:forEach>
		</div>
			<%-- (다음)페이지 --%>
				<div class="divNum">
					<c:if test="${not empty param.q}">
						<c:if test="${pvo.endPage < pvo.totalPage}">
							<!-- <a class="btn btn-next" href="reviewListSearch?cPage=${pvo.endPage + 1}&f=${review_title}&q=${id}">다음</a> -->
							<button type="button" class="btn-search-pagers" onclick="javascript:location.href='reviewListSearch?cPage=${pvo.endPage + 1}&f=${review_title}&q=${id}'">다음</button>
						</c:if>
					</c:if>	

					<c:if test="${empty param.q}">
						<c:if test="${pvo.endPage < pvo.totalPage}">
							<!-- <a class="btn btn-next" href="reviewList?cPage=${pvo.endPage + 1}">다음</a>-->
							<button type="button" class="btn-search-pagers" onclick="javascript:location.href='reviewList?cPage=${pvo.endPage + 1}'">다음</button>
						</c:if>
					</c:if>	
					
					<!--  다음페이지 없을때  -->
					<c:if test="${pvo.endPage >= pvo.totalPage}">
						<button type="button" class="btn-search-pagers" onclick="javascript:alert('다음 페이지가 없습니다.');">다음</button>
					</c:if>
				</div>
			</div>
		</main>
	<%-- =============================================================================================================================================== --%>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>