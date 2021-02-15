<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<% 
	String clsName = request.getParameter("clsName");
	int parmPrice = Integer.valueOf(request.getParameter("price"));
	pageContext.setAttribute("parmPrice",parmPrice);
	
	
	session.setAttribute("id", request.getParameter("id"));	
	//상세페이지되면 바꿔야하는 것들
	
	// 클래스 번호
	String clsNum = request.getParameter("clsNum");
	pageContext.setAttribute("clsNum", clsNum);

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function main(frm){
		frm.action = "reserv_save";
		alert("예약이 완료되었습니다.");
		frm.submit();
		
	}
	function calculation(frm){
		frm.action = "calculation";
		frm.submit();
	}

	
$(function(){
	$(".people").change(function(){
		let thisPrice = $(".people option:selected").val();
		
		let parmPrice = ${parmPrice};
		
		$("#totalPrice").val(thisPrice * parmPrice);
				
	});
	
	
});

</script>
</head>
<body>
	<h1>예약페이지</h1>
	<form method="post">
	<table>
		<tr>
			<td>클래스이름&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </td>
			<td><%=clsName%></td>
		</tr>
		<tr>
			<td>예약날짜</td>
			<td><input type="date" name = "startDate" min="2020/01/01" max= "2020/12/31"><td>

		</tr> 
		
		<tr>
			<td>예약시간 </td>
			<td>
				<select name = "resv_time">
					<option value="none" >시간</option>
					<option value="09" >오전타임 : 오전 9시 ~ 오후 1시</option>
					<option value="14" >오후타임  : 오후 2시 ~ 호우 6시</option>	
				</select>
			</td>
		</tr>
		<tr>
			<td>인원</td>
			<td>
				<select name = "resv_people" id="ITEM_ID" class="people">
					<!-- <option value="none" > 명</option> -->
					<option value="none" >명</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
					<option value="10" >10</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>결제금액 </td>
			<td><input type="text" name="totalPrice" value="0" id="totalPrice" readonly></td>
		</tr>
		
		<!-- 상세페이지 나오면 바꿔야함 -->
		<tr>
			<td><input type="hidden" name = "clsNum" value="${clsNum }"></td>
		</tr>
		
		<tr>
			<td>&nbsp&nbsp</td>
			<td>
			<input type="reset" name = "reset" value="다시입력하기">
			<input type="button" value="예약하기" onclick="main(this.form)">
			<input type="button" value="바로결제" onclick="calculation(this.form)">
			</td>
		</tr>
		
	</table>
	</form>


</body>
</html>