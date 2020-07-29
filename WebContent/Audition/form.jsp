<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<style>

	.bg_gray {
	    position: relative;
	    width: 100%;
	    height: auto;
	    overflow: hidden;
	    background-color: #fafafa;
	}
	.sub_bg {
	    position: relative;
	    width: 100%;
	    height: 370px;
	    margin: 0 auto;
	    background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6T57wnTPfO86zfCBdRqumXjKZedkYaDX_TA&usqp=CAU) 50% 0;
	}
	
	    .sub_bg .bk_bg {
	        position: absolute;
	        width: 100%;
	        height: 370px;
	        margin: 0 auto;
	        background-color: #000;
	        opacity: 0.5;
	    }
	
	.sub_top {
	    position: relative;
	    max-width: 1170px;
	    margin: 0 auto;
	    top: 160px;
	    padding: 0em 15px;
	}
	
	    .sub_top.select_sub {
	        top: 130px;
	    }
	
	    .sub_top.aud_check {
	        line-height: 32px;
	        top: 40%;
	    }
	
	.sub_tt {
	    position: relative;
	    width: 100%;
	    text-align: center;
	    color: #fff;
	    font-size: 35px;
	    line-height: 40px;
	    font-weight: 500;
	    padding-top: 25px;
	    list-style:none;
	}
	.form_select {
	    position: relative;
	    max-width: 750px;
	    margin: 0 auto;
	    height: auto;
	    overflow: hidden;
	    top: 50px;
	}
	
	.form_option {
	    position: relative;
	    width: 100%;
	    background-color: #ffffff;
	    border: 1px solid rgba(0, 0, 0, 0.07);
	    font-family: Arial, sans-serif;
	    color: #2c2c2c;
	    height: 35px;
	    padding: 9px 12px;
	    line-height: normal;
	    font-size: 14px;
	    font-weight: normal;
	    vertical-align: middle;
	    min-height: 35px;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    border-radius: 2px;
	    -webkit-border-radius: 2px;
	    -moz-border-radius: 2px;
	}
	
	.inner.sub01 {
	    position: relative;
	    width: 1170px;
	    margin: 0 auto;
	    height: auto;
	    overflow: hidden;
	    padding: 6em 15px;
	}
	
	    .inner.sub01 .f_cont {
	        position: relative;
	        width: 100%;
	        height: auto;
	        overflow: hidden;
	        margin-bottom: 30px;
	    }
	
	    .inner.sub01 .f_tt {
	        position: relative;
	        width: 100%;
	        text-align: left;
	        font-size: 18px;
	        color: #000;
	        margin-bottom: 20px;
	    }
	
	    .inner.sub01 .long_ct {
	        background-color: #fff;
	        position: relative;
	        height: auto;
	        border: 1px solid rgba(0, 5, 0, 0.07);
	        border-radius: 2px;
	        margin-bottom: 10px;
	        padding-top: 1.2%;
	        padding-left: 1.03%;
	        padding-right: 1.03%;
	        padding-bottom: 0.5%;
	        overflow: hidden;
	        -webkit-transition: background-color 0.2s ease;
	        transition: background-color 0.2s ease;
	    }
	
	
	.inner .f_two {
	    position: relative;
	    width: 100%;
	    height: auto;
	    overflow: hidden;
	    
	}

	    .inner .f_two li {
	        float: left;
	        
	    }
	
	    .inner .f_two .long_ct.cut {
	        width: 40.5%;
	        margin-right: 0.5%;
	    }
	
	        .inner .f_two .long_ct.cut.no {
	            margin-right: 0;
	        }
	.file {
	    position: relative;
	    float: right;
	    padding: 7px 20px;
	    outline: none;
	    background-color: #e8e8e8;
	    color: #000;
	    border: 1px solid #afafaf;
	    ;
	    font-size: 11px;
	    text-transform: uppercase;
	    font-family: "Work Sans", Arial, sans-serif;
	    cursor: pointer;
	    font-weight: 400;
	}
	
	.f_limit {
	    position: relative;
	    width: 100%;
	    font-size: 12px;
	    color: rgba(98, 98, 98, 0.55);
	    margin-bottom: 10px;
	    line-height: 20px;
	}
	
	
	.inner .long_ct label {
	    font-size: 11px;
	    text-transform: uppercase;
	    font-weight: 600;
	    margin-bottom: 10px;
	    display: block;
	    opacity: 1;
	    -webkit-transition: opacity 0.2s ease;
	    transition: opacity 0.2s ease;
	    color: #828282
	}
	
	.ct_txt {
	    border: none;
	    width: 100%;
	    resize: none;
	    overflow: hid height: 25px;
	    min-height: 25px;
	    padding: 0px 0px 0px 2px;
	    margin-top: -4px;
	    background: none;
	    font-family: Arial, sans-serif;
	    -webkit-appearance: none;
	    color: #2c2c2c;
	    outline: 0;
	    height: 35px;
	    line-height: normal;
	    font-size: 14px;
	    font-weight: normal;
	    vertical-align: middle;
	    min-height: 35px;
	    -webkit-transition: all 0.12s ease;
	    transition: all 0.12s ease;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    border-radius: 2px;
	    -webkit-border-radius: 2px;
	    -moz-border-radius: 2px;
	    -webkit-transition: background 0.2s linear 0s;
	    transition: background 0.2s linear 0s;
	}
	
	    .ct_txt.email {
	        width: 80%;
	    }
	
	.long_ct label .help {
	    font-size: 12px;
	    color: rgba(98, 98, 98, 0.55);
	    margin-left: 8px;
	}
	
	.btn.sub_ck {
	    border-radius: 0px;
	    padding: 15px 0;
	    width: 20%;
	    margin: 0 40%;
	    color: #fff;
	    border: none;
	    margin-top: 30px;
	    background-color: #009be6
	}
	
	    .btn.sub_ck.ok_bt {
	        width: 30%;
	        margin: 0 35%;
	        padding: 15px 0;
	    }
	
	        .btn.sub_ck.ok_bt:hover, .btn.sub_ck:hover {
	            background: #251f1f !important;
	        }
	
	    .btn.sub_ck.ok_mail {
	        width: 100%;
	        margin: 0;
	        margin-top: 30px;
	    }
	
	.nationality {
	    width: 100%;
	    height: 25px;
	    border: none;
	    padding: 0px 0px 0px 2px;
	    margin-top: -4px;
	    font-family: Arial, sans-serif;
	    color: #2c2c2c;
	    height: 35px;
	    line-height: normal;
	    font-size: 14px;
	    font-weight: normal;
	    vertical-align: middle;
	    min-height: 35px;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    border-radius: 2px;
	    -webkit-border-radius: 2px;
	    -moz-border-radius: 2px;
	    background-color: #fff;
	}
