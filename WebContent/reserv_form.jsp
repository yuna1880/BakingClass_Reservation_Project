<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<% 
	String clsName = request.getParameter("clsName");
	int parmPrice = Integer.valueOf(request.getParameter("price"));
	pageContext.setAttribute("parmPrice",parmPrice);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function main(frm){
		frm.action = "temp";
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
		alert(thisPrice);
				
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
			<td>
				<select name = "resv_year" >
					<option value="none" >년도</option>
					<option value="2021" >2021</option>
					<option value="2022" >2022</option>
					<option value="2023" >2023</option>
					<option value="2024" >2024</option>
					<option value="2025" >2025</option>
					<option value="2026" >2026</option>
					<option value="2027" >2027</option>
					<option value="2028" >2028</option>
					<option value="2029" >2029</option>
				</select>
				<select name = "resv_month">
					<option value="none" >월</option>
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
					<option value="11" >11</option>
					<option value="12" >12</option>
				</select>
				<select name = "resv_day">
					<option value="none" >일</option>
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
					<option value="11" >11</option>
					<option value="12" >12</option>
					<option value="13" >13</option>
					<option value="14" >14</option>
					<option value="15" >15</option>
					<option value="16" >16</option>
					<option value="17" >17</option>
					<option value="18" >18</option>
					<option value="19" >19</option>
					<option value="20" >20</option>
					<option value="21" >21</option>
					<option value="22" >22</option>
					<option value="23" >23</option>
					<option value="24" >24</option>
					<option value="25" >25</option>
					<option value="26" >26</option>
					<option value="27" >27</option>
					<option value="28" >28</option>
					<option value="29" >29</option>
					<option value="30" >30</option>
					<option value="31" >31</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>예약시간 </td>
			<td>
				<select name = "resv_time">
					<option value="none" >시간</option>
					<option value="06" >06</option>
					<option value="07" >07</option>
					<option value="08" >08</option>
					<option value="09" >09</option>
					<option value="10" >10</option>
					<option value="11" >11</option>
					<option value="12" >12</option>
					<option value="13" >13</option>
					<option value="14" >14</option>
					<option value="15" >15</option>
					<option value="16" >16</option>
					<option value="17" >17</option>
					<option value="18" >18</option>
					<option value="19" >19</option>
					<option value="20" >20</option>
		
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