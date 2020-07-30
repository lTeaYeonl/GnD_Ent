<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공식 채널 아이콘 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">공식 채널 아이콘 추가 폼</h1>
		<h4 class="text-center text-danger mt-5">※ 표시는 필수 입력 사항 입니다.</h4>
		<form action="m_image_insert.jsp" method="post">
			<div class="form-group">
				<label for="officialchannel_link">※ 공식채널 주소 ( Ex) 유튜브, 인스타그램, 페이스북 등등,, )</label>
				<input type="text" class="form-control" name="officialchannel_link" id="officialchannel_link"/>
			</div>
			<div class="form-group">
				<label for="officialchannel_icon_name">※ 공식 채널 아이콘 코드</label>
				<input type="text" class="form-control" name="officialchannel_icon_name" id="officialchannel_icon_name"/>
				<ul class="list-group">
					<li class="list-group-item">YouTube : " i class="fab fa-youtube" style="font-size: 4vw; color: black;" "</li>
					<li class="list-group-item">Instagram : " i class="fab fa-instagram" style="font-size: 4vw; color: black;" "</li>
					<li class="list-group-item">FaceBook : " i class="fab fa-facebook-square" style="font-size: 4vw; color: black;" "</li>
					<li class="list-group-item">Twitter : " i class="fab fa-twitter" style="font-size: 4vw; color: black;" "</li>
					<li class="list-group-item">Google : " i class="fab fa-google" style="font-size: 4vw; color: black;" "</li>
				</ul>
			</div>
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="reset" class="btn btn-danger">초기화</button>
		</form>
	</div>
	<!-- Main Content Close -->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>