</style>
</head>
<body>
<div class="main">
	<!-- /top/navbar.jsp -->
<nav class="navbar navbar-expand-lg" style="background-color:#171717;">
	<a class="navbar-brand" href="index.jsp">
		<img src="${pageContext.request.contextPath }/image/L_gnd.png" alt="GnD_Logo" />
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">뉴스</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">플레이리스트</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">아티스트</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">뉴스레터 구독</a>
			</li>
		</ul>
	</div>
	<div class="social-icons">
		<a href="https://www.facebook.com/warnermusickorea/">
			<i class="fab fa-facebook-f" style="color: white;"></i>
		</a>
		<a href="https://www.instagram.com/warnermusickorea/">
			<i class="fab fa-youtube" style="color: white;"></i>
		</a>
		<a href="https://www.youtube.com/user/WMK2011">
			<i	class="fab fa-instagram" style="color: white;"></i>
		</a>
		<a href="https://twitter.com/Warner_Music_Kr">
			<i	class="fab fa-twitter" style="color: white;"></i>
		</a>
	</div>
</nav>
	<form action="signup.jsp" enctype="multipart/form-data" id="frm" method="post" name="frm" novalidate="novalidate">
	<div class="sub_bg" >
		<div class="bk_bg"></div>
			<ul class="sub_top">
				<li class="sub_tt">Sign Up</li>
			</ul>
	</div>
	<div class="bg_gray">
		<div class="inner sub01">
			<div class="f_cont memberinfo">
		 	 	<p class="f_tt">1. 필수 정보</p>
			</div>
			<div class="long_ct">
				<label>* 이름</label>
				<input type="text" class="ct_txt" id="inf_name" name="inf_name" maxlength="20" style="font-weight:700" value />
			</div>
			<div class="long_ct">
				<label>* 이메일</label>
				<input type="text" class="ct_txt" id="inf_email" name="inf_email" maxlength="60" style="font-weight:700" value />
				<button class="btn-layer file" id="checkBtn">중복확인</button>
				<span id="checkResult"></span>
			</div>
			<ul class="f_two" style="display:">
				<li class="long_ct cut">
					<label for="inf_pwd">
					* 비밀번호
					<span class="help">숫자,영문,(특수문자) 포함 10자 이상</span> 
					</label>
					<input class="ct_txt" id="inf_pwd" maxlength="20" name="inf_pwd" type="password"/>
				</li>
				<li class="long_ct cut no">
				<label for="confirm_password"> * 비밀번호 확인</label>
				<input class="ct_txt" id="inf_pwd2" maxlength="20" name="inf_pwd2" type="password"/>
				</li>
			</ul>
			<div class="f_cont memberinfo">
				<p class="f_tt">2. 기본 정보</p>
				<ul class="f_two">
					<li class="long_ct cut">
					<label>* 국적</label>
					<select class="nationality" name="inf_nt" id="inf_ft">
						<option value>-선택-</option>
						<option value="GHANA_0">가나(GHANA)</option>
						<option value="GABON_1">가봉(GABON)</option>
						<option value="GUYANA_2">가이아나 (GUYANA)</option>
						<option value="GUAM_3">괌 (GUAM)</option>
						<option value="GREECE_4">그리스 (GREECE)</option>
						<option value="SOUTH AFRICA_5">남아프리카 공화국 (SOUTH AFRICA)</option>
						<option value="NETHERLANDS_6">네덜란드 (NETHERLANDS)</option>
						<option value="NEPAL_7">네팔 (NEPAL)</option>
						<option value="NORWAY_8">노르웨이 (NORWAY)</option>
						<option value="NEW ZEALAND_9">뉴질랜드 (NEW ZEALAND)</option>
						<option value="GUYANA_10">가이아나 (GUYANA)</option>
						<option value="KOREA_11">대한민국 (KOREA)</option>
						<option value="MEXICO_12">멕시코 (MEXICO)</option>
						<option value="MOROCCO_13">모로코 (MOROCCO)</option>
						<option value="MONGOLIA_14">몽골 (MONGOLIA)</option>
						<option value="MYANMAR_15">미얀마 (MYANMAR)</option>
						<option value="VATICAN CITY STATE_16">바티칸 시국 (VATICAN CITY STATE)</option>
						<option value="BANGLADESH_17">방글라데시 (BANGLADESH)</option>
						<option value="BELGIUM_18">벨기에 (BELGIUM)</option>
						<option value="SWITZERLAND_19">스위스 (SWITZERLAND)</option>
						<option value="SINGAPORE_20">싱가포르 (SINGAPORE)</option>
						<option value="CHRISTMAS ISLAND_21">크리스마스 섬 (CHRISTMAS ISLAND)</option>
						<option value="HUNGARY_22">헝가리 (HUNGARY)</option>
					</select>
					</li>
					<li class="long_ct cut no">
						<label>*좋아하는 가수 분야</label>
						<select class="nationality" name="inf_sel" id="inf_sel">
							<option value>-선택-</option>
							<option value="1">보컬</option>
							<option value="2">랩(RAP)</option>
							<option value="3">댄스</option>
						</select> 
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>* 성별</label>
						<select class="nationality" name="inf_sex" id="inf_sex">
							<option value>-선택-</option>
							<option value="1">남(MALE)</option>	
							<option value="2">여(FEMALE)</option>
						</select>
					</li>
					<li class="long_ct cut no">
						<label>*생년월일
							<span class="help">e.g."2020-07-06"</span>
						</label>
						<input class="ct_txt hasDtepicker" id="inf_bday" maxlength="10" name="inf_bday" readonly="True" type="text" value/>
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>*신장</label>
						<input class="ct_txt" id="inf_height" inputmode="numeric" maxlength="3" min="0" name="inf_height" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>
					</li>
					<li class="long_ct no">
						<label>*체중</label>
						<input class="ct_txt" id="inf_weight" inputmode="numeric" maxlength="3" min="0" name="inf_weight" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>			
					</li>
				</ul>
				<ul class="f_wto">
					<li class="long_ct cut">
						<label>* 휴대폰</label>
						<input class="ct_txt" id=" inf_phone" inputmode="numeric" maxlength="14" min="0" name=" inf_phone" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>			
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>* 직업<span class="help">회사명/학교명을 입력해 주세요.(예:OO기업/고등학교)</span></label>
						<input class="ct_txt" id="inf_job" maxlength="30" name="inf_job" type="text" value/>
					</li>
					<li class="long_ct cut no">
						<label>SNS 주소</label>
						<input class="ct_txt" id="inf_sns" maxlength="100" name="inf_sns" style="ime-mode:disabled;" type="text" value/>
					</li>
				</ul>
				<div class="long_ct">
					<label>* 주소</label>
					<input class="ct_txt" id="postcode" name="postcode" readonly="True" type="hidden" value/>
					<input class="ct_txt" id="inf_address" name="inf_address" maxlength="50" readonly="True" type="text" value/>
				</div>
				<div class="long_ct">
					<label>상세주소</label>
					<input class="ct_txt" id="inf_address2" name="inf_address2" maxlength="50" type="text" value/>
				</div>
				
			<div class="f_cont memberinfo" style="margin-bottom:15px;">
				<p class="f_tt">3. 추가 정보</p>
					<ul class="f_three">
						<li class="long_ct cut">
							<label>언어(상,중,하)</label>
							<input class="ct_txt" id="inf_lan" maxlength="20" name="inf_lan" type="text" value/>
						</li>
						<li class="long_ct cut">
							<label>취미</label>
							<input class="ct_txt" id="inf_hobby" maxlength="20" name="inf_hobby" type="text" value/>
						</li>
						<li class="long_ct cut">
							<label>특기</label>
							<input class="ct_txt" id="inf_spec" maxlength="20" name="inf_spec" type="text" value/>
						</li>
					</ul>
				<div class="long_ct">
					<label>자기소개</label>
					<textarea class="ct_txt pr" cols="20" id="inf_intro" maxlength="500" name="inf_intro" rows="2" style="height:200px"></textarea>
				</div>
				<input id="emailauthyn" name="emailauthyn" type="hidden" value/>
				<input id="agree" name="agree" type="hidden" value/>
				<button type="submit" class="btn sub_ck" id="apply">지원하기</button>
			</div>
		</div>
	</div>
