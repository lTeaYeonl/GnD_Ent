<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<!-- fontawesome 에서 제공해주는 icon을 사용하기 위해 로딩  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous /">

<meta charset="UTF-8">
<title>artist_subscribe.jsp</title>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Artist -->
	<div class="container mt-5">
		<div class="mt-5">
			<div class="container">
				<div class="col mt-5">
					<p
						style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">개노답뮤직
						아티스트</p>
					<h3
						style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">Artist</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-3">
					<a
						href="${pageContext.request.contextPath}/artist/artist_info/at_tones-and-i.jsp">
						<img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_jamie_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_Lizzo_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_AnneMarie_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_ed-sheeran_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_Cardi-B_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_coldplay_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
				<div class="col-3">
					<a href="#"> <img class="img-fluid"
						src="${pageContext.request.contextPath }/image/AT_DuaLipa_thumb.jpg"
						alt="Tones-And_I_Thumbnail_Image" />
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="text-align: center;">
		<div class="col mt-4">
			<a href="#" style="color: gray">전체보기 <i
				class="fas fa-caret-right"></i></a>
		</div>
	</div>
	<!-- Artist Close-->
	<!-- News Letter -->
	<div class="container mt-5" style="text-align: center">
		<div class="row">
			<div class="col-1"></div>
			<div class="col">
				<h3>개노답뮤직 뉴스레터 구독</h3>
			</div>
			<div class="col">
				<p
					style="font-size: 14px; color: #7c7c7c; line-height: 1.1; text-align: left; letter-spacing: -1px;">
					개노답뮤직 아티스트와 최신 앨범 소식, <br />이벤트 뉴스 등을 빠르게 이메일로 받아보세요.
				</p>
			</div>
			<div class="col-1">
				<button class="btn btn-secondary">구독</button>
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	<!-- News Letter Close-->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
</body>
</html>