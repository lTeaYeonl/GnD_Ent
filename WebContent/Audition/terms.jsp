<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>terms</title>
 <script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
<style>

.main {
	position: relative;
	max-width: 100%;
	margin: 0 auto;
	height: auto;
	overflow: hidden;
	padding-bottom: 0;
}
ul, li {
	list-style: none;
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
	list-style: none;
}
;
img {
	border: none;
}
;
body {
	font-size: 9pt;
	color: #282828;
	line-height: 130%;
	overflow-x: hidden;
	background-color: #fff;
	max-width: 100%;
	margin: 0 auto;
}
;
input {
	vertical-align: middle;
}
;
.terms {
	position: relative;
	width: 100%;
	height: auto;
	overflow: hidden;
	padding: 50px 0 20px 0;
}
.terms .pp_tt {
	position: relative;
	width: 100%;
	text-align: left;
	font-size: 22px;
	font-weight: 400;
	color: #373737;
	padding-bottom: 30px;
}
.terms .pp_tt span {
	color: #009be6;
	margin-left: 3px;
}
.terms .pp_tt:before {
	content: '';
	width: 4px;
	height: 22px;
	background-color: #373737;
	margin: 0 15px -3px 0;
	display: inline-block;
}
.terms .pp_stt {
	position: relative;
	width: 90%;
	height: 250px;
	margin: 0 auto;
	padding: 2% 5%;
	background-color: #fafafa;
	text-align: left;
	font-size: 12px;
	line-height: 20px;
	margin-bottom: 5px;
	cursor: text;
	border: none;
	color: #939292;
	resize: none;
	text-align: left;
}
.terms .pp_stt span {
	color: #009be6;
	margin-left: 3px;
}
.terms .ck_box {
	position: relative;
	width: 100%;
	height: auto;
	overflow: hidden;
	margin: 10px 0 60px 0;
	text-align: left;
}
.terms .ck_box.all_ok {
	padding-top: 40px;
	border-top: 1px solid #eee;
}
.terms .ck_box label {
	text-align: left;
	font-size: 14px;
	margin-left: 5px;
	vertical-align: middle;
	line-height: 25px;
}
.sub_bg {
	position: relative;
	width: 100%;
	height: 370px;
	margin: 0 auto;
	background:
		url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6T57wnTPfO86zfCBdRqumXjKZedkYaDX_TA&usqp=CAU)
		50% 0;
	visibilty: visible
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
.inner {
	position: relative;
	width: 700px;
	margin: 0 auto;
	height: auto;
	overflow: hidden;
	padding: 6em 15px;
}
.join {
	position: relative;
	width: 100%;
	height: auto;
	overflow: hidden;
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
</style>
</head>
<body>
	<div class="main">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<div class="sub_bg">
			<div class="bk_bg"></div>
			<ul class="sub_top">
				<li class="sub_tt">AUDITION</li>
			</ul>
		</div>
		<!-- 개인 약관 폼 -->
		<form action="" method="post" name="frm" id="frm">
			<input type="hidden" id="agreeyn" name="agreeyn"/> <input
				type="hidden" id="gubun" name="gubun" value="n" />
			<div class="inner">
				<div class="join">
					<!-- 약관동의 -->
					회원가입 지원을 위해서 이용약관 및 개인정보 수집 및 이용에 대한 안내를 읽고 동의해 주세요.
				</div>
				<div class="terms">
					<br>
					<div class="pp_tt">
						이용약관 <span class="text-primary">(필수)</span>
					</div>
					<textarea class="pp_stt">
 "제 1 장 총칙
제 1 조 약관의 승낙

GND 회원가입 사이트에 오신 것을 환영합니다. GND(이하 "당사")는 귀하가 본 약정(이하 "본 약관") 내용에 동의하는 것을 조건으로 귀하에게 본 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우 당사의 본 서비스 제공 행위 및 귀하의 본 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다. 본 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신 윤리위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 및 관계규정에 의합니다.
					
제 2 조 (약관의 명시와 개정)
					
1. 당 사이트는 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 당 사이트의 초기 서비스화면(전면)에 게시합니다.
2. 당 사이트는 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호이용등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3. 당 사이트가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 당 사이트의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
4. 당 사이트는 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
5. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 당 사이트에서 책임지지 않습니다.
6. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.
제 3 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
2. 본 이용약관에 대한 동의는 이용신청 당시 해당 당 사이트의 '동의함' 버튼을 누름으로써 의사표시를 합니다.
 "
				</textarea>
				<p class="ck_box">
						<label> <input type="checkbox" class="chk" id="c1"
							name="chk" value="1" /> <span></span> 동의 합니다
						</label>
					</p>
					<div class="pp_tt">
						개인정보처리방침
						<span class="text-primary">(필수)</span>
					</div>
					<textarea class="pp_stt">
					
"GND엔터테인먼트(이하 “회사”)는 다음과 같이 귀하의 개인정보를 수집 및 이용합니다.

- 수집하는 개인정보의 항목: 국적, 현 거주지역, 비밀번호, 성명, 성별, 생년월일, 신장, 체중, 휴대 전화번호, 이메일, 직업/회사명 또는 학교/학교명, SNS주소, 주소, 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보
- 개인정보의 수집•이용 목적: 서비스 이용에 따른 본인확인 및 개인식별, 연령 확인, 불량회원의 부정 이용 및 비인가 사용 방지, 접속 빈도의 파악, 서비스 이용내역의 확인, 서비스의 제공 및 관련 사항의 이행, 각종 고지사항의 전달 및 연락, 웹사이트 이용에 따른 민원사항의 상담 및 처리 관련 업무
- 개인정보의 보유•이용기간: 관계 법령의 규정에 따라 귀하의 개인정보를 보존하여야 하는 경우가 아닌 한, 귀하의 개인정보는 최장 3년 간 보유 및 이용되며, 이용 목적 달성 시 즉시 삭제됩니다..
귀하는 위와 같은 개인정보의 수집 및 이용에 대해 동의를 거부할 수 있으며, 동의를 거부하는 경우 서비스 이용이 제한될 수 있음을 알려 드립니다."
				</textarea>
					<p class="ck_box">
						<label> <input type="checkbox" class="chk" id="c2"
							name="chk" value="2" /> <span></span> 동의합니다.
						</label>
					</p>
					<div class="pp_tt">개인정보 수집 및 이용 (선택)</div>
					<textarea class="pp_stt" style="height: 150px;">
"회사는 다음과 같이 귀하의 개인정보를 수집 및 이용합니다.

- 수집하는 개인정보의 항목: 사용 가능 언어 및 수준, 취미, 특기, 경력사항, 귀하가 기입하는 자기소개, 귀하가 웹사이트에 업로드하는 사진, 음원, 제작물 (“개인정보의 수집 및 이용에 대한 동의 [필수]” 부분에 기재되어 있는 “수집하는 개인정보의 항목” 중 일부도 아래 목적을 위해 이용될 수 있습니다)
- 개인정보의 수집•이용 목적: 회원가입 관리, 개인정보의 보유•이용기간: 관계 법령의 규정에 따라 귀하의 개인정보를 보존하여야 하는 경우가 아닌 한, 귀하의 개인정보는 최장 3년 간 보유 및 이용되며, 이용 목적 달성 시 즉시 삭제됩니다.

귀하는 위와 같은 개인정보의 수집 및 이용에 대해 동의를 거부할 수 있으며, 이 경우에도 서비스 이용은 가능하나, 회원가입 지원서 제출이 제한되거나 해당 항목들이 회원가입 여부를 검토함에 있어 고려되지 않을 수 있음을 알려드립니다."
				</textarea>
					<p class="ck_box">
						<label> <input type="checkbox" class="chk" name="chk"
							id="c3" value="3" /> <span></span> 동의합니다.
						</label>
					</p>
					<p class="ck_box all_ok">

						<label> <input type="checkbox" id="c4" /> <span></span> 위
							약관에 모두 동의합니다.
						</label>
					</p>
					<button type="submit" class="btn sub_ck" id="agree">동의</button>
				</div>
			</div>
		</form>
	</div>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
	
	<!-- 버튼 전체선택 & 해제 기능 start -->
	<script>
		$(document).ready(
				function() {$("#c4").change(function() {
					$("input:checkbox").prop('checked',
						$(this).prop('checked', true));
				});
					$('.chk').on('click', function() {
						if ($('.chk:checked').length == $('.chk').length) {
							$('#c4').prop('checked', true);
						} else {
							$('#c4').prop('checked', false);
						}
					});
		});
	</script>
	<!-- 버튼 전체선택 & 해제 기능 end -->

	<script>
		$('#agree').click(function() {
			var isChecked1 = $('#c1').prop("checked");
			var isChecked2 = $('#c2').prop("checked");
			if (isChecked1 && isChecked2) {
				//두개가 모두 체크된 경우 
				location.href = "form.jsp";
				alert("회원가입으로 넘어갑니다.");
			} else {
				//아닌경우
				alert("필수 항목을 체크해 주세요.");
			}
		});
	</script>
</body>
</html>