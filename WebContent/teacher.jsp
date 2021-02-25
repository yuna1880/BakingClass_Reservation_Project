<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사소개</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="css/header.css" rel ="stylesheet">
<link href="css/sidebar.css" rel ="stylesheet">
<link href="css/footer.css" rel ="stylesheet">
<link rel="stylesheet" href="css/nav.css"/>
<style>

*{
font-family: 'Noto Sans KR', sans-serif;
}

/* teacher css */

*{ margin: 0; padding: 0; 
    box-sizing: border-box; 
}

#container { 
			width:750px; /*600*/
			margin-left: 570px;
			border : 3px solid #b4b4b4;
			z-index:20;
			
			/*margin : 30px auto; */
		}
		
		.sub_image { 
   			height: 200px;
    		text-align: center; 
			margin-top:20px;
			margin-bottom:200px;
		}
		
		#prod-pic{ /*#pro*/
			float:left;
		}
		
		#prod-pic { 			
			margin:50px 40px auto 40px;
			padding:0;
		}
		#mini { 			
			box-shadow:1px 1px 2px #eee;
			outline-offset: -7px;
			border-radius: 75px;
		}
		.boldtext {
			font-weight:bold;
		}
		
		#pro {  
			width:300px;
			padding-top:30px;
			margin : 10px 80px 50px 350px;
			margin-bottom:50px;
		}
		
		#pro ul {
			list-style:none;
		}
		#pro li{
			font-size:1.0em;
			line-height:1.8;
		} 
		
		#heading {
			font-size: 1.5em;
			font-weight:bold;
			text-align: center;
			margin-top: 30px;

		}
		section .info {
			z-index:20;
		}
</style>
</head>
<body>
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
 
	 <section class="sub_image">
		<img src="./images/teacher_img2.png" width="100%">
	 </section>

<section class="info">
<c:forEach var="vo" items="${teacherlist}">
	<div id="container">
		<div id="prod-pic">
			<img src="images/${vo.tea_image }" id="mini" width="270" height="220">
				<p id="heading">&nbsp&nbsp&nbsp${vo.tea_name}</p>
		</div>			
		<div id="pro">
				<ul>
					<li>대표클래스 : ${vo.tea_class} </li>
					<li>이메일 : ${vo.tea_email} </li>
					<br>
					<h3 class="boldtext">경력사항 & 자격사항</h3>
					<li>- ${vo.tea_info}</li>
					<li>- SCA(Specialty Coffee Association) DIPLOMA</li>
					<li>- ${vo.tea_info2}</li>
					<li>- 샵마스터3급 한국직업연구진흥원</li>
					<li>- 제과기능사, 제빵기능사 </li>
				</ul>						
		</div>
	</div>
	<br><br>
 </c:forEach>	
 </section>
 
<!-- footer html 영역 -->
<c:import url="footer.jsp"></c:import>
</body>
</html>