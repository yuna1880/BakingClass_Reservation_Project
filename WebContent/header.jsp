<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비바 + 헤더</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Karla:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
<link href="css/header.css" rel ="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
</head>
<body>
	<!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__logo">
        </div>
        <div>
            <ul class="navbar__menu">
            	<%-- 로그인시 --%>
            	<c:if test="${not empty sessionScope.userid}">
                	<li class="navbar__menu_item">${sessionScope.userid} 님</li>
                	<li class="navbar__menu_item"><a href="mypage.jsp">내정보</a></li>
	                <li class="navbar__menu_item"><a href="reserv_myPage.jsp">예약조회</a></li>
	                <li class="navbar__menu_item"><a href = "logout.jsp">로그아웃</a></li>
                </c:if>
                <%-- 비로그인시 --%>
                <c:if test="${empty sessionScope.userid}">
                	<li class="navbar__menu_item"><a href="login.jsp">로그인</a></li>
                	<li class="navbar__menu_item"><a href="longin.jsp">내정보</a></li>
	                <li class="navbar__menu_item"><a href="login.jsp">예약조회</a></li>
                </c:if>
                <br>
            </ul>
        </div>
    </nav>

<!-- header html영역 -->
	<header>
		<nav id="navbars">
			<div id="logo">
				<a href="list"><img src="images/header_logo4.jpg" width="155px" height="140px"></a>
			</div>
			<div id="menu">
				<ul id="main_menu">
					<li>
						<a class="main_me" href="list">Home</a>
					</li>
					<li>
						<a class="main_me" href="info.jsp">About</a>
					</li>
					<li>
						<a class="main_me" href="TeacherList">Teacher</a>
					</li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>