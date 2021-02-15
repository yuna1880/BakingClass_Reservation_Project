<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.getParameter("reserv_idx");
	System.out.println("여기까지 오누"+request.getParameter("reserv_idx"));
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기 페이지</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(function(){
	$("input:radio[name=change_pay]").click(function(){
		
		if($("input:radio[id=cash]:checked")){
		       alert("cash");
		    }else if($("input:radio[id=card]:checked")){
		    	alert("card");
			   $(".cashDiv").css("display","none");	        
		    }
	});
});


</script>
<style>
	.cashDiv{
		display: block;
	}
	.cardDiv{
		display: none;
	}
</style>
</head>
<body>
<h1>결제하기 페이지입니다.jsp</h1>
	<input type = "radio" name = "change_pay" value = "cash" id ="cash" checked="checked">무통장입금
	<input type = "radio" name = "change_pay" value = "card" id ="card">신용카드
	<div class = "cashDiv" >
		<td>cash</td>
	</div>
		
	<div class = "cardDiv">
		<td>card</td>
	</div>
</body>
</html>