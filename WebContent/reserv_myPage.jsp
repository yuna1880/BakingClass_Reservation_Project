<%@page import="com.bc.model.dao.ReserveDAO"%>
<%@page import="com.bc.model.vo.Reserv_Paging"%>
<%@page import="com.bc.model.vo.ReservationVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	//페이징 처리를 위한 Paging 객체 생성해서 값을 읽고 설정
	Reserv_Paging p = new Reserv_Paging();

	//여기 또바꿔야됨
	String id = String.valueOf(session.getAttribute("userid"));
	
	//1. 전체게시물 수를 구하기
	p.setTotalRecord(ReserveDAO.getTotalCount(id));
	p.setTotalPage();
	System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
	System.out.println("> 전체 페이지 수 : " + p.getTotalPage());

	//2. 현재 페이지 구하기
	String cPage = request.getParameter("cPage");
	if (cPage != null) {
		p.setNowPage(Integer.parseInt(cPage));
	}

	//3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) S구하기
	p.setEnd(p.getNowPage() * p.getNumPerPage()); //현재페이지번호 * 페이지당 글수
	p.setBegin(p.getEnd() - p.getNumPerPage() + 1);

	//(선택적)3-1 끝 글번호가 데이터건수보다 많은경우 데이터건수와 일치
	if (p.getEnd() > p.getTotalRecord()) {
		p.setEnd(p.getTotalRecord());
	}
	System.out.println("--------------");
	System.out.println(">> 현재페이지 : " + p.getNowPage());
	System.out.println(">> 시작글번호(begin) : " + p.getBegin());
	System.out.println(">> 끝 글번호(end) : " + p.getEnd());

	//----- 블록(block) 계산하기 -----------
	//4. 블록의 시작페이지, 끝페이지 구하기(현재 페이지 번호 사용)
	//시작페이지 구하기
	int nowPage = p.getNowPage();
	int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
	p.setBeginPage(beginPage);
	p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);

	//4-1. 끝페이지(endPage)가 전체 페이지수(totalPage) 보다 크면
	// 끝페이지 값을 전체페이지수로 변경처리
	if (p.getEndPage() > p.getTotalPage()) {
		p.setEndPage(p.getTotalPage());
	}
	System.out.println(">>시작페이지(beginPage) : " + p.getBeginPage());
	System.out.println(">>끝페이지(endPage) : " + p.getEndPage());

	//현재 페이지 기준으로 DB데이터(게시글) 가져오기
	//시작글번호, 끝글번호 저장용 Map 만들기(전달할 파라미터 저장용)
	Map<String, Integer> map = new HashMap<>();
	map.put("begin", p.getBegin());
	map.put("end", p.getEnd());

	//DB에서 현재페이지 표시할 게시글 조회
	List<ReservationVO> list = ReserveDAO.getList(map);
	System.out.println("> 현재 페이지 글목록(list) : " + list);

	// EL, JSTL 사용을 위해 scope에 데이터 등록(page 영역)
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("pvo", p);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

	function pay(btn){
		 let idx = btn.parentElement.parentElement.firstElementChild.textContent;
	     windowopen = window.open("reserv_pay.jsp?reserv_idx=" + idx ,"ow1","width=500, height=1200");
	}
</script>
<script>
	let trG;
	let list = "${list.toString()}";
	$(function() {
		$('.hiddendate').each(function(index){
			console.log("index번호 : "+index+ "/ 날짜 : "+ $(this).text());
			let endStr = $(this).text();
			if (endStr) {
				remaindTime($(this)[0]);
			}
		});
	});
	function remaindTime(endTag) {
		console.log(endTag);
		let endStr = endTag.innerText;
		let endStrPlus = endStr.substring(0,8) + (parseInt(endStr.substring(8)) + 1);
 
	    let end = new Date(endStrPlus);//오늘날짜의 저녁 9시 - 종료시간기준
	    
	    setInterval(function () {
			 calc(end, endTag);
		 },1000); //1초마다 검사를 해주면 실시간으로 시간을 알 수 있다.
	 }
	 
	function calc(end, endTag) {
		 let nt = new Date().getTime();
		 console.log(end);
		 let et = end.getTime(); // 종료시간만 가져온다.
		    console.log("nt : "+nt+"/ et : "+et);
		   if(nt>et){ //현재시간이 종료시간보다 크면
				endTag.parentElement.children[0].innerHTML = "<br>결제마감";
		   		endTag.parentElement.children[1].style = "display: none";
		   }else if(nt<et) { // 종료시간이 현재시간보다 크면
				let $total = $(endTag.parentElement.children[1]);
				$total.fadeOut();
				$total.fadeIn();   
				$total.css("display", "block");
				sec =parseInt(et - nt) / 1000;
				day  = parseInt(sec/60/60/24);
				//sec = (sec - (day * 60 * 60 * 24));
				hour = parseInt(sec/60/60);
				sec = (sec - (hour*60*60));
				min = parseInt(sec/60);
				sec = parseInt(sec-(min*60));
				if(hour<10){hour="0"+hour;}
				if(min<10){min="0"+min;}
				if(sec<10){sec="0"+sec;}
				total = hour+" : "+min+" : "+sec
				$total.html(total);
		   }
	 }
