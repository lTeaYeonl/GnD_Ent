<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 아티스트 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">메인 아티스트 추가 폼</h1>
		<h4 class="text-center text-danger mt-5">※ 표시는 필수 입력 사항 입니다.</h4>
		<form action="m_artist_insert.jsp" method="post">
			<div class="form-group">
				<label for="artist_name">※ 아티스트 이름</label>
				<input type="text" class="form-control" name="artist_name" id="artist_name"/>
			</div>
			<div class="form-group">
				<label for="artist_e_name">※ 아티스트 영문 이름</label>
				<input type="text" class="form-control" name="artist_e_name" id="artist_e_name"/>
			</div>
			<div class="form-group">
				<label for="image_name">※ 이미지 파일 명</label>
				<input type="text" class="form-control" name="image_name" id="image_name"/>
			</div>
			<div class="form-group">
				<label for="artist_country">※ 고향</label>
				<input type="text" class="form-control" name="artist_country" id="artist_country"/>
			</div>
			<div class="form-group">
				<label for="artist_description">※ 이미지 파일 명</label>
				<input type="text" class="form-control" name="artist_description" id="artist_description"/>
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