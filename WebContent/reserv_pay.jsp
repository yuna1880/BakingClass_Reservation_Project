<%@page import="com.bc.model.dao.ReserveDAO"%>
<%@page import="com.bc.model.vo.ReservationVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int idx = Integer.valueOf(request.getParameter("reserv_idx"));
	
	List<ReservationVO> list = ReserveDAO.getResrvList(idx);
	pageContext.setAttribute("list", list);
	
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
		
		if($("input:radio[name=change_pay]:checked").val() == "cash"){
		       $(".cashDiv").css("display","block");
		       $(".cardDiv").css("display","none");
		    }else if($("input:radio[name=change_pay]:checked").val() == "card"){
		    	$(".cardDiv").css("display","block");
				$(".cashDiv").css("display","none");	        
		    }
	});
});

	function pay(frm){ 
		$.ajax("payment", {
			method: "post",
			data: $(frm).serialize(),
			dataType: "json",
			success: function (res) {
				alert("결제가 완료되었습니다. 응답 코드 : " + res);
				window.close();
			}
		})
		 /*
		alert("결제가 완료되었습니다");
		frm.action = "payment";
		frm.submit();
		window.open("about:blank", "_self").close();
		*/
	}
	function exit(){
		 window.close();
	}

</script>
<style>
	.cashDiv{
		display: none;
	}
	.cardDiv{
		display: block;
	}
</style>
</head>
<body>
<h1>결제하기 페이지입니다.jsp</h1>
	<input type = "radio" name = "change_pay" value = "card" id ="card" checked="checked">신용카드
	<input type = "radio" name = "change_pay" value = "cash" id ="cash" >무통장입금
	
	<div class = "cashDiv" >
		<form method="post">
			<table>
				<tr>
					<td>예약번호&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
						<c:forEach var="vo" items="${list }">
							<td><input type="text" name = "reserv_idx" value="${vo.reserv_idx }" readonly="readonly"></td>
						</c:forEach>
				</tr>
				<tr>
					<td>결제금액</td>
					<c:forEach var="vo" items="${list }">
						<td><input type="text" name = "reserv_price" value="${vo.reserv_price }" readonly="readonly"></td>
					</c:forEach>
				</tr>
				<tr>
					<td>은행명</td>
					<td>
						<select name = "pay_cash1" id="cashBank">
						<option value = "none" >-은행명-</option>
						<option value = "기업은행" >-기업은행-</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>계좌번호</td>
					<td>
						<select name = "pay_cash2" id="cashAccount" >
						<option value = "none" >-----계좌번호-----</option>
						<option value = "010-3090-3748" >010-3090-3748</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>예금주</td>
					<td>
						<select name = "pay_cash3" id="cashAccount" >
						<option value = "none" >-예금주-</option>
						<option value = "이상희" >이상희</option>
						</select>
					</td>
				</tr>
				<tr>
				<td><input type="submit" name="button" onclick="pay(this.form)" value="결제하기"></td>
				</tr>
				<tr>
				<td><input type="hidden" name ="cashOrCard" value = "현금"></td>
				</tr> 
			</table>
		</form>
	</div>
	
	<div class = "cardDiv">
		<form method="post">
			<table>
				<tr>
					<td>예약번호&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
					<c:forEach var="vo" items="${list }">
							<td><input type="text" name = "reserv_idx" value="${vo.reserv_idx }" readonly="readonly"></td>
					</c:forEach>
				</tr>
				<tr>
					<td>결제금액</td>
					<c:forEach var="vo" items="${list }">
					<td><input type="text" name = "reserv_price" value="${vo.reserv_price }" readonly="readonly"></td>
					</c:forEach>
				</tr>
				<tr>
					<td>카드사</td>
					<td>
						<select name = "pay_bank" id="bank" class="bank">
						<option value="none" >--카드사--</option>
						<option value="KB국민" >KB국민</option>
						<option value="비씨" >비씨</option>
						<option value="신한카드" >신한카드</option>
						<option value="농협" >NH농협</option>
						<option value="하나카드" >하나카드</option>
						<option value="롯데카드" >롯데카드</option>
						<option value="씨티카드" >씨티카드</option>
						<option value="하나(외환)" >하나(외환)</option>
						<option value="우리카드" >우리카드</option>
						<option value="카카오뱅크" >카카오뱅크</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>카드번호</td>
					<td>
						<input type = "text" name="cardNum" id="cardNum1" maxlength="4"> -
						<input type = "text" name="cardNum" id="cardNum2" maxlength="4"> -
						<input type = "text" name="cardNum" id="cardNum3" maxlength="4"> -
						<input type = "text" name="cardNum" id="cardNum4" maxlength="4">
					</td>
				</tr>
				<tr>
					<td>유효기간</td>
					<td>
						<select name = "pay_cardDateM" id="cardDateMM" name="cardDate">
							<option value = "none">--월--</option>
							<option value = "01">01</option>
							<option value = "02">02</option>
							<option value = "03">03</option>
							<option value = "04">04</option>
							<option value = "05">05</option>
							<option value = "06">06</option>
							<option value = "07">07</option>
							<option value = "08">08</option>
							<option value = "09">09</option>
							<option value = "10">10</option>
							<option value = "11">11</option>
							<option value = "12">12</option>
						</select> /
						<select name = "pay_cardDateY" id="cardDateYY" name="cardDate">
							<option value = "none">--연도--</option>
							<option value = "2021">2021</option>
							<option value = "2022">2022</option>
							<option value = "2023">2023</option>
							<option value = "2024">2024</option>
							<option value = "2025">2025</option>
							<option value = "2026">2026</option>
							<option value = "2026">2027</option>
							<option value = "2028">2028</option>
							<option value = "2029">2029</option>
							<option value = "2030">2030</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>CVC 번호</td>
					<td><input type="password" name="cardPwd" id="pwd" maxlength="3"></td>
				</tr>
				<tr>
				<td><input type="submit" name="button" onclick="pay(this.form)" value="결제하기"></td>
				</tr> 
				<tr>
				<td><input type="hidden" name ="cashOrCard" value = "카드"></td>
				</tr> 
			</table>
		</form>
	</div>
</body>
</html>