</script>
<style>
.hiddendate{
	display:none;
}
</style>
<link rel="stylesheet" href="css/reserv_myPage.css"/>
<link rel="stylesheet" href="css/nav.css"/>
<link rel="stylesheet" href="css/main.css"/>
</head>
<body>
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
<!-- mainimg html 영역 -->
	<c:import url="mainimage.jsp"></c:import>
<!-- sidebar html 영역 -->
	<c:import url="sidebar.jsp"></c:import>
<main class="main">
<h1>예약 조회</h1>
<br>
<form method="get">
<div class="table">
			<table class="table">
				<thead>
					<tr class="title">
						<th class="w60">예약번호</th>
						<th class="w120">클래스명</th>
						<th class="w120">수업날짜</th>
						<th class="w120">수업시간</th>
						<th class="w100">결제금액</th>
						<th class="w100">결제</th>
						<th class="w100">진행상태</th>

					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list }">
						<tr>
							<td colspan="5">
								<p>현재 등록된 게시글이 없습니다.</p>
							</td>
						</tr>
					</c:if>
					<c:if test="${not empty list }">
						<c:forEach var="vo" items="${list }">
							<tr>
								<td>${vo.reserv_idx }</td>
								<c:if test="${vo.cls_idx  == '100' }">
									<td>쿠키 클래스</td>
								</c:if>
								<c:if test="${vo.cls_idx  == '200' }">
									<td>케이크 클래스</td>
								</c:if>
								<c:if test="${vo.cls_idx  == '300' }">
									<td>스콘 클래스</td>
								</c:if>
								<c:if test="${vo.cls_idx  == '400' }">
									<td>초콜릿 클래스</td>
								</c:if>
								<c:if test="${vo.cls_idx  == '500' }">
									<td>마카롱 클래스</td>
								</c:if>
								<c:if test="${vo.cls_idx  == '600' }">
									<td>미니타르트 클래스</td>
								</c:if>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${vo.reserv_date }" /></td>

								<td><c:if test="${vo.reserv_time == 09 }">
				 오전 9시 ~ 오후 1시
			</c:if> <c:if test="${vo.reserv_time == '14' }">
				오후 2시 ~ 오후 6시
			</c:if> <%-- ${vo.reserv_time } 시 --%></td>
								<td>${vo.reserv_price }원</td>
								<td><input type="button" value="결제하기" onclick="pay(this)"></td>
								<td>${vo.reserv_status }<c:if
										test="${vo.reserv_status eq '결제기한' }">
										<span class="time-title"></span>
										<span class="total"></span>
										<span class="hiddendate">${vo.reserv_inputDate }</span>
									</c:if>

								</td>
							</tr>

						</c:forEach>
					</c:if>

				</tbody>
				<tfoot>
					<tr>
						<td colspan="7" class="pagingtop">
							<ol class="paging">
								<%--[이전으로]에 대한 사용여부 처리 시작페이지번호가 1인 경우 비활성화 --%>
								<div class="align-center pager">
								<div class="divNum">
									<c:choose>
										<c:when test="${pvo.beginPage == 1 }">
											<button type="button" class="btn-search-pager" onclick="javascript:alert('이전 페이지가 없습니다.');">이전</button>
										</c:when>
										<c:otherwise>
											<!--<li><a href="reserv_myPage.jsp?cPage=${pvo.beginPage - 1}">이전으로</a></li>-->
											<button type="button" class="btn-search-pager" onclick="javascript:location.href='reserv_myPage.jsp?cPage=${pvo.beginPage - 1}'">이전</button>
										</c:otherwise>
									</c:choose>
								</div>
								<%-- 블록내에 표시할 페이지 태그 작성(시작페이지 ~ 끝페이지) 현재페이지와 페이지 번호 같으면 현재페이지 처리--%>
								<div class="divNum">
									<c:forEach var="pageNo" begin="${pvo.beginPage }" end="${pvo.endPage }">
										<c:if test="${pageNo == pvo.nowPage }">
											<li class="btn-search-num">${pageNo }</li>
										</c:if>
										<c:if test="${pageNo != pvo.nowPage }">
											<!--  <li><a href="reserv_myPage.jsp?cPage=${pageNo }">${pageNo }</a></li>-->
											<button type="button" class="btn-search-num" onclick="javascript:location.href='reserv_myPage.jsp?cPage=${pageNo }'">${pageNo }</button>
										</c:if>
									</c:forEach>
								</div>
								<%--[다음으로]에 대한 사용여부 처리
				endPage가 전체페이지수(totalPage)보다 작은경우 활성화 --%>
							<div class="divNum">
								<c:if test="${pvo.endPage < pvo.totalPage }">
									<!--<li><a href="reserv_myPage.jsp?cPage=${pvo.endPage + 1}">다음으로</a></li>-->
									<button type="button" class="btn-search-pagers" onclick="javascript:location.href='reserv_myPage.jsp?cPage=${pvo.endPage + 1}&f=${review_title}&q=${id}'">다음</button>
								</c:if>
								<c:if test="${pvo.endPage >= pvo.totalPage }">
									<button type="button" class="btn-search-pagers" onclick="javascript:alert('다음 페이지가 없습니다.');">다음</button>
								</c:if>
							</div>
							</div>
							</ol>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</form>
</main>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>