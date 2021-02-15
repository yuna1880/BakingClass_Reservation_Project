<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 내정보 보기 --%>
<%
	String id = (String)session.getAttribute("userid");

	System.out.println(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script>

	function member_update(frm) {
		//frm.action = "memberupdate"; // 예전 jsp 직접 호출 방식
		frm.action = "MemberUpdateCheck"; //리스트 요청
		frm.submit();
	}
	function member_delete(frm) {
		window.name = "MemberDeleteMessage";
		window.open("memberdelete.jsp",
					"width=150, height=150, resizable = no, scrollbars = no");
		
	}
	
	function member_delete2(frm) {
		//memberdelete.jsp페이지로 이동..
		frm.action = "MemberDelete";
		frm.submit();
	}
	
</script>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
		<br><br><br><br>
	    <h1 align="center"> ${userid} 님 안녕하세요.</h1>
	    <br>
	    <p align="center">원하시는 항목을 클릭해주세요.</p>
	    <br>
	    
	    <form method="get">
		    <div class="btn_area">
	           <input type="button" value="정보 수정" class="btn_type btn_primary" onclick="member_update(this.form)">
	           <input type="button" value="회원 탈퇴" class="btn_type btn_primary" onclick="member_delete(this.form)">
	      	</div>
        </form>
        
</body>
</html>