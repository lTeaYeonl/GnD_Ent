<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뉴스 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">News 추가 폼</h1>
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
				<label for="artist_e_name">※ 아티스트 이름 (국문)</label>
				<input type="text" class="form-control" name="artist_name" id="artist_name"/>
			</div>
			<div class="form-group">
				<label for="artist_e_name">※ 아티스트 이름 (영문)</label>
				<input type="text" class="form-control" name="artist_e_name" id="artist_e_name"/>
			</div>
			<div class="form-group">
				<label for="news_writer">※ 작성자 명</label>
				<input type="text" class="form-control" name="news_writer" id="news_writer"/>
			</div>
			<div class="form-group">
				<label for="news_title">※ 제목 </label>
				<input type="text" class="form-control" name="news_title" id="news_title"/>
			</div>
			<div class="form-group">
				<label for="news_content">※ 내용</label>
				<textarea class="form-control" name="news_content" id="news_content" cols="30" rows="10"></textarea>
			</div>
			<div class="form-group">
				<label for="image_name">※ 뉴스 이미지 파일 명</label>
				<input type="text" class="form-control" name="image_name" id="image_name"/>
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