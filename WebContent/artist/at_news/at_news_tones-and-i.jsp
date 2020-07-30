<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/artist/at_news/at_news_tones-and-i.jsp</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<!-- fontawesome 에서 제공해주는 icon을 사용하기 위해 로딩  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous /">

<style>
.img-fluid {
	max-width: 100%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	display: block;
}

.container-artistab {
	margin-top: 100px;
	margin-bottom: 100px;
}
</style>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="/top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->

	<!-- main -->
	<img class="img-fluid"
		src="${pageContext.request.contextPath}/image/AT_Tones-and-i_News_Title.jpg"
		alt="Tones-and-i-News-Titleimg" />
	<div class="container-artistab">
		<div class="container-artistab">
			<p
				style="font-size: 24pt; text-align: center; font-family: Roboto; font-weight: 400; font-style: normal">
				지금 세계 음원 차트를 휩쓸고 있는 '댄스몽키'는 누구?</p>
			<p style="text-align: center;">우리가 몰랐던 톤즈 앤 아이의 8가지 진실.</p>
		</div>
		<div class="container-artistab">
			<div class="wrap">
				<img
					src="${pageContext.request.contextPath}/image/AT_Tones-and-i_News_Title.jpg"
					style="width: 100%; height: auto;" alt="Tones-and-i-News-Mainimg" />
			</div>
		</div>
		<div class="container-artistab">
			<div class="wrap">
				<p>1 노래 ‘댄스 몽키’로 알려진 톤즈 앤 아이(Tones and I)의 본명은 토니 왓슨이다.</p>
				<p>2 2000년생. 만 19세다.</p>
				<p>3 호주 멜버른의 서핑 숍에서 일하며 처음 버스킹의 매력에 빠졌다. 2017년부터 벤에 살면서 드럼 패드와
					신디사이저를 들고 바이런 베이(Byron Bay) 거리로 나가 버스킹을 하기 시작했다.</p>
				<p>4 전세계적으로 히트한 곡 ‘댄스 몽키’는 사실 버스킹의 비애에 관한 곡이다. 지나던 행인이 키보드를
					떨어뜨리고, 모금한 돈을 훔쳐가고, 귀에 대고 소리를 지르고, 욕을 하고, 술 취한 사람들이 과도한 앵콜을 요청하는데
					지친 2018년 어느 날, 자신이 버스킹을 하며 겪은 일을 담아 30분 만에 곡을 썼다.</p>
				<p>5 ‘댄스 몽키’ 가사에는 거리에서 사람들이 톤스 앤 아이에게 말한 내용이 문자 그대로 담겨 있다.
					노래하란(sing) 말을 춤추란(dance)로 바꿨을 뿐이다. “지나가던 나를 네가 멈춰 세운 거 알지?(You know
					you stopped me dead when I was passing by)” “네가 한번만 더 춤 춰주기를 이렇게
					빌어I beg to see you dance just one more time)” “너는 나를 울고 싶게 만들어(You
					make me wanna cry)” 같은 가사가 그렇다.</p>
				<p>6 두 번째 싱글이었던 ‘댄스 몽키’는 호주를 넘어 20개국에서 음악차트 1위를 차지했고, 스포티파이에서
					10억 이상 스트리밍됐다.</p>
				<p>7 가장 최근에 발표한 곡 ‘Never Seen the Rain’은 호주에 닥친 대규모 산불로 입은 피해와
					상처를 위로하기 위해 썼다.</p>
				<p>8 톤즈 앤 아이는 ‘댄스 몽키’가 히트한 이후에도 거리에 나가 버스킹을 한 적이 있으며, 50세가 될 때까지
					버스킹을 계속 하겠다고 스스로 명세했다.</p>
			</div>
		</div>
	</div>
	<!-- main close-->

	<!-- youtube_video -->
	<div class="container-artistab">
		<div class="row">
			<iframe width="1280" height="536"
				src="https://www.youtube.com/embed/q0hyYWKXF0Q?rel=0&amp;autoplay=1&amp;loop=1;playlist=q0hyYWKXF0Q" frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
	</div>
	<!-- youtube_video close -->

	<!-- Footer -->
	<jsp:include page="/bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
</body>
</html>