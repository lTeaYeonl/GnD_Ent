<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
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
	background:
		url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6T57wnTPfO86zfCBdRqumXjKZedkYaDX_TA&usqp=CAU)
		50% 0;
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
.sub_tt {
	position: relative;
	width: 100%;
	text-align: center;
	color: #fff;
	font-size: 35px;
	line-height: 40px;
	font-weight: 500;
	padding-top: 25px;
	list-style: none;
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
	.f_cont .help {
		font-size: 12px;
		color: rgba(98, 98, 98, 0.55);
		margin-left: 8px;
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

	.inner .long_ct label {
		font-size: 11px;
		text-transform: uppercase;
		font-weight: 600;
		margin-bottom: 10px;
		display: block;
		opacity: 1;
		transition: opacity 0.2s ease;
		color: #828282
	}

	.inner .f_three {
	    position: relative;
	    width: 100%;
	    height: auto;
	    overflow: hidden;
	}
	
	    .inner .f_three li {
	        float: left;
	    }
	
	    .inner .f_three .long_ct.cut {
	        width: 35.90%;
	        margin-right: 0.5%;
	    }
	
	        .inner .f_three .long_ct.cut.no {
	            margin-right: 0;
	        }
	
	        .inner .f_three .long_ct.cut .ct_txt {
	            position: relative;
	            width: 74%;
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
		color: #2c2c2c;
		outline: 0;
		height: 35px;
		line-height: normal;
		font-size: 14px;
		font-weight: normal;
		vertical-align: middle;
		min-height: 35px;
		border-radius: 2px;
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
			
.nationality {
	width: 100%;
	height: 25px;
	border: none;
	padding: 0px 0px 0px 2px;
	margin-top: -4px;
	color: #2c2c2c;
	height: 35px;
	line-height: normal;
	font-size: 14px;
	font-weight: normal;
	vertical-align: middle;
	min-height: 35px;
	box-shadow: none;
	border-radius: 2px;
	background-color: #fff;
}

</style>
</head>
<body>
<div class="main">
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
		
	<form action="${pageContext.request.contextPath }/Audition/signup.jsp" id="frm" method="post" name="frm" novalidate>
		<div class="sub_bg">
			<div class="bk_bg"></div>
				<ul class="sub_top">
					<li class="sub_tt">Sign Up</li>
				</ul>
		</div>
			<div class="bg_gray">
				<div class="inner sub01">
					<div class="f_cont">
						<p class="f_tt">1. 필수 정보
							<span class="help">(*는 필수기재 항목입니다.)</span>
						</p>
					</div>
					<div class="long_ct">
						<label>* 이름
						 <span class="help">한글로만 작성</span>
						</label>
						 <input type="text" class="ct_txt" id="inf_name" name="inf_name" maxlength="20" style="font-weight: 700" />
					</div>
					<div class="long_ct">
						<label>* 이메일
						 <span class="help">ex.OOO@OOO.com</span>
						</label>
						 <input type="text" class="ct_txt" id="inf_email" name="inf_email" maxlength="60" style="font-weight: 700" />
						<button class="btn-layer file" id="checkBtn" name="checkBtn">중복확인</button>
						<span id="checkResult"></span>
					</div>
				<ul class="f_two">
					<li class="long_ct cut">
						<label for="inf_pwd"> * 비밀번호
							<span class="help">최소 8자 이상으로 영문자 대문자, 영문자 소문자, 숫자, 특수문자가 각각 최소 1개 이상</span>
						</label> 
						<input class="ct_txt" id="inf_pwd" maxlength="20" type="password" required />
					</li>
					<li class="long_ct cut no">
						<label for="confirm_password">* 비밀번호 확인 </label> 
						<input class="ct_txt" id="inf_pwd2" maxlength="20" type="password" />
					</li>
				</ul>
			<div class="f_cont">
				<p class="f_tt">2. 기본 정보
					<span class="help">(*는 필수기재 항목입니다.)</span>
				</p>
				<ul class="f_two">
					<li class="long_ct cut">
					 <label>* 국적</label>
					 <select class="nationality" name="inf_nt" id="inf_nt">
							<option value>-선택-</option>
							<option value="GHANA_0">가나(GHANA)</option>
							<option value="GABON_1">가봉(GABON)</option>
							<option value="GUYANA_2">가이아나 (GUYANA)</option>
							<option value="GUAM_3">괌 (GUAM)</option>
							<option value="GREECE_4">그리스 (GREECE)</option>
							<option value="SOUTH AFRICA_5">남아프리카 공화국 (SOUTH
								AFRICA)</option>
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
							<option value="VATICAN CITY STATE_16">바티칸 시국 (VATICAN
								CITY STATE)</option>
							<option value="BANGLADESH_17">방글라데시 (BANGLADESH)</option>
							<option value="BELGIUM_18">벨기에 (BELGIUM)</option>
							<option value="SWITZERLAND_19">스위스 (SWITZERLAND)</option>
							<option value="SINGAPORE_20">싱가포르 (SINGAPORE)</option>
							<option value="CHRISTMAS ISLAND_21">크리스마스 섬 (CHRISTMAS
								ISLAND)</option>
							<option value="HUNGARY_22">헝가리 (HUNGARY)</option>
					 </select>
					</li>
					<li class="long_ct cut no"><label>* 좋아하는 가수 분야</label>
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
						<label>* 생년월일
							 <span class="help">e.g."2020-07-06"</span>
						</label>
						 <input class="ct_txt" id="inf_bday" maxlength="10" name="inf_bday" type="text" />
					</li>	
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>* 신장</label>
						<input class="ct_txt" id="inf_height" maxlength="3" name="inf_height" oninput="maxLengthCheck(this)" type="number" />	
					</li>
					<li class="long_ct no">
						<label>* 체중</label> 
						<input class="ct_txt" id="inf_weight" name="inf_weight" oninput="maxLengthCheck(this)" maxlength="3" type="number"/>		
					</li>
				</ul>
				<ul class="f_wto">
					<li class="long_ct cut">
					<label>* 휴대폰 
						<span class="help"> EX."000-0000-0000"</span>
					</label>
						<input class="ct_txt" id="inf_phone" name="inf_phone" type="text" />
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>* 직업
							<span class="help">회사명/학교명을 입력해 주세요.(예:OO기업/고등학교)</span>
						</label>
							<input class="ct_txt" id="inf_job" maxlength="30" name="inf_job" type="text" />
					</li>
					<li class="long_ct cut no">
						<label>* SNS 주소 
							<span class="help">url형식 (http://cafe.naver.com/)</span>
						</label>
						 <input class="ct_txt" id="inf_sns" maxlength="100" name="inf_sns" type="text" />
					</li>
				</ul>
				<div class="long_ct">
					<label>* 주소</label> 
					 <input class="ct_txt" id="inf_address" name="inf_address" maxlength="50" type="text" />	
				</div>
			</div>
				<div class="f_cont" style="margin-bottom: 15px;">
					<p class="f_tt">3. 추가 정보</p>
					<ul class="f_three">
						<li class="long_ct cut">
							<label>언어(상,중,하)</label>
							<input class="ct_txt" id="inf_lan" maxlength="20" name="inf_lan" type="text" />
						</li>
						<li class="long_ct cut">
							<label>취미</label>
							<input class="ct_txt" id="inf_hobby" maxlength="20" name="inf_hobby" type="text" />
						</li>
						<li class="long_ct cut">
							<label>특기</label>
							<input class="ct_txt" id="inf_spec" maxlength="20" name="inf_spec" type="text" />
						</li>
					</ul>
					<div class="long_ct">
						<label>자기소개</label>
						<textarea class="ct_txt pr" cols="20" id="inf_intro" maxlength="500" name="inf_intro" rows="2" style="height: 200px"></textarea>
					</div>
					<button type="submit" class="btn sub_ck" id="apply">지원하기</button>
					</div>
				</div>
			</div>
	</form>
</div>	

<!-- Footer -->
<jsp:include page="../bottom/footer.jsp"></jsp:include>
<!-- Footer Close -->
<!-- 버튼 전체선택 & 해제 기능 start -->
<script>
	$("#checkBtn").on("click", function() {
		//아이디 중복확인은 여기서 한다.
		//입력한 아이디를 읽어온다.
		var inputId = $("#inf_email").val();
		//ajax 를 이용해서 서버에 보낸후 결과를 응답 받는다.
		$.ajax({
			method : "GET",
			url : "checkid.jsp",
			data : "inputId=" + inputId,
			success : function(data) {
				//data => {isExist:true} or {isExist:false} 인 object 이다.
				if (data.isExist) {//이미 존재하는 아이디임으로 사용 불가
					$("#checkResult").text("사용불가").css("color", "red");
					//아이디가 사용 불가 하다고 표시한다.
					canUseId = false;
				} else {//사용가능 
					$("#checkResult").text("사용가능").css("color", "green");
					//아이디가 사용 가능 하다고 표시한다.
					canUseId = true;
				}
			}
		});
		//form 안에 있는 일반 버튼을 눌러도 폼이 전송 되기 때문에 폼 전송을 막아준다.
		return false;
	});

	$("#frm").on("submit",function() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getCheck = RegExp(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/);
		var getName = RegExp(/^[가-힣]+$/);
		var getPhone = RegExp(/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/);
		var getBirthday = RegExp(/(\d{4}).*(\d{2}).*(\d{2})/);
		var getsns = RegExp(/^(file|gopher|news|nntp|telnet|https?|ftps?|sftp):\/\/([a-z0-9-]+\.)+[a-z0-9]{2,4}.*$/);
		var fmt = RegExp(/^\d{6}[1234]\d{6}$/);//형식 설정
	
		//이름 공백 검사
		if ($("#inf_name").val() == "") {
			alert("이름을 입력해주세요");
			$("#inf_name").focus();
			return false;
		}
		//이름 유효성 검사 
		if (!getName.test($("#inf_name").val())) {
			alert("이름형식에 맞게 입력해주세요")
			$("#inf_name").val("");
			$("#inf_name").focus();
			return false;
		}
		//이메일 공백 확인
		if ($("#inf_email").val() == "") {
			alert("이메일을 입력해주세요");
			$("#inf_email").focus();
			return false;
		}
		//이메일 유효성 검사
		if (!getMail.test($("#inf_email").val())) {
			alert("이메일형식에 맞게 입력해주세요")
			$("#inf_email").val("");
			$("#inf_email").focus();
			return false;
		}
		//비밀번호 공백 확인 
		if ($("#inf_pwd").val() == "") {
			alert("패스워드 입력해주세요");
			$("#inf_pwd").focus();
			return false;
		}
		//비밀번호 유효성검사
		if (!getCheck.test($("#inf_pwd").val())) {
			alert("비밀번호 형식에 맞게 입력해주세요");
			$("#inf_pwd").val("");
			$("#inf_pwd").focus();
			return false;
		}
		//비밀번호 확인란 공백 확인
		if ($("#inf_pwd2").val() == "") {
			alert("패스워드 확인란을 입력해주세요");
			$("#inf_pwd2").focus();
			return false;
		}
	
		//비밀번호 서로확인
		if ($("#inf_pwd").val() != $("#inf_pwd2").val()) {
			alert("비밀번호가 상이합니다");
			$("#inf_pwd").val("");
			$("#inf_pwd2").val("");
			$("#inf_pwd").focus();
			return false;
		}
		//아이디 비밀번호 같음 확인 
		if ($("#inf_name").val() == $("#inf_pwd").val()) {
			alert("이름과 비밀번호가 같습니다");
			$("#inf_pwd").val("");
			$("#inf_pwd").focus();
			return false;
		}
	
		//국적 공백 확인 
		if ($("#inf_nt").val() == "") {
			alert("국적을 선택해주세요");
			$("#inf_nt").focus();
			return false;
		}
		//좋아하는 가수분야 공백 확인
		if ($("#inf_sel").val() == "") {
			alert("좋아하는 가수 분야를 선택해 주세요");
			$("#inf_sel").focus();
			return false;
		}
		//성별 선택 공백 확인
		if ($("#inf_sex").val() == "") {
			alert("성별란을 선택해주세요");
			$("#inf_sex").focus();
			return false;
		}
		//생년월일 유효성 검사
		if ($("#inf_bday").val() == "") {
			alert("생년월일을 입력해주세요");
			$("#inf_bday").focus();
			return false;
		}
		if (!getBirthday.test($("#inf_bday").val())) {
			alert("생년월일을 형식에 맞게 입력해주세요")
			$("#inf_bday").val("");
			$("#inf_bday").focus();
			return false;
		}
		//신장 공백 확인
		if ($("#inf_height").val() == "") {
			alert("신장을 입력해주세요");
			$("#inf_height").focus();
			return false;
		}
		//체중 공백 확인
		if ($("#inf_weight").val() == "") {
			alert("체중을 입력해주세요");
			$("#inf_weight").focus();
			return false;
		}
	
		//휴대폰 공백 확인
		if ($("#inf_phone").val() == "") {
			alert("휴대폰번호를 입력해주세요");
			$("#inf_phone").focus();
			return false;
		}
		//휴대폰 유효성 검사
		if (!getPhone.test($("#inf_phone").val())) {
			alert("휴대폰번호를 형식에 맞게 입력해주세요")
			$("#inf_phone").val("");
			$("#inf_phone").focus();
			return false;
		}
		//직업 공백 확인
		if ($("#inf_job").val() == "") {
			alert("직업을 적어주세요.");
			$("#inf_job").focus();
			return false;
		}
		//sns 유효성 검사
		if (!getsns.test($("#inf_sns").val())) {
			alert("sns를 형식에 맞게 적어주세요")
			$("#inf_sns").val("");
			$("#inf_sns").focus();
			return false;
		}
		//주소 공백 확인
		if ($("#inf_address").val() == "") {
			alert("주소를 입력해주세요");
			$("#inf_address").focus();
			return false;
		}
	});
</script>

<!-- 몸무게 & 체중 숫자를 3자리로 제한 start -->
<script>
	function maxLengthCheck(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(0, object.maxLength);
		}
	};
</script>
<!-- 몸무게 & 체중 숫자를 3자리로 제한 end -->
</body>
</html>