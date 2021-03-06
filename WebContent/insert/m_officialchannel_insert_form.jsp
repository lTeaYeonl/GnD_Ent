<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공식 채널 아이콘 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">공식 채널 아이콘 추가 폼</h1>
		<h4 class="text-center text-danger mt-5">※ 표시는 필수 입력 사항 입니다.</h4>
		<form action="m_officialchannel_insert.jsp" method="post">
			<div class="form-group">
				<label for="officialchannel_link">※ 공식채널 주소 ( Ex) 유튜브, 인스타그램, 페이스북 등등,, )</label>
				<input type="text" class="form-control" name="officialchannel_link" id="officialchannel_link"/>
			</div>
			<div class="form-group">
				<label for="officialchannel_icon_name">※ 공식 채널 아이콘 코드</label>
				<input type="text" class="form-control" name="officialchannel_icon_name" id="officialchannel_icon_name"/>
				<ul class="list-group">
					<li class="list-group-item">YouTube : youtube</li>
					<li class="list-group-item">Instagram : instagram</li>
					<li class="list-group-item">FaceBook : facebook</li>
					<li class="list-group-item">Twitter : twitter</li>
					<li class="list-group-item">Google : google</li>
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