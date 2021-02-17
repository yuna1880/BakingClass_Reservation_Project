<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="join_form" method="post" action="/backpg/join.cm" class="form form-validate" role="form" target="hidden_frame" enctype="multipart/form-data" style="display: block;">
		<input type="hidden" name="idx" value="">
	<input type="hidden" name="code" value="">
	<input type="hidden" name="type_code" value="t202010147e249e6eb7878">
	<input type="hidden" name="back_url" value="Lw%3D%3D">
	<input type="hidden" name="is_popup" value="N">
	<input type="hidden" name="mode" value="join">
	<input type="hidden" name="photo_tmp_idx" id="photo_tmp_idx2" value="">
			<input type="hidden" name="third_party" value="N">
				<input type="hidden" name="marketing_sms_agree" value="ok">
		<input type="hidden" name="marketing_email_agree" value="ok">
	
	<div class="_token_obj" data-type="join" id="join_token">
		<input type="hidden" name="join_token" class="_tk_obj" value="YTozOntzOjQ6InRpbWUiO3M6MTQ6IjIwMjEwMjEwMTIyNTMxIjtzOjQ6InJhbmQiO3M6MTM6IjRkZGMyZGZmNDI2Y2IiO3M6Mzoia2V5IjtpOjgyOTc7fQ==">
		<input type="hidden" name="join_token_key" class="_tk_key_obj" value="8297">
	</div>

	<div id="fileupload_profile_img2" class="fileupload_profile_img">
		<div id="profile_img2" class="img-circle" style="margin: 0 auto; width: 85px; height: 85px; background: url(/common/img/default_profile.png)  50% 50% / cover no-repeat;"></div>
		<span class="over"><i aria-hidden="true" class="zmdi zmdi-camera"></i></span>
		<div id="drop_profile_img2" class="drop_profile_img">
			<input title="file upload" type="file" name="files[]" style="width: 100%" accept="image/jpeg, image/jpg, image/png, image/gif, image/svg+xml">
		</div>
	</div>

		<div style="position: relative">
				<div class="input_block form-group">
			<div class="input_form _item _uid">
				<input title="이메일" type="email" name="uid" value="" placeholder="이메일" required="required">				<i aria-hidden="true" class="zmdi zmdi-check"></i>
				<div class="alert-block _msg"></div>
			</div>
												<div class="input_form brt _item _passwd">
						<input title="비밀번호" type="password" name="passwd" autocomplete="off" placeholder="비밀번호">
						<i aria-hidden="true" class="zmdi zmdi-check"></i>
						<div class="alert-block _msg"></div>
					</div>
					<div class="input_form brt _item _passwd_confirm">
						<input title="비밀번호 확인" type="password" name="passwd_confirm" autocomplete="off" placeholder="비밀번호 확인">
						<i aria-hidden="true" class="zmdi zmdi-check"></i>
						<div class="alert-block _msg"></div>
					</div>
						</div>


			<div class="input_block form-group">
		<label class="mini-tit" for="join_name">이름<i aria-hidden="true" class="icon-required"></i></label>
		<div class="input_form _item _name">
						<input title="이름을(를) 입력하세요" type="text" id="join_name" name="name" placeholder="이름을(를) 입력하세요" value="" required="required">
			<i aria-hidden="true" class="zmdi zmdi-check"></i>
			<div class="alert-block _msg"></div>
		</div>
	</div>

	<div class="input_block form-group">
		<label class="mini-tit" for="join_callnum">연락처<i aria-hidden="true" class="icon-required"></i></label>
		<div class="input_form _item _callnum">
			<input type="tel" id="join_callnum" name="callnum" placeholder="연락처" value="" required="required">
			<i aria-hidden="true" class="zmdi zmdi-check"></i>
			<div class="alert-block _msg"></div>
		</div>
	</div>
	

			<div class="input_block form-group">
				<label class="mini-tit" for="join_addr">주소</label>
				
					<div class="select-block _item _addr_country">
						<div class="selectbox full-box">
							<select name="addr_country" class="form-control" onchange="SITE_MEMBER.changeCountry($(this).val());">
								<option value="">국가 선택</option>
								<option value="KH">캄보디아</option><option value="KR">대한민국</option><option value="LA">라오스</option><option value="MO">마카오</option><option value="MY">말레이시아</option><option value="MN">몽골</option><option value="MM">미얀마</option><option value="PH">필리핀</option><option value="TW">대만</option><option value="TH">태국</option><option value="VN">베트남</option>
							</select>
							<a href="" class="spin-down"><i aria-hidden="true" class="zmdi zmdi zmdi-caret-down"></i></a>
						</div>
						<div class="alert-block _msg"></div>
					</div>
					<div id="kr_addr_form_wrap" class="_addr_form_wrap" style="display: block;">
						<div class="input_form _item _addr">
							<input type="hidden" id="join_addr_postcode" name="addr_post" value="">
							<div class="input_trick" id="sub_join_addr"></div>
							<input type="text" id="join_addr" name="addr" placeholder="주소" value="" readonly="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
						<div id="join_addr_container" class="w100p" style="display:none; border:1px solid;margin:5px 0; position: relative; ">
							<div class="add_container _add_list w100p h337" style="padding: 0 0 0 0;position:relative;"></div>
						</div>
						<div class="input_form brt _item _addr_detail">
							<input title="상세주소" type="text" id="join_addr_detail" name="addr_detail" placeholder="상세주소" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
					</div>
				
					<div id="tw_addr_form_wrap" class="_addr_form_wrap" style="display: none;" data-city="_tw_city" data-district="_tw_district" data-postcode="_tw_postcode" data-country="tw">
						<div class="input_block _item _tw_addr ">
							<div class="float-block select-block">
								<input type="hidden" class="_tw_postcode" name="tw_addr_post" value="">
								<div class="selectbox">
									<select class="form-control _tw_city" name="tw_city"><option class="_default" value="">현시</option><option value="基隆市">基隆市</option><option value="台北市">台北市</option><option value="新北市">新北市</option><option value="宜蘭縣">宜蘭縣</option><option value="新竹市">新竹市</option><option value="新竹縣">新竹縣</option><option value="桃園市">桃園市</option><option value="苗栗縣">苗栗縣</option><option value="臺中市">臺中市</option><option value="彰化縣">彰化縣</option><option value="南投縣">南投縣</option><option value="嘉義市">嘉義市</option><option value="嘉義縣">嘉義縣</option><option value="雲林縣">雲林縣</option><option value="臺南市">臺南市</option><option value="高雄市">高雄市</option><option value="屏東縣">屏東縣</option><option value="臺東縣">臺東縣</option><option value="花蓮縣">花蓮縣</option><option value="金門縣">金門縣</option><option value="連江縣">連江縣</option><option value="澎湖縣">澎湖縣</option></select>
									<a href="" class="spin-down"><i aria-hidden="true" class="zmdi zmdi zmdi-caret-down"></i></a>
								</div>
								<div class="selectbox">
									<select class="form-control _tw_district" name="tw_district"><option class="_default" value="">향진시구</option></select>
									<a href="" class="spin-down"><i aria-hidden="true" class="zmdi zmdi zmdi-caret-down"></i></a>
								</div>
							</div>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form brt _item _addr_detail">
							<input type="text" name="tw_addr_detail" placeholder="상세주소" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
					</div>
					<div id="vn_addr_form_wrap" class="_addr_form_wrap" style="display: none;">
						<div class="input_form _item _addr">
							<input type="text" name="vn_addr" placeholder="상세주소" value="">
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr">
							<input type="text" name="vn_city" placeholder="군" value="">
							<input type="text" name="vn_district" placeholder="성" value="">
							<div class="alert-block _msg"></div>
						</div>
					</div>
				
					<div id="hk_addr_form_wrap" class="_addr_form_wrap" style="display: none;" data-city="_hk_city" data-district="_hk_district">
						<div class="input_block _item _hk_addr ">
							<div class="float-block select-block">
								<div class="selectbox">
									<select class="form-control _hk_city" name="hk_city"><option class="_default" value="">지역</option><option value="香港島">香港島</option><option value="九龍">九龍</option><option value="新界">新界</option></select>
									<a href="" class="spin-down"><i aria-hidden="true" class="zmdi zmdi zmdi-caret-down"></i></a>
								</div>
								<div class="selectbox">
									<select class="form-control _hk_district" name="hk_district"><option class="_default" value="">구역</option></select>
									<a href="" class="spin-down"><i aria-hidden="true" class="zmdi zmdi zmdi-caret-down"></i></a>
								</div>
							</div>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form brt _item _addr_detail">
							<input type="text" name="hk_addr_detail" placeholder="상세주소" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
					</div>
					<div id="jp_addr_form_wrap" class="_addr_form_wrap" style="display: none;">
						<div class="input_form _item _addr_post">
							<input type="text" name="jp_addr_post" placeholder="우편번호" value="">
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr">
							<input type="text" name="jp_addr" placeholder="주소" value="">
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr_detail">
							<input type="text" name="jp_addr_detail" placeholder="상세주소" value="">
							<div class="alert-block _msg"></div>
						</div>
					</div>
					<div id="en_addr_form_wrap" class="_addr_form_wrap" style="display: none;">
						<div class="input_form _item _addr_street">
							<input type="text" name="addr_street" placeholder="거리주소 (Street address, P.O box, company name, c/o)" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr_building">
							<input type="text" name="addr_building" placeholder="건물명 (Apartment, suite, unit, building, floor, etc.)" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr_city">
							<input type="text" name="addr_city" placeholder="도시명 (City)" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr_state">
							<input type="text" name="addr_state" placeholder="도시군 (State/Province/Region)" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
						<div class="input_form _item _addr_zipcode">
							<input type="text" name="addr_zipcode" placeholder="우편번호" value="">
							<i aria-hidden="true" class="zmdi zmdi-check"></i>
							<div class="alert-block _msg"></div>
						</div>
					</div>
			</div>			

				<div class="input_block form-group no-margin">
			<p class="txt_c no-margin">
				<button class="btn btn-brand w100p h45" onclick="SITE_MEMBER.joinSubmit(false); return false;" style="">가입하기</button>			</p>
					</div>
	</div>
		</form>






