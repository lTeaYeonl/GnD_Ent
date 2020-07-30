<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
=======
<title>form</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
>>>>>>> refs/heads/hongil
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
	list-style: none;
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
<<<<<<< HEAD
	.sub_bg {
	    position: relative;
	    width: 100%;
	    height: 370px;
	    margin: 0 auto;
	    background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6T57wnTPfO86zfCBdRqumXjKZedkYaDX_TA&usqp=CAU) 50% 0 no-repeat;
=======

	.inner.sub01 .f_tt {
		position: relative;
		width: 100%;
		text-align: left;
		font-size: 18px;
		color: #000;
		margin-bottom: 20px;
>>>>>>> refs/heads/hongil
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
<<<<<<< HEAD
	    position: relative;
	    width: 100%;
	    height: auto;
	    overflow: hidden;
=======
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
		border: 1px solid #afafaf;;
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
>>>>>>> refs/heads/hongil
	}

<<<<<<< HEAD
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
	
	        .inner .f_two .long_ct.cut .ct_txt.file_in {
	            position: relative;
	            width: 75%;
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
	          .inner .f_three .long_ct.cut .ct_txt.file_in {
	            position: relative;
	            width: 75%;
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
	
=======
>>>>>>> refs/heads/hongil
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
<<<<<<< HEAD
<div class="main">
	<div class="header_main">
		<a href="">
			<div class="main_logo" alt="gnd엔터테인먼트">
			</div>
		</a>
	</div>
	<form action="" enctype="multipart/form-data" id="frm" method="post" name="frm" novalidate="novalidate">
	<div class="sub_bg" >
		<div class="bk_bg"></div>
			<ul class="sub_top">
				<li class="sub_tt">AUDITION</li>
			</ul>
	</div>
	<div class="bg_gray">
		<div class="inner sub01">
			<div class="f_cont memberinfo">
		 	 	<p class="f_tt">1. 필수 정보</p>
=======
	<div class="main">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<form action="${pageContext.request.contextPath }/Audition/signup.jsp"
			id="frm" method="post" name="frm" novalidate>
			<div class="sub_bg">
				<div class="bk_bg"></div>
				<ul class="sub_top">
					<li class="sub_tt">Sign Up</li>
				</ul>
>>>>>>> refs/heads/hongil
			</div>
<<<<<<< HEAD
			<div class="long_ct">
				<label>* 이름</label>
				<input type="text" class="ct_txt" id="name" name="name" maxlength="20" style="font-weight:700" value />
			</div>
			<div class="long_ct">
				<label>* 이메일</label>
				<input type="text" class="ct_txt" id="name" name="name" maxlength="60" style="font-weight:700" value />
				<button type="submit" class="btn-layer file" id="emailAuth">이메일 인증</button>
			</div>
			<ul class="f_two" style="display:">
				<li class="long_ct cut">
					<label>
					*비밀번호
					<span class="help">숫자,영문,(특수문자) 포함 10자 이상</span> 
					</label>
					<input class="ct_txt" id="password" maxlength="20" name="password" type="password" value/>
				</li>
				<li class="long_ct cut no">
				<label> *비밀번호 확인</label>
				<input class="ct_txt" id="confirm_password" maxlength="20" name="confirm_password" type="password" value/>
				</li>
			</ul>
			<div class="f_cont memberinfo">
				<p class="f_tt">2. 기본 정보</p>
				<ul class="f_two">
					<li class="long_ct cut">
					<label>* 국적</label>
					<select class="nationality" name="app" id="app">
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
						<label>*지원 분야</label>
						<select class="nationality" name="nation" id="nation">
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
						<select class="nationality" name="gender" id="gender">
							<option value>-선택-</option>
							<option value="1">남(MALE)</option>	
							<option value="2">여(FEMALE)</option>
						</select>
					</li>
					<li class="long_ct cut no">
						<label>*생년월일
							<span class="help">e.g."2020-07-06"</span>
						</label>
						<input class="ct_txt hasDtepicker" id="birth" maxlength="10" name="birth" readonly="True" type="text" value/>
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>*신장</label>
						<input class="ct_txt" id="height" inputmode="numeric" maxlength="3" min="0" name="height" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>
					</li>
					<li class="long_ct no">
						<label>*체중</label>
						<input class="ct_txt" id="weight" inputmode="numeric" maxlength="3" min="0" name="weight" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>			
					</li>
				</ul>
				<ul class="f_wto">
					<li class="long_ct cut">
						<label>* 휴대폰</label>
						<input class="ct_txt" id="phone" inputmode="numeric" maxlength="14" min="0" name="phone" oninput="maxLengthCheck(this)" pattern="[0-9]*" type="number" value/>			
					</li>
				</ul>
				<ul class="f_two">
					<li class="long_ct cut">
						<label>* 직업<span class="help">회사명/학교명을 입력해 주세요.(예:OO기업/고등학교)</span></label>
						<input class="ct_txt" id="job" maxlength="30" name="job" type="text" value/>
					</li>
					<li class="long_ct cut no">
						<label>SNS 주소</label>
						<input class="ct_txt" id="sns" maxlength="100" name="sns" style="ime-mode:disabled;" type="text" value/>
					</li>
				</ul>
				<div class="long_ct">
					<label>* 주소</label>
					<input class="ct_txt" id="postcode" name="postcode" readonly="True" type="hidden" value/>
					<input class="ct_txt" id="address" name="address" maxlength="50" readonly="True" type="text" value/>
				</div>
				<div class="long_ct">
					<label>상세주소</label>
					<input class="ct_txt" id="address2" name="address2" maxlength="50" type="text" value/>
				</div>
				<ul class="f_three" id=PROFILE_YN">
					<li class="long_ct cut">
						<label>* 프로필(정면사진)
						<span class="help">* 이미지파일('gif', 'pmg', 'jpg', 'jpeg'), 2M 이하</span>
						</label>
						<br>
						<input class="ct_txt" id="profile"  name="profile" placeholder="선택한 파일이 없습니다." type="file" value/>
						<div id="profile_filename"></div>
						<div id="profile_progress"></div>
						<div id="profile-progressBar" class="progressBar"></div>
						<input id="profile_ur1" name="profile_url" type="hidden" vlaue/>
						<input id="profile_name" name="profile_name" type="hidden" value/>
						<script>

					    $(document).ready(function () {

					        $('input[name=profile]').change(function () {
					            $(this).simpleUpload("/Audition/UploadFiles", {

					                allowedExts: ['gif', 'png', 'jpg', 'jpeg'],

					                maxFileSize: 50000000, //50MB in bytes
					                start: function (file) {
					                    //upload started
					                    $('#profile_filename').html(file.name);
					                    $('#profile_progress').html("");
					                    $('#profile_progressBar').width(0);
					                },

					                progress: function (progress) {
					                    //received progress
					                    $('#profile_progress').html("Progress: " + Math.round(progress) + "%");
					                    $('#profile_progressBar').width(progress + "%");
					                },

					                success: function (data) {
					                    //upload successful
					                    //$('#progress').html("Success!<br>Data: " + JSON.stringify(data));

					                    var json = JSON.parse(JSON.stringify(data));

					                    $("#src").html(json.Url);


					                    var templete = '<div class="file_item"><a href="#" id="src">' + json.FileName + '</a><a href="#none"> <img src="/Content/images/icon_delete.gif" alt="삭제" id="del"></a></div>';
					                    $(".fileaddarea").append(templete);
					                    $("#profile_url").val(json.Url);
					                    $("#profile_name").val(json.FileName);

					                    $("#del").on("click", function () {
					                        $(this).parent().parent().remove();
					                        $("#src").html('');
					                        $("#file").val('');
					                        $("#profile_url").val('');
					                        $("#profile_name").val('');

					                        $('#profile_filename').html("");
					                        $('#profile_progress').html("");
					                        $('#profile_progressBar').width(0);

					                    });
					                },

					                error: function (error) {
					                    //upload failed
					                    alert("Failure!\n" + error.name + ": " + error.message);
					                    $('#profile_filename').html("");
					                    $('#profile_progress').html("");
					                    $('#profile_progressBar').width(0);
					                    //$('#progress').html("Failure!<br>" + error.name + ": " + error.message);
					                }

					            });

					        });
					    });
						</script>
					</li>		
					<li class="long_ct ut f_long" id="AUDIO_YN">
						<label>* 음원 <span class="help">* 음원파일('mp3') 50M 이하</span></label>
						<br>
						<input class="ct_txt" id="musicpp"  name="musicpp" placeholder="선택한 파일이 없습니다." type="file" value/>
						<div id="music_filename"></div>
						<div id="music_progress"></div>
						<div id="music-progressBar" class="progressBar"></div>
						<input id="music_ur1" name="music_url" type="hidden" vlaue/>
						<input id="music_name" name="music_name" type="hidden" value/>
						<script type="text/javascript">
						    $(document).ready(function () {
	
						        $('input[name=musicpp]').change(function () {
						            $(this).simpleUpload("/Audition/UploadFiles", {
	
						                    
						                    allowedExts: ["mp3"],
	
						                    
	
						                maxFileSize: 50000000, //50MB in bytes
						                start: function (file) {
						                    //upload started
						                    $('#music_filename').html(file.name);
						                    $('#music_progress').html("");
						                    $('#music_progressBar').width(0);
						                },
	
						                progress: function (progress) {
						                    //received progress
						                    $('#music_progress').html("Progress: " + Math.round(progress) + "%");
						                    $('#music_progressBar').width(progress + "%");
						                },
	
						                success: function (data) {
						                    //upload successful
						                    //$('#progress').html("Success!<br>Data: " + JSON.stringify(data));
	
						                    var json = JSON.parse(JSON.stringify(data));
	
						                    $("#src").html(json.Url);
	
	
						                    var templete = '<div class="file_item"><a href="#" id="src">' + json.FileName + '</a><a href="#none"> <img src="/Content/images/icon_delete.gif" alt="삭제" id="del"></a></div>';
						                    $(".fileaddarea").append(templete);
						                    $("#music_url").val(json.Url);
						                    $("#music_name").val(json.FileName);
	
						                    $("#del").on("click", function () {
						                        $(this).parent().parent().remove();
						                        $("#src").html('');
						                        $("#file").val('');
						                        $("#music_url").val('');
						                        $("#music_name").val('');
	
						                        $('#music_filename').html("");
						                        $('#music_progress').html("");
						                        $('#music_progressBar').width(0);
	
						                    });
						                },
	
						                error: function (error) {
						                    //upload failed
						                    alert("Failure!\n" + error.name + ": " + error.message);
						                    $('#music_filename').html("");
						                    $('#music_progress').html("");
						                    $('#music_progressBar').width(0);
						                    //$('#progress').html("Failure!<br>" + error.name + ": " + error.message);
						                }
						            });
						        });
						    });
						</script> 
					</li>
					<li class="long_ct cut no f_long" id="MOVIE_YN">
						<label>* 영상<span class="help">*영상 파일('mp4'm 'mov', 'avi'), 50M 이하, 10분 이내</span></label>
						<br>
						<input class="ct_txt" id="filepp"  name="filepp" placeholder="선택한 파일이 없습니다." type="file" value/>
						<div id="file_filename"></div>
						<div id="file_progress"></div>
						<div id="file-progressBar" class="progressBar"></div>
						<input id="file_ur1" name="file_url" type="hidden" vlaue/>
						<input id="file_name" name="file_name" type="hidden" value/>
						<script type="text/javascript">
					    $(document).ready(function () {

					        $('input[name=filepp]').change(function () {
					            $(this).simpleUpload("/Audition/UploadFiles", {

					                    
					                    allowedExts: ["mp4", "mov", "avi"],
					                    

					                maxFileSize: 50000000, //50MB in bytes
					                start: function (file) {
					                    //upload started
					                    $('#file_filename').html(file.name);
					                    $('#file_progress').html("");
					                    $('#file_progressBar').width(0);
					                },

					                progress: function (progress) {
					                    //received progress
					                    $('#file_progress').html("Progress: " + Math.round(progress) + "%");
					                    $('#file_progressBar').width(progress + "%");
					                },

					                success: function (data) {
					                    //upload successful
					                    //$('#progress').html("Success!<br>Data: " + JSON.stringify(data));

					                    var json = JSON.parse(JSON.stringify(data));

					                    $("#src").html(json.Url);


					                    var templete = '<div class="file_item"><a href="#" id="src">' + json.FileName + '</a><a href="#none"> <img src="/Content/images/icon_delete.gif" alt="삭제" id="del"></a></div>';
					                    $(".fileaddarea").append(templete);
					                    $("#file_url").val(json.Url);
					                    $("#file_name").val(json.FileName);

					                    $("#del").on("click", function () {
					                        $(this).parent().parent().remove();
					                        $("#src").html('');
					                        $("#file").val('');
					                        $("#file_url").val('');
					                        $("#file_name").val('');

					                        $('#file_filename').html("");
					                        $('#file_progress').html("");
					                        $('#file_progressBar').width(0);

					                    });
					                },

					                error: function (error) {
					                    //upload failed
					                    alert("Failure!\n" + error.name + ": " + error.message);
					                    $('#file_filename').html("");
					                    $('#file_progress').html("");
					                    $('#file_progressBar').width(0);
					                    //$('#progress').html("Failure!<br>" + error.name + ": " + error.message);
					                }
					            });
					        });
					    });
						</script>			
					</li>
				</ul>
				<p class="f_limit">
        			* 본 오디션을 위해 제작된 녹음/영상물의 대한 저작권은 GND피엔터테인먼트에 귀속됩니다.
					<br>
    				 단, 창작성이 인정되며 저작권에 준하는 권리보호의 필요성이 인정되는 컨텐츠는 제외 됩니다.
				</p>
			</div>
			<div class="f_cont memberinfo" style="margin-bottom:15px;">
				<p class="f_tt">3. 추가 정보</p>
					<ul class="f_three">
						<li class="long_ct cut">
							<label>언어(상,중,하)</label>
							<input class="ct_txt" id="lang" maxlength="20" name="lang" type="text" value/>
						</li>
						<li class="long_ct cut">
							<label>취미</label>
							<input class="ct_txt" id="hobby" maxlength="20" name="hobby" type="text" value/>
						</li>
						<li class="long_ct cut">
							<label>특기</label>
							<input class="ct_txt" id="specialize" maxlength="20" name="specialize" type="text" value/>
						</li>
=======
			<div class="bg_gray">
				<div class="inner sub01">
					<div class="f_cont memberinfo">
						<p class="f_tt">1. 필수 정보</p>
					</div>
					<div class="long_ct">
						<label>* 이름 <span class="help">한글로만 작성</span>
						</label> <input type="text" class="ct_txt" id="inf_name" name="inf_name"
							maxlength="20" style="font-weight: 700" />
					</div>
					<div class="long_ct">
						<label>* 이메일 <span class="help">ex.OOO@OOO.com</span>
						</label> <input type="text" class="ct_txt" id="inf_email" name="inf_email"
							maxlength="60" style="font-weight: 700" />
						<button class="btn-layer file" id="checkBtn" name="checkBtn">중복확인</button>
						<span id="checkResult"></span>
					</div>
					<ul class="f_two">
						<li class="long_ct cut"><label for="inf_pwd"> * 비밀번호
								<span class="help">최소 8자 이상으로 영문자 대문자, 영문자 소문자, 숫자, 특수문자가
									각각 최소 1개 이상</span>
						</label> <input class="ct_txt" id="inf_pwd" maxlength="20" type="password"
							required /></li>
						<li class="long_ct cut no"><label for="confirm_password">*
								비밀번호 확인</label> <input class="ct_txt" id="inf_pwd2" maxlength="20"
							type="password" /></li>
>>>>>>> refs/heads/hongil
					</ul>
<<<<<<< HEAD
				<div class="long_ct">
					<label>자기소개</label>
					<textarea class="ct_txt pr" cols="20" id="introduce" maxlength="500" name="introduce" rows="2" style="height:200px"></textarea>
=======
					<div class="f_cont memberinfo">
						<p class="f_tt">2. 기본 정보</p>
						<ul class="f_two">
							<li class="long_ct cut"><label>* 국적</label> <select
								class="nationality" name="inf_nt" id="inf_nt">
									<option>-선택-</option>
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
							</select></li>
							<li class="long_ct cut no"><label>*좋아하는 가수 분야</label> <select
								class="nationality" name="inf_sel" id="inf_sel">
									<option>-선택-</option>
									<option value="1">보컬</option>
									<option value="2">랩(RAP)</option>
									<option value="3">댄스</option>
							</select></li>
						</ul>
						<ul class="f_two">
							<li class="long_ct cut"><label>* 성별</label> <select
								class="nationality" name="inf_sex" id="inf_sex">
									<option>-선택-</option>
									<option value="1">남(MALE)</option>
									<option value="2">여(FEMALE)</option>
							</select></li>
							<li class="long_ct cut no"><label>*생년월일 <span
									class="help">e.g."2020-07-06"</span>
							</label> <input class="ct_txt" id="inf_bday" maxlength="10"
								name="inf_bday" type="text" /></li>
						</ul>
						<ul class="f_two">
							<li class="long_ct cut"><label>*신장</label> <input
								class="ct_txt" id="inf_height" inputmode="numeric" maxlength="3"
								min="0" name="inf_height" oninput="maxLengthCheck(this)"
								pattern="[0-9]*" type="number" /></li>
								
							<li class="long_ct no"><label>*체중</label> <input
								class="ct_txt" id="inf_weight" inputmode="numeric" maxlength="3"
								min="0" name="inf_weight" oninput="maxLengthCheck(this)"
								pattern="[0-9]*" type="number" /></li>
						</ul>
						<ul class="f_two">
							<li class="long_ct cut">
								<label>* 휴대폰 
									<span class="help"> EX."000-0000-0000"</span>
								</label> 
								<input class="ct_txt" id="inf_phone" name="inf_phone"type="text" />
							</li>
							<li class="long_ct cut">
								<label>*프로필
									<span class="help"> 이미지파일('jpg', 'jpeg', 'png', 'JPG', 'JPRG')</span>
								</label>
								<input class="ct_txt" type="file" name="image" id="image"
									accept=".jpg, .jpeg, .png, .JPG, .JPRG"/> <br/>
							</li>	
						</ul>
						<ul class="f_two">
							<li class="long_ct cut"><label>* 직업<span
								class="help">회사명/학교명을 입력해 주세요.(예:OO기업/고등학교)</span></label> 
								<input class="ct_txt" id="inf_job" maxlength="30" name="inf_job" type="text" />
							</li>
							<li class="long_ct cut no">
								<label>SNS 주소
									 <span class="help"> url형식 (http://cafe.naver.com/)</span>
								</label>
								<input class="ct_txt" id="inf_sns" maxlength="100"
								name="inf_sns" style="ime-mode: disabled;" type="text" />
							</li>
						</ul>
						<div class="long_ct">
							<label>* 주소</label> <input class="ct_txt" id="inf_address"
								name="inf_address" maxlength="50" type="text" />
						</div>
					</div>
						<div class="f_cont memberinfo" style="margin-bottom: 15px;">
							<p class="f_tt">3. 추가 정보</p>
							<ul class="f_three">
								<li class="long_ct cut"><label>언어(상,중,하)</label> <input
									class="ct_txt" id="inf_lan" maxlength="20" name="inf_lan"
									type="text" /></li>
								<li class="long_ct cut"><label>취미</label> <input
									class="ct_txt" id="inf_hobby" maxlength="20" name="inf_hobby"
									type="text" /></li>
								<li class="long_ct cut"><label>특기</label> <input
									class="ct_txt" id="inf_spec" maxlength="20" name="inf_spec"
									type="text" /></li>
							</ul>
							<div class="long_ct">
								<label>자기소개</label>
								<textarea class="ct_txt pr" cols="20" id="inf_intro"
									maxlength="500" name="inf_intro" rows="2" style="height: 200px"></textarea>
							</div>
							<button type="submit" class="btn sub_ck" id="apply">가입하기</button>
						</div>
					</div>
>>>>>>> refs/heads/hongil
				</div>
<<<<<<< HEAD
				<input id="emailauthyn" name="emailauthyn" type="hidden" value/>
				<input id="agree" name="agree" type="hidden" value/>
				<button type="submit" class="btn sub_ck" id="MainContent_btn_apply">지원하기</button>
			</div>
		</div>
=======
		</form>
>>>>>>> refs/heads/hongil
	</div>
<<<<<<< HEAD
</form>	
=======
	
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

		$("#frm")
				.on(
						"submit",
						function() {
							var hobby = false;
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
							//좋아하는 가수분야 유효성 공백 확인
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
								alert("생년월일을 선택해주세요");
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
								alert("휴대폰 번호를 형식에 맞게 입력해주세요")
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
>>>>>>> refs/heads/hongil
</body>
</html>