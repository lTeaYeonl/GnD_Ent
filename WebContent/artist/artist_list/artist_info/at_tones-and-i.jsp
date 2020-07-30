<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/artist_info/at_tones-and-i.jsp</title>
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

#img_container img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="/top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- top image -->
	<div class="wrap">
		<img class="img-fluid"
			src="${pageContext.request.contextPath }/image/AT_Tones-and-i_profile_main.jpg"
			alt="main_tones-and-i_image" />
	</div>
	<!-- top image close -->
	<!-- artist info -->
	<div class="container-artistab">
		<div class="row">
			<div class="col-sm-8">
				<h1 style="text-align: left">
					<strong>톤즈 앤 아이(Tones And I)</strong>
				</h1>
				<p style="text-align: left">Tones And I는 오스트레일리아의 싱어송라이터이다.
					2019년 3월 첫 번째 싱글 ‘Johnny Run Away’을 발매해 호주 차트 1위에 오른 그는 그해 5월 발표한 두
					번째 싱글 ‘Dance Monkey’로 전세계적인 히트를 치며 이름을 알렸다. ARIA 기준 9X 플래티넘에 오른 것은
					물론 호주, 영국을 비롯한 전세계 차트 1위, 빌보드 싱글차트 4위에 랭크되면서 주목받는 신인으로 떠올랐다. 이후, EP
					[The Kids Are Coming]를 발매하였다.</p>
			</div>
			<div class="col-sm-4">
				<p style="text-align: center">
					<strong>본명</strong><br />
					<p style="text-align: center">Toni Watson</p>
				</p>
				<p style="text-align: center">
					<strong>고향</strong>
					<p style="text-align: center">호주</p>
				</p>
				<p style="text-align: center">
					<strong>생년 월일</strong>
					<p style="text-align: center">2000년 08월 15일</p>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
		</div>
		<div class="row">
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
		</div>
		<p style="color: #000000; text-align: left;">
			<a
				href="https://www.tonesandi.com/">공식
				사이트</a>
		</p>
		<div class="row">
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.facebook.com/TONESANDI/"> <i
					class="fab fa-facebook-square"
					style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.instagram.com/tonesandi/"> <i
					class="fab fa-instagram" style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.youtube.com/embed/q0hyYWKXF0Q"> <i
					class="fab fa-youtube" style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://twitter.com/tonesandimusic"> <i
					class="fab fa-twitter" style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-hidden-xs"></div>
			<div class="col-2 col-sm-2 col-hidden-xs"></div>
		</div>
	</div>
	<!-- artist info close-->

	<!-- youtube_video -->
	<div class="container-artistab">
		<div class="row">
			<iframe width="1753" height="776"
				src="https://www.youtube.com/embed/q0hyYWKXF0Q?rel=0&amp;autoplay=1&amp;loop=1;playlist=q0hyYWKXF0Q"
				frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
	</div>
	<!-- youtube_video close -->

	<!-- artist_ab_link -->
	<div class="container-artistab">
		<h3
			style="font-size: 12px; color: #a1a1a1; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">아티스트
			음반</h3>
		<h3
			style="font-size: 30px; color: #000000; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">Discography</h3>
		<div id="img_container col-sm-3">
			<a
				href="${pageContext.request.contextPath}/artist/artist_ab/at_ab_tones-and-i.jsp">
				<img class="img-fluid"
				src="${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg"
				width="300px;" height="300px;" alt="tones_ab_img" />
			</a>
		</div>
	</div>
	<!-- artist_ab_link close-->

	<!-- artist_ab_news -->
	<div class="container-artistab">
		<h3
			style="font-size: 12px; color: #a1a1a1; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">최신
			뉴스</h3>
		<h3
			style="font-size: 30px; color: #000000; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">News</h3>
		<div id="img_container col-sm-3">
			<a
				href="${pageContext.request.contextPath}/artist/at_news/at_news_tones-and-i.jsp">
				<img class="img-fluid"
				src="${pageContext.request.contextPath}/image/AT_Tones-and-i_News_Title.jpg"
				width="400px;" height="400px;" alt="tones_news_img" />
			</a>
		</div>
	</div>
	<!-- artist_ab_news close-->

	<!-- Footer -->
	<jsp:include page="/bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
</body>
</html>