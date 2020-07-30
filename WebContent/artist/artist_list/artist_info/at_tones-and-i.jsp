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
				<p style="text-align: left">김하온은 고등래퍼2 우승자다 그리고 나는 집에 가고싶다 격하게</p>
			</div>
			<div class="col-sm-4">
				<p style="text-align: center">
					<strong>본명</strong>
				</p>
				<p style="text-align: center">김하온</p>
			</div>
		</div>
		<div class="row">
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4" style="text-align: right">
				<p style="text-align: center">
					<strong>국가</strong>
				</p>
				<p style="text-align: center">대한민국</p>
			</div>
		</div>
		<div class="row">
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4"></div>
			<div class="col-6 col-md-4" style="text-align: center">
				<p style="text-align: center">
					<strong>성별</strong>
				</p>
				<p>남</p>
			</div>
		</div>
		<p>
			<a
				href="https://people.search.naver.com/search.naver?where=nexearch&query=HAON&sm=tab_etc&ie=utf8&key=PeopleService&os=8239825">공식
				사이트</a>
		</p>
		<div class="row">
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.facebook.com/warnermusickorea/"> <i
					class="fab fa-facebook-square"
					style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.instagram.com/warnermusickorea/"> <i
					class="fab fa-instagram" style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://www.youtube.com/user/WMK2011"> <i
					class="fab fa-youtube" style="font-size: 1vw; color: black;"></i>
				</a>
			</div>
			<div class="col-2 col-sm-2 col-xs-3">
				<a href="https://twitter.com/warner_music_kr"> <i
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
				src="https://www.youtube.com/embed/Fm5iP0S1z9w?rel=0&amp;autoplay=1&amp;loop=1;playlist=Fm5iP0S1z9w"
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
				alt="tones_ab_img" />
			</a>
		</div>
	</div>
	<!-- artist_ab_link close-->

	<!-- artist_ab_news -->
	<div class="container-artistab">
		<h3
			style="font-size: 12px; color: #a1a1a1; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">최신 뉴스</h3>
		<h3
			style="font-size: 30px; color: #000000; line-height: 1; text-align: center; font-family: Abril Fatface; font-weight: 400; font-style: normal; letter-spacing: 1px;">News</h3>
		<div id="img_container col-sm-3">
			<a
				href="${pageContext.request.contextPath}/artist/at_news/at_news_tones-and-i.jsp">
				<img class="img-fluid"
				src="${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg"
				alt="tones_ab_img" />
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