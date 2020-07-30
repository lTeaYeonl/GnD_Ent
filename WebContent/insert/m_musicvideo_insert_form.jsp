<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤직 비디오 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">MusicVideo 추가 폼</h1>
		<h4 class="text-center text-danger mt-5">※ 표시는 필수 입력 사항 입니다.</h4>
		<form action="m_image_insert.jsp" method="post">
			<div class="form-group">
				<label for="artist_id">※ 아티스트 번호</label>
				<input type="text" class="form-control" name="artist_id" id="artist_id"/>
				<!-- artist list -->
				<jsp:include page="m_artist_list.jsp"></jsp:include>
				<!-- artist list close -->
			</div>
			<div class="form-group">
				<label for="artist_e_name">※ 아티스트 이름 (영문)</label>
				<input type="text" class="form-control" name="artist_e_name" id="artist_e_name"/>
			</div><div class="form-group">
				<label for="musicvideo_name">※ 뮤직비디오 이름</label>
				<input type="text" class="form-control" name="musicvideo_name" id="musicvideo_name"/>
			</div>
			<div class="form-group">
				<label for="musicvideo_link">※ 뮤직비디오 링크 (embed)</label>
				<input type="text" class="form-control" name="musicvideo_link" id="musicvideo_link"/>
			</div>
			<div class="form-group">
				<label for="musicvideo_thumbnail_name">※ 뮤직비디오 이미지 파일 명</label>
				<input type="text" class="form-control" name="musicvideo_thumbnail_name" id="musicvideo_thumbnail_name"/>
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