<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 처리방침</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<!-- fontawesome 에서 제공해주는 icon을 사용하기 위해 로딩  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous /">
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
<style>
	html {
	scroll-behavior: smooth;
	}
	h3{
	font-size: 20px;
	}
</style>
</head>
<body>
	<!-- Main Page -->
	<div class="main-page">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<!-- Main Content -->
		<div class="container main-content">
			<div class="container header">
				<h1 class="mt-5 md-5 font-weight-bold">개인정보 처리방침</h1>
			</div>
			<div class="container content">
				<h3 class="mt-4">워너뮤직코리아 웹사이트에 오신 것을 환영합니다</h3>
				<h3 class="mt-4">워너뮤직코리아(이하 “회사”라 합니다)는 이용자의 개인정보를 중요시하며, [정보통신망 이용촉진 및 정보보호에 관한 법률], [개인정보보호법]을 준수하기 위하여 노력하고 있습니다.</h3>
				<ul>
					<li>
						<strong>총칙</strong>
						<p>
							개인정보란 생존하는 개인에 관련된 정보로서 이름, 주민등록번호 등에 의하여 당해 개인을 식별할 수 있는 정보 (당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는것을 포함)를 말합니다.
							회사에서 제공하는 워너뮤직코리아 웹사이트(이하 “웹사이트”이라 합니다) 사용자(이하 “사용자” 또는 “이용자”라 합니다)의 개인정보보호를 매우 중요시하며, [정보통신망 이용촉진 및 정보보호 등에 관한 법률], [개인정보보호법] 상의 개인정보보호규정을 준수하고 있습니다.
							회사는 웹사이트의 개인정보처리방침을 웹사이트 내 첫 화면 등에 공개함으로써 사용자께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.
							회사는 웹사이트의 개인정보처리방침의 지속적인 개선을 위하여 개인정보처리방침을 개정하는데 필요한 절차를 정하고 있습니다. 그리고 개인정보처리방침을 개정하는 경우 시행일자 등을 부여하여 개정된 내용을 사용자가 확인할 수 있도록 하고 있습니다.
						</p>		
					</li>
					<li><strong>개인정보의 수집항목 및 수집방법</strong><br /></li>
					<li><strong>1. 수집항목</strong><br />회사는 최초 회원가입 또는 서비스 이용 시 이용자로부터 아래와 같은 개인정보를 수집하고 있습니다.
