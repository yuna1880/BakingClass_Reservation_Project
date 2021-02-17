<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 회원가입 페이지 --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>
    <style>
    	#id_check { color : red; }
    
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
crossorigin="anonymous"></script>
<script>
	function checkValue() {
		if(!document.join_form.id.value){
			alert("아이디를 입력해주세요.");
			join_form.id.focus();
			return false;
		}
		if(!document.join_form.pwd1.value){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		if(!document.join_form.name.value){
			alert("이름을 입력해주세요.");
			return false;
		}
		//비밀번호와 비밀번호 확인 입력값이 다를때
		if(document.join_form.pwd1.value != document.join_form.pwd2.value){
			alert("비밀번호가 일치하지 않습니다. 확인해주세요.");
			return false;
		}
	}
	
	let timer;
	function checkId() {
		//alert("실행!");
		// 아이디 중복체크  1: 중복     0: 중복x
		var idCheck = 0;
		var inputid = $("#id").val();
		
		clearTimeout(timer);
		
		timer = setTimeout( function () {
			$.ajax({
				url : "checkId?id=" + inputid,
				type : "get",
				
				success : function(data) {
					console.log(data);
					if (inputid == "") {
						$("#id_check").text("아이디를 입력해주세요.");

					} else if (data == 0) {
						$("#id_check").text("사용 가능한 아이디입니다.");

					}
					else if (data == 1) {
						$("#id_check").text("사용중인 아이디입니다. 다시 입력해주세요.");
		
					}
				}, error : function() {
					console.log("실패");
				}
			});
		}, 400);
				
	}
	
</script>  
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <br><br><br><br>
    <h1 align="center">회원 가입</h1>
    <br>
    <p align="center">회원가입을 위한 정보를 입력해주세요.</p>
    <br>
    
    <form name="join_form" method="post" action="MemberJoin" onsubmit="return checkValue()">

        <!-- container -->
        <div id="container" role="main">
            <div id="content">
                <!-- tg-text=title -->
                <h2 class="blind">Sign Up</h2>
                    <div class="join_content">
                        <!-- 아이디, 비밀번호 입력 -->
                        
                        <!--
                        <div class="row_group">
                            <div class="join_row">
                                <h3 class="join_title"><label for="id">아이디</label></h3>
                                <span class="ps_box int_id">
                                    <input type="text" id="id" name="id" class="int" title="ID" maxlength="20">

                            </div> -->

                            <!-- 아이디, 비밀번호 -->
                            <div class="join_row">
                                <h3 class="join_title"><label for="id">아이디</label></h3>
                                <div class="int_mobile_area">
                                    <span class="ps_box int_mobile">
                                        <input type="text" id="id" name="id" placeholder="아이디를 입력해주세요." aria-label="아이디입력" 
                                        class="int" maxlength="16" oninput="checkId()" >
                                   	<!-- 아이디 중복체크 공간 -->
                                    </span>

                                    <br>
                                    <div class="check_font" id="id_check"></div>
                                </div>
                            </div>

                            <div class="join_row">
                                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                                <span class="ps_box int_pass" id="pswd1Img">
                                    <input type="password" id="pswd1" name="pwd1" class="int" placeholder="비밀번호 (영문+숫자) 8자이상" 
                                    		title="비밀번호 (영문+숫자) 8자이상" aria-describedby="pswd1Msg" maxlength="20"
                                    		pattern="[A-Za-z0-9]{8}">
                                    		
                                    <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
                                </span>
                                <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive"></span>

                                <h3 class="join_title"><label for="pswd2">비밀번호 확인</label></h3>
                                <span class="ps_box int_pass_check" id="pswd2Img">
                                    <input type="password" id="pswd2" name="pwd2" class="int" placeholder="비밀번호 (영문+숫자) 8자이상" 
                                    	title="비밀번호 (영문+숫자) 8자이상" aria-describedby="pswd2Blind" maxlength="20">
                                    	
                                    <span id="pswd2Blind" class="wa_blind"></span>
                                </span>
                                <span class="error_next_box" id="pswd2Msg" style="display:none" aria-live="assertive"></span>
                            </div>
                    </div>
                    <!-- 이름 -->
                    <div class="row_group">
                        <div class="join_row">
                            <h3 class="join_title"><label for="name1">이름</label></h3>
                            <div class="name_wrap">
                                <div class="">
                                    <span class="ps_box box_right_space">
                                        <input type="text" id="name" name="name" placeholder="이름을 입력해주세요." aria-label="First Name" class="int" maxlength="40">
                                    </span>
                                </div>
                            </div>
                            <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                        </div>
                        <!-- 전화번호 -->

                        <div class="join_row join_mobile">
                            <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                            <span class="ps_box box_right_space">
                                <input type="text" id="phoneNo" name="phoneNo" placeholder="010-1234-5678" 
                                	class="int" maxlength="40" pattern="[0-9]{3}[-]+[0-9]{4}[-]+[0-9]{4}"
                                	title="핸드폰번호 : 010-1234-5678">
                            </span>
                            <span class="error_next_box" id="phoneMsg" style="display:none" aria-live="assertive"></span>
                        </div>

                        <!-- 주소 -->
                        <div class="join_row">
                            <h3 class="join_title"><label for="addr">주소</label></h3>
                            <div class="name_wrap">
                                <div class="">
                                    <span class="ps_box box_right_space">
                                        <input type="text" id="addr" name="addr" placeholder="주소를 입력해주세요." aria-label="주소입력" class="int" maxlength="40">
                                    </span>
                                </div>
                            </div>
                            <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                        </div>
                    </div>

                    <div class="btn_area">
                        <button type="submit" id="btnJoin" class="btn_type btn_primary" ><span>가입하기</span></button>
                        <button type="reset" id="reset" class="btn_type btn_primary"><span>다시입력</span></button>
                        <button type="button" id="previous" class="btn_type btn_primary" onclick="history.back()"><span>이전페이지로</span></button>

                    </div>


                    <br><br><br><br><br><br><br><br><br><br><br><br>

                    <!-- footer -->

    </form>
</body>
</html>