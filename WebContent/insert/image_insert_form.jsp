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
		<h1>이미지 정보 입력 폼</h1>
		<form action="image_insert.jsp">
			<label for="name">파일 이름</label>
			<input type="text" name="name" id="name"/>
			<button type="submit">저장</button>
		</form>
	</div>
</body>
</html>