<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/image_insert_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<div class="container">
			<h1 class="text-center">이미지 정보 입력 폼</h1>
		</div>
		<div class="container">
			<h4 class="text-danger">※ 반드시 image 폴더에 파일을 올린 후 작성해 주세요 ※</h4>
			<h4 class="text-danger">※ 표시는 필수 입력 사항 입니다.</h4>
		</div>
		<div class="container">
			<form action="image_insert.jsp" method="post" id="imageForm">
				<div class="form-group">
					<label for="name">※ 파일 이름 (확장자명 포함)</label>
					<input class="form-control" type="text" name="name" id="name"/>
				</div>
				<div class="form-group">
					<label for="at_id">※ 아티스트 번호</label>
					<input class="form-control"  type="text" name="at_id" id="at_id" />
					<!-- artist list -->
					<jsp:include page="artist_list.jsp"></jsp:include>
					<!-- artist list close -->
				</div>
				<div class="form-group">
					<label for="page_id">※ 페이지 번호</label>
					<input class="form-control"  type="text" name="page_id" id="page_id" />
					<!-- page list -->
					<jsp:include page="page_list.jsp"></jsp:include>
					<!-- page list close -->
				</div>
				<button type="submit" class="btn btn-primary">저장</button>
				<button type="reset" class="btn btn-danger">초기화</button>
			</form>
		</div>
	</div>
</body>
</html>