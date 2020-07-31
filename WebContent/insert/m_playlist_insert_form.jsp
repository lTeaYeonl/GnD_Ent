<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이 리스트 추가 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5">플레이 리스트 추가 폼</h1>
		<h4 class="text-center text-danger mt-5">※ 표시는 필수 입력 사항 입니다.</h4>
		<form action="m_playlist_insert.jsp" method="post">
			<div class="form-group">
				<label for="playllist_writer">※ 작성자</label>
				<input type="text" class="form-control" name="playllist_writer" id="playllist_writer"/>
			</div>
			<div class="form-group">
				<label for="playlist_title">※ 제목</label>
				<input type="text" class="form-control" name="playlist_title" id="playlist_title"/>
			</div><div class="form-group">
				<label for="playlist_link">※ 뮤직비디오 링크(embed)</label>
				<input type="text" class="form-control" name="playlist_link" id="playlist_link"/>
			</div>
			<div class="form-group">
				<label for="image_name">※ 뮤직비디오 이미지 파일 명</label>
				<input type="text" class="form-control" name="image_name" id="image_name"/>
			</div>
			<div class="form-group">
				<label for="playlist_list1">※ 플레이리스트 1</label>
				<input type="text" class="form-control" name="playlist_list1" id="playlist_list1"/>
			</div>
			<div class="form-group">
				<label for="playlist_list2">※ 플레이리스트 2</label>
				<input type="text" class="form-control" name="playlist_list2" id="playlist_list2"/>
			</div>
			<div class="form-group">
				<label for="playlist_list3">※ 플레이리스트 3</label>
				<input type="text" class="form-control" name="playlist_list3" id="playlist_list3"/>
			</div>
			<div class="form-group">
				<label for="playlist_list4">※ 플레이리스트 4</label>
				<input type="text" class="form-control" name="playlist_list4" id="playlist_list4"/>
			</div>
			<div class="form-group">
				<label for="playlist_list5">※ 플레이리스트 5</label>
				<input type="text" class="form-control" name="playlist_list5" id="playlist_list5"/>
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