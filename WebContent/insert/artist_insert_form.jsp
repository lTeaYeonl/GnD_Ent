<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/artist_insert_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<h1>아티스트 정보 입력 폼</h1>
		<form action="artist_insert.jsp" method="post" id="artistForm">
			<div class="form-group">
				<label for="e_name">영문 이름</label>
				<input type="text" name="e_name" id="e_name"/>
			</div>
			<div class="form-group">
				<label for="k_name">국문 이름</label>
				<input type="text" name="k_name" id="k_name"/>
			</div>
			<div class="form-group">
				<label for="r_name">이름 (Full Name)</label>
				<input type="text" name="r_name" id="r_name"/>
			</div>
			<div class="form-group">
				<label for="main_img">메인페이지에 들어갈 이미지 이름 (확장자명 포함)</label>
				<input type="text" name="main_img" id="main_img"/>
			</div>
			<div class="form-group">
				<label for="art_img">아티스트 페이지에 들어갈 이미지 이름 (확장자명 포함)</label>
				<input type="text" name="art_img" id="art_img"/>
			</div>
			<div class="form-group">
				<label for="s_msg">간략한 소개말</label>
				<input type="text" name="s_msg" id="s_msg"/>
			</div>
			<div class="form-group">
				<label for="l_msg">장문 소개말</label>
				<input type="text" name="l_msg" id="l_msg"/>
			</div>
			<div class="form-group">
				<label for="at_d_day">생년월일</label>
				<input type="text" name="at_d_day" id="at_d_day"/>
			</div>
			<div class="form-group">
				<label for="country">고향</label>
				<input type="text" name="country" id="country"/>
			</div>
			<div class="form-group">
				<label for="at_y_link">공식 유튜브 링크</label>
				<input type="text" name="at_y_link" id="at_y_link"/>
			</div>
			<div class="form-group">
				<label for="fb_link">공식 페이스북 링크</label>
				<input type="text" name="fb_link" id="fb_link"/>
			</div>
			<div class="form-group">
				<label for="insta_link">공식 인스타 링크</label>
				<input type="text" name="insta_link" id="insta_link"/>
			</div>
			<div class="form-group">
				<label for="twitter_link">공식 트위터 링크</label>
				<input type="text" name="twitter_link" id="twitter_link"/>
			</div>
			<div class="form-group">
				<label for="youtube_link">자동재생 되어질 유튜브 링크 ()</label>
				<input type="text" name="youtube_link" id="youtube_link"/>
			</div>
			<div class="form-group">
				<label for="official_site">공식 사이트 (있으면 입력)</label>
				<input type="text" name="official_site" id="official_site"/>
			</div>
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="reset" class="btn btn-danger">초기화</button>
		</form>
	</div>
</body>
</html>