</form>
</div>
<!--  동의 누르면 회원가입 폼으로 감 start-->	
<script>
	$('#apply').click(function () {
		if (!$('#confirm').is('checked')) {
   			alert('지원이 완료되었습니다.');
   			location.href="../main/index.jsp";
    	return false;
    	}
	});
</script>
<!-- 동의 누르면 회원가입 폼으로 감 end-->
<!-- 중복 이메일 확인 start -->
	<script>
		var canUseId=false;
		//중복 확인 버튼을 눌렀을때 실행할 함수 등록
		$("#checkBtn").on("click", function(){
			//입력한 아이디를 읽어온다.
			var inputId=$("#email").val();
			//ajax 를 이용해서 서버에 보낸후 결과를 응답 받는다.
			$.ajax({
				method:"GET",
				url:"checkid.jsp",
				data:"inputId="+inputId,
				success:function(data){
					//data => {isExist:true} or {isExist:false} 인 object 이다.
					if(data.isExist){//이미 존재하는 아이디임으로 사용 불가
						$("#checkResult")
						.text("사용불가")
						.css("color","red");
						//아이디가 사용 불가 하다고 표시한다.
						canUseId=false;
					}else{//사용가능 
						$("#checkResult")
						.text("사용가능")
						.css("color","green");
						//아이디가 사용 가능 하다고 표시한다.
						canUseId=true;
					}
	 			}
			});
			//form 안에 있는 일반 버튼을 눌러도 폼이 전송 되기 때문에 폼 전송을 막아준다.
			return false;
		});
		//폼에 submit 이벤트가 일어났을때 호출될 함수 등록 
		$("#myForm").on("submit", function(){
			
			if(!canUseId){//사용 불가한 아이디 이면 
				alert("동일한 이메일로 가입한 정보가 있습니다.");
				return false; //폼 제출 막기 
			}
	});
		</script>
