<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- google fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
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
<!-- product html 영역 -->
		<section id="main">
		<h3 class="title">클래스 목록</h3>
			<c:forEach var="vo" items="${list }">
				<div class="items">
					<li class="i1"><a href="productController?cls_idx=${vo.cls_idx }"><img src="images/${vo.cls_image1 } "></a></li>
					<li class="i2">${vo.cls_content }</li>                                  
					<li class="i3"><a href="productController?cls_idx=${vo.cls_idx }">${vo.cls_name }</a></li>
					<li class="i4">
						<div><span class="s1">1인/${vo.cls_price }</span>
						<span class="s2" id="s5">${vo.name } 파티쉐</span></div>
					</li>
					</ul>
				</div>
			</c:forEach>
		</section>
<!-- footer html 영역 -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>