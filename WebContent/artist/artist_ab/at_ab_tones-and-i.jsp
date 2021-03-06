<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/artist/artist_ab/at_ab_tones-and-i.jsp</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<style>
body {
	background-image:
		url('${pageContext.request.contextPath }/image/AT_Tones-and-i_ab_bg.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

#at_ab_musictopimg {
	height: 260px;
	width: 260px;
}

.container {
	display: grid;
	grid-auto-rows: minmax(125px, auto);
	grid-gap: .5rem;
	margin-top: 0px;
	margin-bottom: 0px;
}

.top_pixed_test01 {
	margin-top: 0px;
}

.wrap {
	width: 300px;
	margin: 0 auto;
}

div {
	padding: 20px;
}

.header {
	background-color: #ccc;
}

.body {
	background-color: #eee;
	background-image:
		url(${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg);
}

.footer {
	background-color: #ccc;
}
</style>
</head>
<body>
	<div class="wrap">
		<img id=at_ab_musictopimg
			src="${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg"
			alt="" />
		<header class="header" style="color: white; background-color: black;">

			<h1>Tones and I</h1>
			<h2>[The Kids Are Coming Ep]</h2>
			<p>서비스를 골라주세요</p>

			<nav class="navbar navbar-light bg-light">
				<img src="${pageContext.request.contextPath}/image/logo_melon.jpeg"
					style="max-width: 40%; height: 100px;" alt="melon_logo" /> <a
					class="navbar-brand"
					href="https://www.melon.com/album/detail.htm?albumId=10316394">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
			<nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_applemusic.png"
					style="max-width: 40%; height: auto;" alt="applemusic_logo" /> <a
					class="navbar-brand"
					href="https://music.apple.com/kr/album/1475930038?app=music&at=1l3vpUI&lId=2408423&cId=none&sr=1&src=Linkfire&itscg=30440&itsct=catchall_p1&ct=LFV_766ab7847753e0ce95ce859a49807376&ls=1">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
			<nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_bugsmusic.png"
					style="max-width: 40%; height: auto;" alt="bugsmusic_logo" /> <a
					class="navbar-brand" href="https://music.bugs.co.kr/album/916978?wl_ref=list_tr_07_ar">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
			<nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_geniemusic.jpeg"
					style="max-width: 40%; height: auto;" alt="geniemusic_logo" /> <a
					class="navbar-brand" href="https://www.genie.co.kr/detail/albumInfo?axnm=81255286">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
			<nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_navermusic.png"
					style="max-width: 40%; height: auto;" alt="navermusic_logo" /> <a
					class="navbar-brand" href="https://music.naver.com/album/index.nhn?albumId=3137158">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
			<%-- <nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_mnetmusic.png"
					style="max-width: 40%; height: auto;" alt="mnetmusic_logo" /> <a
					class="navbar-brand" href="#">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav> --%>
			<nav class="navbar navbar-light bg-light">
				<img
					src="${pageContext.request.contextPath}/image/logo_soribadamusic.jpeg"
					style="max-width: 40%; height: auto;" alt="soribadamusic_logo" />
				<a class="navbar-brand" href="http://www.soribada.com/music/album/PD0130044">
					<button type="submit" class="btn btn-outline-secondary">play</button>
				</a>
			</nav>
		</header>
	</div>
</body>
</html>