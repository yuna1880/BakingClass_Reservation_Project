<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달코코 소개페이지</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="css/header.css" rel ="stylesheet">
<link href="css/footer.css" rel ="stylesheet">
<style>
*{ margin: 0; padding: 0; 
    box-sizing: border-box; 
}

*{
font-family: 'Noto Sans KR', sans-serif;
}

.info .item:first-child { padding: 50px 0; }
.info .item:last-child { padding: 50px 0; background-color: #eeeeee;}
.info .item::after {
    content: "";
    clear: both;
    display: block;
}
.info img {
    display: block;
    max-width: 100%;
} 


.info .text { padding: 30px 30px 0 30px; }
.info .text h4 { margin-top: 10px; }
.info .text p {
    margin-top: 20px; 
    line-height: 180%;
} 

 .fit { float: left; width: 50%; } 

    .box {
        max-width: 1170px;
        margin: 0 auto;
        position: relative;
    }
    
    .sub_image { 
    height: 320px;
    text-align: center;
    margin-bottom: 30px;
    margin-top: 20px;
    
}
 
    .info .item:last-child .image { float: right; }
    .info .item:first-child { padding: 100px 0; }
    .info .item:last-child { padding: 100px 0; }

</style>
</head>
<body>    
<!-- Navbar --> <!-- header html영역 -->
	<c:import url="header.jsp"></c:import>
    
	<section class="sub_image">
		<img src="./images/info_img.png">
	 </section>
	
	<section class="info">
    <div class="item">
        <div class=" box">
            <div class="image fit">
                <img src="./images/info.png">
            </div> <!-- image -->
            <div class="text fit">
                <h1>BAKING CLASS</h1>
                <h4>"하나의 목표를 위해 최선의 노력을 ENJOY BAKING!"</h4>
                <p>베이커리업계 소소한 취미부터 자격증 취득을 위한 베이킹 실무클래스.</p>
                <p>원데이 클래스부터 디저트카페 창업을 위한 전문가과정까지 원하는 분야에 따라 선택할 수 있으며,
                 	현장실무경력이 있는 전문 강사들로부터 개인별 맞춤형 수강을 진행하실 수 있습니다.</p>
            </div>
        </div>  
    </div>
    <div class="item">
        <div class=" box">
            <div class="image fit">
                <img src="./images/info2.png">
            </div> <!-- image -->
            <div class="text fit">
                <h1>ENVIRONMENT</h1>
                <h4>"고품질의 작품 탄생을 위한 최적의 환경"</h4>
                <p>방역준수를 철저히 지키며, 신선한 재료들만 취급하고 작품 포토존도 따로 겸비되어 있어 하나의 작품을 탄생시킬 수 있도록 소통하고 배울 수 있는 공간을 제공합니다. </p>
                <p>고객의 편안한 대기를 위해 로비 라운지를 운영하고 있으며 최대 20대까지 주차할 수 있는 주차장을 보유하고 있습니다.</p>
            </div> 
        </div>
    </div> 
    </section>
<!-- footer html 영역 -->
<c:import url="footer.jsp"></c:import>
</body>
</html>