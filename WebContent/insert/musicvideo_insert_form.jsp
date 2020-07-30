<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/musicvideo_insert_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<div class="container mt-3">
			<h1 class="text-center">뮤직비디오 정보 입력 폼</h1>
		</div>
		<div class="container mt-3">
			<h4 class="text-danger">※ 표시는 필수 입력 사항입니다.</h4>
		</div>
		<form action="musicvideo_insert.jsp" method="post" id="artistForm">
			<div class="form-group">
				<label for="mv_link">※ 뮤직비디오 링크 (youtube link만!))</label>
				<input type="text" class="form-control" name="mv_link" id="mv_link"/>
			</div>
			<div class="form-group">
				<label for="at_id">※ 아티스트 ID</label>
				<input type="text" class="form-control" name="at_id" id="at_id"/>
				<!-- artist list -->
				<jsp:include page="artist_list.jsp"></jsp:include>
				<!-- artist list close -->
			</div>
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="reset" class="btn btn-danger">초기화</button>
		</form>
	</div>
</body>
</html>