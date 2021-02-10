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
   
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <br><br><br><br>
    <h1 align="center">회원 가입</h1>
    <br><br>
    
    
    <form name="join_form" method="post" action="MemberJoin">

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
                            <div class="join_row join_mobile">
                                <h3 class="join_title"><label for="id">아이디</label></h3>
                                <div class="int_mobile_area">
                                    <span class="ps_box int_mobile">
                                        <input type="tel" id="id" name="id" placeholder="필수 입력사항 입니다." aria-label="아이디입력" class="int" maxlength="16">
                                    </span>
                                    <button type="button" class="btn_verify btn_primary" id="btnPrtsSend">
                                        <span class="">중복확인</span>
                                    </button>
                                </div>
                            </div>

                            <div class="join_row">
                                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                                <span class="ps_box int_pass" id="pswd1Img">
                                    <input type="password" id="pswd1" name="pwd1" class="int" placeholder="5~12자의 영문 대소문자와 숫자로만 입력하세요." 
                                    		title="Input password" aria-describedby="pswd1Msg" maxlength="20">
                                    		
                                    <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
                                </span>
                                <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive"></span>

                                <h3 class="join_title"><label for="pswd2">비밀번호 확인</label></h3>
                                <span class="ps_box int_pass_check" id="pswd2Img">
                                    <input type="password" id="pswd2" name="pwd2" class="int" placeholder="5~12자의 영문 대소문자와 숫자로만 입력하세요." 
                                    	title="Input password confirm" aria-describedby="pswd2Blind" maxlength="20">
                                    	
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
                                        <input type="text" id="name" name="name" placeholder="이름" aria-label="First Name" class="int" maxlength="40">
                                    </span>
                                </div>
                            </div>
                            <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                        </div>
                        <!-- 전화번호 -->

                        <div class="join_row join_mobile">
                            <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                            <span class="ps_box box_right_space">
                                <input type="text" id="phoneNo" name="phoneNo" placeholder="ex)010-0000-0000" title="핸드폰번호" class="int" maxlength="40">
                            </span>
                            <span class="error_next_box" id="phoneMsg" style="display:none" aria-live="assertive"></span>
                        </div>

                        <!-- 주소 -->
                        <div class="join_row">
                            <h3 class="join_title"><label for="addr">주소</label></h3>
                            <div class="name_wrap">
                                <div class="">
                                    <span class="ps_box box_right_space">
                                        <input type="text" id="addr" name="addr" placeholder="주소입력" aria-label="주소입력" class="int" maxlength="40">
                                    </span>
                                </div>
                            </div>
                            <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                        </div>
                    </div>

                    <div class="btn_area">
                        <button type="submit" id="btnJoin" class="btn_type btn_primary" ><span>가입하기</span></button>
                        <button type="reset" id="reset" class="btn_type btn_primary"><span>다시입력</span></button>
                        <button type="button" id="previous" class="btn_type btn_primary" onclick="location.href=back(-1)"><span>이전페이지로</span></button>

                    </div>


                    <br><br><br><br><br><br><br><br><br><br><br><br>

                    <!-- footer -->

    </form>
</body>
</html>