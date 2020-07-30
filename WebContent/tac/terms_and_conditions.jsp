<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
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
	html {
	scroll-behavior: smooth;
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
		<div class="main-content">
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