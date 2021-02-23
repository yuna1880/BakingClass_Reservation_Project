<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script>
	function member_delete(frm) {
		//memberdelete.jsp페이지로 이동..
		frm.action = "MemberDelete";
		frm.submit();
	}
</script>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form name="delete_form" method="post" action="MemberDelete">
		<div id="container" role="main">
			<br><br><br><br>
		    <h1 align="center">회원 탈퇴</h1>
		    <br>
		    <p align="center">가입된 회원정보가 모두 삭제됩니다. 작성하신 게시물은 모두 삭제됩니다.</p>
			<p align="center">탈퇴 후 같은 계정으로 재가입시에 기존에 예약했던 정보는 복원되지 않습니다.</p>
			<p align="center">회원 탈퇴를 진행하시겠습니까?</p>
		    <br><br>
			<div id="content">
				<div class="join_content">
					<div class="btn_area">
						<input type="button" value="회원탈퇴 " class="btn_type btn_primary" 
							onclick="member_delete(this.form)">
						<button type="button" id="window_close" class="btn_type btn_primary"
							onclick="window.close()">
							<span>취소</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>