회사는 이용자의 개인정보 수집 시 서비스 제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집하며, 고객의 동의 거절 시 서비스 제공에 제한을 받으실 수 있습니다.</li>
					<strong>1. 회원가입을 위해 필요한 개인정보</strong><br />
					<span>– 이메일로 가입하는 경우 : 이메일 주소, 성별, 생년월일</span><br />
					<span>– 페이스북으로 가입하는 경우 : 페이스북 개인 정보 정책(Permissions Reference – Facebook Login)에 허용된 범위의 개인 정보, 암호화된 동일인 식별정보, 페이스북 아이디, 이메일 주소, 닉네임, 성별, 생년월일, 중복가입확인정보, 프로필사진 등. 페이스북 사용자 정보 허용 정책 참조: <a href="https://developers.facebook.com/docs/facebook-login/permissions">https://developers.facebook.com/docs/facebook-login/permissions</a></span><br />
					<strong>2. 서비스 이용을 위해 필요한 정보, 서비스 이용기록 정보</strong><br />
					<span>– 서비스 이용기록 및 관련정보</span><br />
					<span>– 로그데이터, 쿠키 및 이용시간 등</span><br />
					<span>– 기기정보 [단말모델정보, 단말OS정보, 단말고유정보 (IMEI, DUID, Mac Address 등), 환경설정 정보 등]</span><br />
					<span>– 위치정보 : 별도의 캠페인 및 이벤트등, 특수한 경우에 따라 Naver Map, Google Map, Daum Map 서비스를 제공하기 위하여 별도의 ‘위치기반서비스 이용약관’에 따른 사용자 동의를 받은 후 정보가 수집됩니다.</span><br />
					<strong>3. 이벤트 당첨자선정 및 경품지급을 위한 개인정보</strong><br />
					<span>– 이벤트 응모 시 본인 확인을 위한 개인정보: 이름, 휴대전화번호, 이메일 주소</span><br />
					<span>– 당첨 시 경품 지급을 위한 개인정보 : 개별 고지된 당첨자에 한하며, 경품을 받을 배송정보와 경품지급에 대한 소득신고를 위해 신분증 사본을 별도 동의를 받아 수집됩니다. 단, 고지기간 내에 위의 정보를 제공하지 않을 시 당첨이 취소될 수 있으며 수집된 개인정보는 업무가 종료됨과 동시에 정보를 지체 없이 파기토록 하겠으며 업무가 진행되는 동안 개인정보를 철저히 관리토록 하겠습니다.</span><br />
					<li><strong>수집방법</strong></li>
					<span>– 회사는 사용자께서 캠페인의 개인정보 수집•이용 동의서 각각의 내용에 대해 “동의” 또는 “동의하지 않음”을 선택할 수 있는 절차를 마련하고 있으며, 사용자가 서비스 내의 개인정보 수집/이용 동의 내용에 동의한다는 의사표시를 하고 이용자가 입력하거나 서비스를 이용하는 과정을 통해 수집합니다.</span><br />
					<span>– 사용자께서는 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있으며, 동의를 거부할 경우 받는 별도의 불이익은 없습니다. 단, 서비스 이용이 불가능하거나, 서비스 이용 목적에 따른 서비스 제공에 제한이 따르게 됩니다.</span><br />
					<li><strong>수집한 개인정보의 수집이용 목적 및 제3자 제공</strong></li>
					<span>회사는 사용자의 개인정보를 이용약관 제3조, 본 개인정보 처리방침의 ‘개인정보의 수집항목 및 수집방법’에서 고지한 바와 같이 회원서비스 제공(회원 식별, 고지사항 전달, 민원처리, 각종 서비스 제공 등), 이벤트 진행(이벤트 응모 접수, 응모자 식별, 당첨여부 안내, 고지사항 전달, 경품 지급/배송, 관련 세무업무 처리 등), 마케팅(광고성 메시지 전송, 상품개발 등을 위한 고객정보 분석) 등의 목적으로 이용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업 • 기관에 제공하지 않습니다. 단, 다음의 경우에는 주의를 기울여 개인정보를 제3자 제공할 수 있습니다.</span><br /><br />
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">제공받는 자</th>
								<th scope="col">제공받는 자의 개인정보 이용목적</th>
								<th scope="col">제공하는 개인정보 항목</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">워너뮤직 그룹 계열회사<br />개인정보를 제공받는 구체적인 회사는 개인정보 제공에 동의하실 때 확인 가능합니다)</th>
								<th scope="row">회원에 대한 보다 다양하고 유익한 서비스 제공</th>
								<th scope="row">이메일 주소, 성별, 생년월일</th>
							</tr>
							<tr>
								<th scope="row">워너뮤직 그룹 소속 아티스트 및 그의 매니지먼트 회사<br />(개인정보를 제공받는 구체적인 아티스트 및 매니지먼트 회사는 개인정보 제공에 동의하실 때 확인 가능합니다)</th>
								<th scope="row">회원이 관심을 표명한 아티스트의 새로운 소식을 신속하고 정확하게 제공</th>
								<th scope="row">이메일 주소, 성별, 생년월일</th>
							</tr>
						</tbody>
					</table>
					<span>-회사는 영업의 전부 또는 일부를 양도하거나, 합병 등으로 서비스제공자의 권리 • 의무를 이전 승계하면서 고객의 개인정보를 제3자에게 제공하는 경우 개인정보보호 관련 고객의 권리를 보장하기 위하여 반드시 그 사실을 고객에게 통지합니다.</span><br />
					<span>-회사는 서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적/기술적인 사유로 통상의 동의를 받는 것이 뚜렷하게 곤란한 경우에는 사용자의 동의 없이 개인정보를 수집이용할 수 있습니다.</span><br />
					<span>-회사는 통신비밀보호법, 국세기본법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자기본법, 한국은행법, 형사소송법 등 다른 법률에 특별한 규정이 있는 경우에는 사용자의 동의 없이 개인정보를 수집이용할 수 있습니다. 단, ‘법률에 특별한 규정이 있는 경우’로 행정목적이나 수사목적으로 행정관청 또는 수사기관이 요구해 온 경우라도 무조건 고객의 개인정보를 제공하지 않으며, 법률에 규정된 바에 따라 영장 또는 기관장의 직인이 날인된 서면에 의한 경우 등 적법한 절차에 따라 제공합니다.</span><br />
					<li><strong>개인정보의 처리위탁</strong><span><br />회사는 사용자에게 보다 나은 서비스를 제공하기 위하여 아래와 같이 사용자의 개인정보를 제휴사에 처리위탁 할 수 있습니다.</span><br /></li>
				</ul>
			</div>
		</div>
		<!-- Main Content Close -->
		<!-- Footer -->
		<jsp:include page="../bottom/footer.jsp"></jsp:include>
		<!-- Footer Close -->
		<!-- Fixed Button -->
		<a href="#" id="topbutton"style="position:fixed; bottom: 10%; right: 10%; display:none;">
			<button class="btn btn-dark">
				<i class="fas fa-chevron-up"></i>
			</button>
		</a>
		<!-- Fixed Button Close -->
	</div>
	<!-- Main Page Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script>
		$("#carouselimage").mouseenter(function(){
			$("#topbutton").hide();
		}).mouseleave(function(){
			$("#topbutton").show();
		});
	</script>
	<!-- Script Close -->
</body>
</html>