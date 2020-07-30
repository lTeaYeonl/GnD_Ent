<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/artist/artist/artist_info.jsp</title>
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
</style>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="/top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<header></header>
	<div class="container"
		style="padding-top: 234px; padding-bottom: 234px; font-size: large;">
		<div class="row">
			<div class="col-sm"></div>
			<div class="col-sm">
				<h1 style="text-align: center;">
					<strong>아티스트</strong>
				</h1>
			</div>
			<div class="col-sm"></div>
		</div>
	</div>
	<div class="container">
		<div class="row align-items-start">
			<div class="col">
				<a
					href="${pageContext.request.contextPath}/artist/artist_list/artist_info/at_tones-and-i.jsp">
					<img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_jamie_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_Lizzo_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
		</div>
		<div class="row align-items-center">
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_AnneMarie_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_ed-sheeran_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_Cardi-B_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
		</div>
		<div class="row align-items-end">
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_coldplay_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_DuaLipa_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
			<div class="col">
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath }/image/AT_Lukas-Graham_thumb.jpg"
					alt="Tones-And_I_Thumbnail_Image" />
				</a>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="/bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
</body>
</html>