<!-- 중복 이메일 확인 end -->
<!-- 비밀번호 확인 Start -->
<script>
	//id 가 myForm  인 곳에 submit 이벤트가 일어 났을때 실행할 함수 등록 
	$("#frm").on("submit", function(){
		//입력한 새로운 비밀번호 2개를 읽어와서 
		var pwd1=$("#password").val();
		var pwd2=$("#confirm_password").val();
		//만일 일치하지 않으면 
		if(pwd1 != pwd2){
			//알림을 띄우고 
			alert("비밀번호가 일치 하지 않아요");
			//비밀번호 입력란을 초기화 하고 포커스도 주고 
			$("#password").val("").focus();
			$("#confirm_password").val("");
			//폼전송을 막는다. 
			return false;
		}
	});
</script>
<!-- 비밀번호 확인 end -->
<div class="footer" style="background-color:#202020;">
	<div class="container mt-5">
		<div class="row">
			<div class="col mt-5">
				<a href="index.jsp">
					<img src="${pageContext.request.contextPath }/image/L_gnd.png" alt="GnD_Logo_Image" />
				</a>
			</div>
			<div class="col mt-5">
				<div class="container">
					<h3 class="title" style="color:#ffffff; font-size:12px;">
						<span>CONTACT US</span>
					</h3>
				</div>
				<div class="container">
					<a href="mailto:clairiamport@gmail.com" style="color:#777777; font-size:12px;">GnDMusic.korea@gmail.com</a>
				</div>
			</div>
			<div class="col mt-5">
				<div class="container">
					<h3 class="title"  style="color:#ffffff; font-size:12px;">
						<span>TERMS AND CONDITIONS</span>
					</h3>
				</div>
				<div class="container">
					<p>
						<a href="#" target="_blank" style="color:#777777; font-size:12px;">이용약관</a>
					</p>
					<p>
						<a href="#" target="_blank" style="color:#777777; font-size:12px;">개인정보 처리방침</a>
					</p>
					<p>
						<a href="#" target="_blank" style="color:#777777; font-size:12px;">개인정보 처리방침 - 입사지원자용</a>
					</p>
				</div>
			</div>
			<div class="col mt-5">
				<div class="container">
					<h3 class="title"  style="color:#ffffff; font-size:12px;">
						<span>SUBSCRIPTION</span>
					</h3>
				</div>
				<div class="container">
					<p>
						<a href="#" target="_blank" style="color:#777777; font-size:12px;">뉴스레터 구독</a>
					</p>
					<p>
						<a href="#" target="_blank" style="color:#777777; font-size:12px;">블로그 방문</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="background-color:#171717;">
	<div class="container">
		<div class="row">
			<div class="col mt-3" style="color:#898989; font-size:12px;">
				<p>COPYRIGHT © 2020 GND MUSIC KOREA. All Rights Reserved.</p>
			</div>
			<div class="col mt-3">
				<div class="social-icons float-right">
					<a href="https://www.facebook.com/warnermusickorea/">
						<i class="fab fa-facebook-f" style="color: white;"></i>
					</a>
					<a href="https://www.instagram.com/warnermusickorea/">
						<i class="fab fa-youtube" style="color: white;"></i>
					</a>
					<a href="https://www.youtube.com/user/WMK2011">
						<i	class="fab fa-instagram" style="color: white;"></i>
					</a>
					<a href="https://twitter.com/Warner_Music_Kr">
						<i	class="fab fa-twitter" style="color: white;"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>