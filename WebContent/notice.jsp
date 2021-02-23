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
<%-- 공지게시판 --%>
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
<link rel="stylesheet" href="css/board_style.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
<title> 메인페이지</title>
<script>
	let msg = "${param.msg}";
	if (msg != null && msg.length > 0) {
		alert(msg);
	}
</script>
<link rel="stylesheet" href="css/board_style.css"/>
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
				<h2 class="main title">공지사항</h2>
				<div class="search-form margin-top first align-right">
					<h3 class="hidden">공지사항 검색폼</h3>
					<form class="table-form">

						<fieldset>
							<legend class="hidden">공지사항 검색 필드</legend>
							<label class="hidden">검색분류</label>
							<select name="f">
								<option value="title">제목</option>
								<option value="writerId">작성자</option>
							</select>
							<label class="hidden">검색어</label>
							<input type="text" name="q" value="" />
							<input class="btn btn-search" type="submit" value="검색" />
						</fieldset>
					</form>
				</div>

				<div class="notice margin-top">
					<h3 class="hidden">공지사항 목록</h3>
					<table class="table">
						<thead>
							<tr>
								<th class="w60">번호</th>
								<th class="expand">제목</th>
								<th class="w100">작성자</th>
								<th class="w100">작성일</th>
								<th class="w100">조회수</th>
								<th class="w40">공개</th>
								<th class="w40">삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty list}">
								<tr>
									<p>★ 게시글이 없습니다. 다시 확인해주세요 ★</p>
								</tr>
							</c:if>
							<c:if test="${not empty list}">
								<c:forEach var="list" items="${list}">
									<tr>
										<td>${list.notice_idx}</td>
										<td><a href="detail.html">${list.notice_title}</a></td>
										<td>${list.notice_name}</td>
										<td>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${list.notice_date}"/>
											
										</td>
										<td>${list.notice_hit}</td>
										<td><input type="checkbox" name="open"></td>
										<td><input type="checkbox" name="del"></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
				<div class="indexer margin-top align-right">
					<h3 class="hidden">현재 페이지</h3>
					<div><span class="text-orange text-strong">1</span> / 1 pages</div>
				</div>

				<div class="text-align-right margin-top">
					<input type="submit" class="btn-text btn-default" value="일괄공개">
					<input type="submit" class="btn-text btn-default" value="일괄삭제">
					<div class="text-align-right margin-top">
					<button type="button" class="btn-point">작성
					</button>					
		</div>			
				</div>

				<div class="margin-top align-center pager">

					<div>


						<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>

					</div>
					<ul class="-list- center">
						<li><a class="-text- orange bold" href="?p=1&t=&q=">1</a></li>

					</ul>
					<div>


						<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>

					</div>

				</div>
			</main>

	
	<%-- =============================================================================================================================================== --%>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>