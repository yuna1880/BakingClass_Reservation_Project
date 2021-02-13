<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<br><br><br><br>
    <h1 align="center">회원 탈퇴</h1>
    <br>
    <p align="center">가입된 회원정보가 모두 삭제됩니다. 작성하신 게시물은 모두 삭제됩니다. </p>
	<p align="center">탈퇴 후 같은 계정으로 재가입시에 기존에 가지고 있던 적립금은 복원되지 않습니다. </p>
	<p align="center">탈퇴 후 같은 계정으로 재가입시에 기존에 사용및 다운로드했던 쿠폰은 사용이 불가능합니다.
					회원 탈퇴를 진행하시겠습니까?</p>
    <br><br>
    
    <div class="btn_area">
   
     <button type="submit" id="btnJoin" class="btn_type btn_primary" ><span>회원탈퇴</span></button>
     <button type="button" id="member_join" class="btn_type btn_primary" onclick="location.href='member_join.jsp'"><span>취소</span></button>
    
    
   
	</div>
	
	
</body>
</html>