<!-- 네이버-->



<form id="join_form" method="post" action="/user2/V2Join.nhn?m=end">
    <input type="hidden" id="token_sjoin" name="token_sjoin" value="muPUbEIyYpIbqW70">
    <input type="hidden" id="encPswd" name="encPswd" value="">
    <input type="hidden" id="encKey" name="encKey" value="">
    <input type="hidden" id="birthday" name="birthday" value="">
    <input type="hidden" id="joinMode" name="joinMode" value="unreal">
    <input type="hidden" id="pbirthday" name="pbirthday" value="">
    <input type="hidden" id="ipinFlag" name="ipinFlag" value="">
    <input type="hidden" id="nid_kb2" name="nid_kb2" value="">

    <!-- container -->
    <div id="container" role="main">
        <div id="content">
            <!-- tg-text=title -->
            <h2 class="blind">Naver Sign Up</h2>
            <div class="join_content">
                <!-- 아이디, 비밀번호 입력 -->
                <div class="row_group">
                    <div class="join_row">
                        <h3 class="join_title"><label for="id">Username</label></h3>
                        <span class="ps_box int_id">
							<input type="text" id="id" name="id" class="int" title="ID" maxlength="20">
                            <span class="step_url">@naver.com</span></span>
                        <span class="error_next_box" id="idMsg" style="" aria-live="assertive">You can't leave this empty.</span>
                    </div>

                    <div class="join_row">
                        <h3 class="join_title"><label for="pswd1">Password</label></h3>
                        <span class="ps_box int_pass" id="pswd1Img">
							<input type="password" id="pswd1" name="pswd1" class="int" title="Input password" aria-describedby="pswd1Msg" maxlength="20">
                            <span class="lbl"><span id="pswd1Span" class="step_txt"></span></span>
						</span>
                        <span class="error_next_box" id="pswd1Msg" style="display:none" aria-live="assertive">5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>

                        <h3 class="join_title"><label for="pswd2">Password Confirm</label></h3>
                        <span class="ps_box int_pass_check" id="pswd2Img">
							<input type="password" id="pswd2" name="pswd2" class="int" title="Input password confirm" aria-describedby="pswd2Blind" maxlength="20">
							<span id="pswd2Blind" class="wa_blind">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span>
						</span>
                        <span class="error_next_box" id="pswd2Msg" style="display:none" aria-live="assertive"></span>
                    </div>
                </div>
                <!-- // 아이디, 비밀번호 입력 -->

                <!-- 이름, 생년월일 입력 -->
                <div class="row_group">

                    <!-- lang = en_US -->
                    <div class="join_row">
                        <h3 class="join_title"><label for="name1">Name</label></h3>
                        <div class="name_wrap">
                            <div class="bir_yy">
								<span class="ps_box box_right_space">
									<input type="text" id="name1" name="name1" placeholder="First Name" aria-label="First Name" class="int" maxlength="40">
								</span>
                            </div>
                            <div class=" bir_mm">
								<span class="ps_box box_right_space">
									<input type="text" id="name2" name="name2" placeholder="Last Name" aria-label="Last Name" class="int" maxlength="40">
								</span>
                            </div>
                        </div>
                        <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
                    </div>
                    <!-- lang = en_US -->

                    <div class="join_row join_birthday">
                        <h3 class="join_title"><label for="yy">DOB</label></h3>
                        <div class="bir_wrap">
                            <div class="bir_yy">
								<span class="ps_box">
									<input type="text" id="yy" placeholder="Year(4dgt)" aria-label="Year(4dgt)" class="int" maxlength="4">
								</span>
                            </div>
                            <div class="bir_mm">
								<span class="ps_box">
									<select id="mm" class="sel" aria-label="Month">
										<option value="">Month</option>
										  	 			<option value="01">
                                                            1
                                                        </option>
										  	 			<option value="02">
                                                            2
                                                        </option>
										  	 			<option value="03">
                                                            3
                                                        </option>
										  	 			<option value="04">
                                                            4
                                                        </option>
										  	 			<option value="05">
                                                            5
                                                        </option>
										  	 			<option value="06">
                                                            6
                                                        </option>
										  	 			<option value="07">
                                                            7
                                                        </option>
										  	 			<option value="08">
                                                            8
                                                        </option>
										  	 			<option value="09">
                                                            9
                                                        </option>
										  	 			<option value="10">
                                                            10
                                                        </option>
										  	 			<option value="11">
                                                            11
                                                        </option>
										  	 			<option value="12">
                                                            12
                                                        </option>
									</select>
								</span>
                            </div>
                            <div class=" bir_dd">
								<span class="ps_box">
									<input type="text" id="dd" placeholder="Day" aria-label="Day" class="int" maxlength="2">
									<label for="dd" class="lbl"></label>
								</span>
                            </div>
                        </div>
                        <span class="error_next_box" id="birthdayMsg" style="display:none" aria-live="assertive"></span>
                    </div>

                    <div class="join_row join_sex">
                        <h3 class="join_title"><label for="gender">Gender</label></h3>
                        <div class="ps_box gender_code">
                            <select id="gender" name="gender" class="sel" aria-label="Gender">
                                <option value="" selected="">Gender</option>
                                        <option value="F">Female</option>
                                        <option value="M">Male</option>
                                        <option value="U">Other</option>
                            </select>
                        </div>
                    </div>
                    <span class="error_next_box" id="genderMsg" style="display:none" aria-live="assertive"></span>

                    <div class="join_row join_email">
                        <h3 class="join_title"><label for="email">Recovery E-mail<span class="terms_choice">(Option)</span></label></h3>
                        <span class="ps_box int_email box_right_space">
							<input type="text" id="email" name="email" placeholder="Optional" aria-label="Optional" class="int" maxlength="100">
						</span>
                    </div>
                    <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
                </div>
                <!-- // 이름, 생년월일 입력 -->

                <!-- 휴대전화 번호, 인증번호 입력 -->
                <div class="join_row join_mobile" id="mobDiv">
                    <h3 class="join_title"><label for="phoneNo">Mobile Phone</label></h3>
                    <div class="ps_box country_code">
                        <select id="nationNo" name="nationNo" class="sel" aria-label="Enter Phone Number">
                                        <option value="93">
                                            Afghanistan +93
                                        </option>
                                        <option value="355">
                                            Albania +355
                                        </option>
                                        <option value="213">
                                            Algeria +213
                                        </option>
                                        <option value="1684">
                                            American Samoa +1 684
                                        </option>
                                        <option value="376">
                                            Andorra +376
                                        </option>
                                        <option value="244">
                                            Angola +244
                                        </option>
                                        <option value="54">
                                            Argentina +54
                                        </option>
                                        <option value="374">
                                            Armenia +374
                                        </option>
                                        <option value="297">
                                            Aruba +297
                                        </option>
                                        <option value="61">
                                            Australia +61
                                        </option>
                                        <option value="43">
                                            Austria +43
                                        </option>
                                        <option value="994">
                                            Azerbaijan +994
                                        </option>
                                        <option value="1242">
                                            Bahamas +1 242
                                        </option>
                                        <option value="973">
                                            Bahrain +973
                                        </option>
                                        <option value="880">
                                            Bangladesh +880
                                        </option>
                                        <option value="1246">
                                            Barbados +1 246
                                        </option>
                                        <option value="375">
                                            Belarus +375
                                        </option>
                                        <option value="32">
                                            Belgium +32
                                        </option>
                                        <option value="501">
                                            Belize +501
                                        </option>
                                        <option value="229">
                                            Benin +229
                                        </option>
                                        <option value="975">
                                            Bhutan +975
                                        </option>
                                        <option value="591">
                                            Bolivia +591
                                        </option>
                                        <option value="599">
                                            Bonaire +599
                                        </option>
                                        <option value="387">
                                            Bosnia and Herzegovina +387
                                        </option>
                                        <option value="267">
                                            Botswana +267
                                        </option>
                                        <option value="55">
                                            Brazil +55
                                        </option>
                                        <option value="673">
                                            Brunei Darussalam +673
                                        </option>
                                        <option value="359">
                                            Bulgaria +359
                                        </option>
                                        <option value="226">
                                            Burkina Faso +226
                                        </option>
                                        <option value="257">
                                            Burundi +257
                                        </option>
                                        <option value="855">
                                            Cambodia +855
                                        </option>
                                        <option value="237">
                                            Cameroon +237
                                        </option>
                                        <option value="238">
                                            Cape Verde +238
                                        </option>
                                        <option value="236">
                                            Central African Rep. +236
                                        </option>
                                        <option value="235">
                                            Chad +235
                                        </option>
                                        <option value="56">
                                            Chile +56
                                        </option>
                                        <option value="86">
                                            China +86
                                        </option>
                                        <option value="57">
                                            Colombia +57
                                        </option>
                                        <option value="269">
                                            Comoros +269
                                        </option>
                                        <option value="242">
                                            Congo (Rep. of the) +242
                                        </option>
                                        <option value="682">
                                            Cook Islands +682
                                        </option>
                                        <option value="506">
                                            Costa Rica +506
                                        </option>
                                        <option value="225">
                                            Cote dIvoire +225
                                        </option>
                                        <option value="385">
                                            Croatia +385
                                        </option>
                                        <option value="53">
                                            Cuba +53
                                        </option>
                                        <option value="357">
                                            Cyprus +357
                                        </option>
                                        <option value="420">
                                            Czech Republic +420
                                        </option>
                                        <option value="243">
                                            Dem. Rep. of the Congo +243
                                        </option>
                                        <option value="45">
                                            Denmark +45
                                        </option>
                                        <option value="246">
                                            Diego Garcia +246
                                        </option>
                                        <option value="253">
                                            Djibouti +253
                                        </option>
                                        <option value="1809">
                                            Dominican Rep. +1 809
                                        </option>
                                        <option value="1829">
                                            Dominican Rep. 2 +1 829
                                        </option>
                                        <option value="1849">
                                            Dominican Rep. 3 +1 849
                                        </option>
                                        <option value="593">
                                            Ecuador +593
                                        </option>
                                        <option value="20">
                                            Egypt +20
                                        </option>
                                        <option value="503">
                                            El Salvador +503
                                        </option>
                                        <option value="240">
                                            Equatorial Guinea +240
                                        </option>
                                        <option value="291">
                                            Eritrea +291
                                        </option>
                                        <option value="372">
                                            Estonia +372
                                        </option>
                                        <option value="251">
                                            Ethiopia +251
                                        </option>
                                        <option value="389">
                                            FYROM(Macedonia) +389
                                        </option>
                                        <option value="500">
                                            Falkland Islands (Malvinas) +500
                                        </option>
                                        <option value="298">
                                            Faroe Islands +298
                                        </option>
                                        <option value="679">
                                            Fiji +679
                                        </option>
                                        <option value="358">
                                            Finland +358
                                        </option>
                                        <option value="33">
                                            France +33
                                        </option>
                                        <option value="594">
                                            French Guiana +594
                                        </option>
                                        <option value="689">
                                            French Polynesia +689
                                        </option>
                                        <option value="241">
                                            Gabon +241
                                        </option>
                                        <option value="220">
                                            Gambia +220
                                        </option>
                                        <option value="995">
                                            Georgia +995
                                        </option>
                                        <option value="49">
                                            Germany +49
                                        </option>
                                        <option value="233">
                                            Ghana +233
                                        </option>
                                        <option value="350">
                                            Gibraltar +350
                                        </option>
                                        <option value="30">
                                            Greece +30
                                        </option>
                                        <option value="299">
                                            Greenland +299
                                        </option>
                                        <option value="1473">
                                            Grenada +1 473
                                        </option>
                                        <option value="590">
                                            Guadeloupe +590
                                        </option>
                                        <option value="1671">
                                            Guam +1 671
                                        </option>
                                        <option value="502">
                                            Guatemala +502
                                        </option>
                                        <option value="224">
                                            Guinea +224
                                        </option>
                                        <option value="245">
                                            Guinea-Bissau +245
                                        </option>
                                        <option value="592">
                                            Guyana +592
                                        </option>
                                        <option value="509">
                                            Haiti +509
                                        </option>
                                        <option value="504">
                                            Honduras +504
                                        </option>
                                        <option value="852">
                                            Hong Kong, China +852
                                        </option>
                                        <option value="36">
                                            Hungary +36
                                        </option>
                                        <option value="354">
                                            Iceland +354
                                        </option>
                                        <option value="91">
                                            India +91
                                        </option>
                                        <option value="62">
                                            Indonesia +62
                                        </option>
                                        <option value="98">
                                            Iran (Islamic Republic of) +98
                                        </option>
                                        <option value="964">
                                            Iraq +964
                                        </option>
                                        <option value="353">
                                            Ireland +353
                                        </option>
                                        <option value="972">
                                            Israel +972
                                        </option>
                                        <option value="39">
                                            Italy +39
                                        </option>
                                        <option value="1876">
                                            Jamaica +1 876
                                        </option>
                                        <option value="81">
                                            Japan +81
                                        </option>
                                        <option value="962">
                                            Jordan +962
                                        </option>
                                        <option value="254">
                                            Kenya +254
                                        </option>
                                        <option value="686">
                                            Kiribati +686
                                        </option>
                                        <option value="82" selected="">
                                            Korea (Rep. of) +82
                                        </option>
                                        <option value="965">
                                            Kuwait +965
                                        </option>
                                        <option value="996">
                                            Kyrgyzstan +996
                                        </option>
                                        <option value="856">
                                            Lao P.D.R. +856
                                        </option>
                                        <option value="371">
                                            Latvia +371
                                        </option>
                                        <option value="961">
                                            Lebanon +961
                                        </option>
                                        <option value="266">
                                            Lesotho +266
                                        </option>
                                        <option value="231">
                                            Liberia +231
                                        </option>
                                        <option value="218">
                                            Libya +218
                                        </option>
                                        <option value="423">
                                            Liechtenstein +423
                                        </option>
                                        <option value="370">
                                            Lithuania +370
                                        </option>
                                        <option value="352">
                                            Luxembourg +352
                                        </option>
                                        <option value="853">
                                            Macao, China +853
                                        </option>
                                        <option value="261">
                                            Madagascar +261
                                        </option>
                                        <option value="265">
                                            Malawi +265
                                        </option>
                                        <option value="60">
                                            Malaysia +60
                                        </option>
                                        <option value="960">
                                            Maldives +960
                                        </option>
                                        <option value="223">
                                            Mali +223
                                        </option>
                                        <option value="356">
                                            Malta +356
                                        </option>
                                        <option value="692">
                                            Marshall Islands +692
                                        </option>
                                        <option value="596">
                                            Martinique +596
                                        </option>
                                        <option value="222">
                                            Mauritania +222
                                        </option>
                                        <option value="230">
                                            Mauritius +230
                                        </option>
                                        <option value="52">
                                            Mexico +52
                                        </option>
                                        <option value="691">
                                            Micronesia +691
                                        </option>
                                        <option value="373">
                                            Moldova +373
                                        </option>
                                        <option value="377">
                                            Monaco +377
                                        </option>
                                        <option value="976">
                                            Mongolia +976
                                        </option>
                                        <option value="382">
                                            Montenegro +382
                                        </option>
                                        <option value="212">
                                            Morocco +212
                                        </option>
                                        <option value="258">
                                            Mozambique +258
                                        </option>
                                        <option value="95">
                                            Myanmar +95
                                        </option>
                                        <option value="264">
                                            Namibia +264
                                        </option>
                                        <option value="674">
                                            Nauru +674
                                        </option>
                                        <option value="977">
                                            Nepal +977
                                        </option>
                                        <option value="31">
                                            Netherlands +31
                                        </option>
                                        <option value="687">
                                            New Caledonia +687
                                        </option>
                                        <option value="64">
                                            New Zealand +64
                                        </option>
                                        <option value="505">
                                            Nicaragua +505
                                        </option>
                                        <option value="227">
                                            Niger +227
                                        </option>
                                        <option value="234">
                                            Nigeria +234
                                        </option>
                                        <option value="683">
                                            Niue +683
                                        </option>
                                        <option value="672">
                                            Norfolk Island +672
                                        </option>
                                        <option value="1670">
                                            Northern Mariana Islands +1 670
                                        </option>
                                        <option value="47">
                                            Norway +47
                                        </option>
                                        <option value="968">
                                            Oman +968
                                        </option>
                                        <option value="92">
                                            Pakistan +92
                                        </option>
                                        <option value="680">
                                            Palau +680
                                        </option>
                                        <option value="970">
                                            Palestine +970
                                        </option>
                                        <option value="507">
                                            Panama +507
                                        </option>
                                        <option value="675">
                                            Papua New Guinea +675
                                        </option>
                                        <option value="595">
                                            Paraguay +595
                                        </option>
                                        <option value="51">
                                            Peru +51
                                        </option>
                                        <option value="63">
                                            Philippines +63
                                        </option>
                                        <option value="48">
                                            Poland +48
                                        </option>
                                        <option value="351">
                                            Portugal +351
                                        </option>
                                        <option value="1787">
                                            Puerto Rico +1 787
                                        </option>
                                        <option value="974">
                                            Qatar +974
                                        </option>
                                        <option value="262">
                                            Reunion +262
                                        </option>
                                        <option value="40">
                                            Romania +40
                                        </option>
                                        <option value="7">
                                            Russian Federation/Kazakhstan +7
                                        </option>
                                        <option value="250">
                                            Rwanda +250
                                        </option>
                                        <option value="290">
                                            Saint Helena +290
                                        </option>
                                        <option value="508">
                                            Saint Pierre and Miquelon +508
                                        </option>
                                        <option value="1784">
                                            Saint Vincent and the Grenadines +1 784
                                        </option>
                                        <option value="685">
                                            Samoa +685
                                        </option>
                                        <option value="378">
                                            San Marino +378
                                        </option>
                                        <option value="239">
                                            Sao Tome and Principe +239
                                        </option>
                                        <option value="966">
                                            Saudi Arabia +966
                                        </option>
                                        <option value="221">
                                            Senegal +221
                                        </option>
                                        <option value="381">
                                            Serbia +381
                                        </option>
                                        <option value="248">
                                            Seychelles +248
                                        </option>
                                        <option value="232">
                                            Sierra Leone +232
                                        </option>
                                        <option value="65">
                                            Singapore +65
                                        </option>
                                        <option value="421">
                                            Slovakia +421
                                        </option>
                                        <option value="386">
                                            Slovenia +386
                                        </option>
                                        <option value="677">
                                            Solomon Islands +677
                                        </option>
                                        <option value="252">
                                            Somalia +252
                                        </option>
                                        <option value="27">
                                            South Africa +27
                                        </option>
                                        <option value="34">
                                            Spain +34
                                        </option>
                                        <option value="94">
                                            Sri Lanka +94
                                        </option>
                                        <option value="249">
                                            Sudan +249
                                        </option>
                                        <option value="597">
                                            Suriname +597
                                        </option>
                                        <option value="268">
                                            Swaziland +268
                                        </option>
                                        <option value="46">
                                            Sweden +46
                                        </option>
                                        <option value="41">
                                            Switzerland +41
                                        </option>
                                        <option value="963">
                                            Syrian Arab Republic +963
                                        </option>
                                        <option value="886">
                                            Taiwan, China +886
                                        </option>
                                        <option value="992">
                                            Tajikistan +992
                                        </option>
                                        <option value="255">
                                            Tanzania +255
                                        </option>
                                        <option value="66">
                                            Thailand +66
                                        </option>
                                        <option value="670">
                                            Timor-Leste +670
                                        </option>
                                        <option value="228">
                                            Togo +228
                                        </option>
                                        <option value="690">
                                            Tokelau +690
                                        </option>
                                        <option value="676">
                                            Tonga +676
                                        </option>
                                        <option value="1868">
                                            Trinidad and Tobago +1 868
                                        </option>
                                        <option value="216">
                                            Tunisia +216
                                        </option>
                                        <option value="90">
                                            Turkey +90
                                        </option>
                                        <option value="993">
                                            Turkmenistan +993
                                        </option>
                                        <option value="256">
                                            Uganda +256
                                        </option>
                                        <option value="380">
                                            Ukraine +380
                                        </option>
                                        <option value="971">
                                            United Arab Emirates +971
                                        </option>
                                        <option value="44">
                                            United Kingdom +44
                                        </option>
                                        <option value="1">
                                            United States/Canada  +1
                                        </option>
                                        <option value="598">
                                            Uruguay +598
                                        </option>
                                        <option value="998">
                                            Uzbekistan +998
                                        </option>
                                        <option value="678">
                                            Vanuatu +678
                                        </option>
                                        <option value="58">
                                            Venezuela +58
                                        </option>
                                        <option value="84">
                                            Vietnam +84
                                        </option>
                                        <option value="681">
                                            Wallis and Futuna +681
                                        </option>
                                        <option value="967">
                                            Yemen +967
                                        </option>
                                        <option value="260">
                                            Zambia +260
                                        </option>
                                        <option value="263">
                                            Zimbabwe +263
                                        </option>
                        </select>
                    </div>
                    <div class="int_mobile_area">
						<span class="ps_box int_mobile">
							<input type="tel" id="phoneNo" name="phoneNo" placeholder="Enter Phone Number" aria-label="Enter Phone Number" class="int" maxlength="16">
							<label for="phoneNo" class="lbl"></label>
						</span>
                        <a href="#" class="btn_verify btn_primary" id="btnSend" role="button">
                            <span class="">Send Code</span>
                        </a>
                    </div>
                    <div class="ps_box_disable box_right_space" id="authNoBox">
                        <input type="tel" id="authNo" name="authNo" placeholder="Enter verification code" aria-label="Enter verification code" aria-describedby="wa_verify" class="int" disabled="" maxlength="4">
                        <label id="wa_verify" for="authNo" class="lbl">
                            <span class="wa_blind">인증받은 후 인증번호를 입력해야 합니다.</span>
                            <span class="input_code" id="authNoCode" style="display:none;"></span>
                        </label>
                    </div>

                    <span class="error_next_box" id="phoneNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="authNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="joinMsg" style="display:none" aria-live="assertive"></span>
                </div>
                <!-- // 휴대전화 번호, 인증번호 입력 -->

                <!-- tg-display=>{"보호자 모바일 인증": [], "오류 메시지": []} -->
                <div class="join_minor tab" id="pmobDiv" style="display:none">
                    <ul class="tab_m" role="tablist">
                        <li class="m1" role="presentation"><a href="#" onclick="return false;" class="on" role="tab" aria-selected="true" aria-controls="wa_tab_phone">휴대전화인증</a></li>
                        <li class="m2" role="presentation"><a href="#" id="tabPrtsIpin" role="tab" aria-selected="false" aria-controls="wa_tab_ipin">아이핀 인증</a></li>
                    </ul>
                    <div id="wa_tab_phone" role="tabpanel">
                        <div class="agree_check_wrap">
                            <div class="terms_chk_all">
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_all" class="chk_all">
                                    <label for="pagree_all">
                                        <span class="chk_all_txt">아래 약관에 모두 동의합니다.</span>
                                    </label>
                                </span>
                            </div>
                            <div class="small_check_box">
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_01" class="chk">
                                    <label for="pagree_01">
                                        <a href="https://nid.naver.com/user2/common/terms/terms.nhn?m=viewPersonalInfoTerms" target="_blank"><span>개인정보 이용</span></a>
                                    </label>
                                </span>
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_02" class="chk">
                                    <label for="pagree_02">
                                        <a href="https://nid.naver.com/user2/common/terms/terms.nhn?m=viewUniqInfoTerms" target="_blank"><span>고유식별정보 처리</span></a>
                                    </label>
                                </span>
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_03" class="chk">
                                    <label for="pagree_03">
                                        <a href="https://nid.naver.com/user2/common/terms/terms.nhn?m=viewCellPhoneCarriersTerms" target="_blank"><span>통신사 이용약관</span></a>
                                    </label>
                                </span>
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_04" class="chk">
                                    <label for="pagree_04">
                                        <a href="https://nid.naver.com/user2/common/terms/terms.nhn?m=viewServiceTerms" target="_blank"><span>인증사 이용약관</span></a>
                                    </label>
                                </span>
                                <span class="input_chk">
                                    <input type="checkbox" id="pagree_05" class="chk">
                                    <label for="pagree_05">
                                        <a href="https://nid.naver.com/user2/common/terms/terms.nhn?m=viewNaverTerms" target="_blank"><span>네이버 개인정보 수집</span></a>
                                    </label>
                                </span>
                            </div>
                            <span class="error_next_box" id="pagreeMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                        </div>
                        <div class="row_group">
                            <div class="join_row">
                                <h3 class="join_title"><label for="pname">보호자 이름</label></h3>
                                <span class="ps_box box_right_space">
                                    <input type="text" id="pname" name="pname" title="보호자 이름" class="int" maxlength="40">
                                </span>
                                <span class="error_next_box" id="pnameMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            </div>
                            <div class="join_row join_birthday">
                                <h3 class="join_title"><label for="pyy">보호자 생년월일</label></h3>
                                <div class="bir_wrap">
                                    <div class="bir_yy">
                                        <span class="ps_box">
                                            <input type="text" id="pyy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
                                        </span>
                                    </div>
                                    <div class="bir_mm">
                                        <span class="ps_box">
                                            <select id="pmm" name="pmm" class="sel" aria-label="월">
                                                <option>월</option>
                                                <option>1</option><option>2</option><option>3</option>
                                                <option>4</option><option>5</option><option>6</option>
                                                <option>7</option><option>8</option><option>9</option>
                                                <option>10</option><option>11</option><option>12</option>
                                            </select>
                                        </span>
                                    </div>
                                    <div class="bir_dd">
                                        <span class="ps_box">
                                            <input type="text" id="pdd" placeholder="일" aria-label="일" class="int" maxlength="2">
                                            <label for="pdd" class="lbl"></label>
                                        </span>
                                    </div>
                                </div>
                                <span class="error_next_box" id="pbirthdayMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            </div>
                            <div class="join_row">
                                <h3 class="join_title"><label for="pgender">보호자 성별/국적</label></h3>
                                <div class="join_guardian">
                                    <div class="gender_nationality">
                                        <div class="ps_box gender_code">
                                            <select id="pgender" name="pgender" class="sel" aria-label="성별">
                                                <option value="" selected="">성별</option>
                                                <option value="0">남자</option>
                                                <option value="1">여자</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="gender_nationality">
                                        <div class="ps_box gender_code">
                                            <select id="pforeign" name="pforeign" class="sel" aria-label="내국인여부">
                                                <option value="0" selected="">내국인</option>
                                                <option value="1">외국인</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <span class="error_next_box" id="pgenderMsg" style="display:none" aria-live="assertive"></span>
                            </div>
                        </div>
                        <div class="join_row join_mobile">
                            <h3 class="join_title"><label for="ptelecom">통신사</label></h3>
                            <div class="ps_box country_code">
                                <select id="ptelecom" name="ptelecom" class="sel" aria-label="통신사">
                                    <option value="SKT">SKT</option>
                                    <option value="KTF">KT</option>
                                    <option value="LGT">LG U+</option>
                                    <option value="SKR">SKT 알뜰폰</option>
                                    <option value="KTR">KT 알뜰폰</option>
                                    <option value="LGR">LG U+ 알뜰폰</option>
                                </select>
                            </div>
                        </div>
                        <div class="join_row join_mobile">
                            <h3 class="join_title"><label for="pphoneNo">휴대전화</label></h3>
                            <div class="int_mobile_area">
                                <span class="ps_box int_mobile">
                                    <input type="tel" id="pphoneNo" name="pphoneNo" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="16">
                                </span>
                                <a href="#" class="btn_verify btn_primary" id="btnPrtsSend" role="button">
                                    <span class="">인증번호 받기</span>
                                </a>
                            </div>
                            <div class="ps_box_disable box_right_space" id="pauthNoBox">
                                <input type="tel" id="pauthNo" name="pauthNo" placeholder="인증번호 입력하세요" aria-label="인증번호 입력하세요" aria-describedby="pwa_verify" class="int" disabled="" maxlength="6">
                                <label id="pwa_verify" for="pauthNo" class="lbl">
                                    <span class="wa_blind">인증받은 후 인증번호를 입력해야 합니다.</span>
                                    <span class="input_code" id="pauthNoCode" style="display:none;"></span>
                                </label>
                            </div>
                            <span class="error_next_box" id="pphoneNoMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            <span class="error_next_box" id="pauthNoMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            <span class="error_next_box" id="pjoinMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                        </div>
                    </div>
                </div>
                <!-- tg-display -->

                <!-- tg-display=>{"보호자 아이핀 인증": [], "오류 메시지": []} -->
                <div class="join_minor tab" id="pipinDiv" style="display:none">
                    <ul class="tab_m" role="tablist">
                        <li class="m1" role="presentation"><a href="#" id="tabPrtsMobile" role="tab" aria-selected="false" aria-controls="wa_tab_phone">휴대전화인증</a></li>
                        <li class="m2" role="presentation"><a href="#" onclick="return false;" class="on" role="tab" aria-selected="true" aria-controls="wa_tab_ipin">아이핀 인증</a></li>
                    </ul>
                    <div id="wa_tab_ipin" role="tabpanel">
                        <div class="terms_chk_all">
                            <span class="input_chk">
                                <input type="checkbox" id="iagree_all" class="chk">
                                <label for="iagree_all" class="ipin_label">
                                    <span class="txt">보호자 인증이 완료되면 보호자 이름, 생년월일, 성별, 중복가입확인정보(DI)가 보호자 동의 확인을 위하여 아동의 정보와 함께 저장되며, <strong class="point">아동이 성년이 되는 시점에 파기됩니다.</strong></span>
                                </label>
                            </span>
                            <span class="error_next_box" id="iagreeMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                        </div>
                        <div class="ipin_box">
                            <p class="ipin_certify_txt">보호자 명의의 아이핀으로 인증 후<br> 가입이 가능 합니다.</p>
                            <button type="button" id="btnIpinPopup" class="ipin_certify_btn" title="새 창">
                                <span>아이핀 인증하기</span>
                            </button>
                            <span class="error_next_box" id="ipopupMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                        </div>
                        <div class="join_row join_mobile">
                            <h3 class="join_title"><label for="iphoneNo">휴대전화</label></h3>
                            <div class="int_mobile_area">
                                <span class="ps_box int_mobile">
                                    <input type="tel" id="iphoneNo" name="iphoneNo" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="16">
                                </span>
                                <a href="#" class="btn_verify btn_primary" id="btnIpinSend" role="button">
                                    <span class="">인증번호 받기</span>
                                </a>
                            </div>
                            <div class="ps_box_disable box_right_space" id="iauthNoBox">
                                <input type="tel" id="iauthNo" name="iauthNo" placeholder="인증번호 입력하세요" aria-label="인증번호 입력하세요" aria-describedby="iwa_verify" class="int" disabled="" maxlength="4">
                                <label id="iwa_verify" for="iauthNo" class="lbl">
                                    <span class="wa_blind">인증받은 후 인증번호를 입력해야 합니다.</span>
                                    <span class="input_code" id="iauthNoCode" style="display:none;"></span>
                                </label>
                            </div>
                            <span class="error_next_box" id="iphoneNoMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            <span class="error_next_box" id="iauthNoMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                            <span class="error_next_box" id="ijoinMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
                        </div>
                    </div>
                </div>

                <div class="btn_area">
                    <button type="button" id="btnJoin" class="btn_type btn_primary"><span>Sign Up</span></button>
                </div>
            </div>
        </div>
    </div>
    <!-- // container -->
</form>





</body>
</html>