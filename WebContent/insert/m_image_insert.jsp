<%@page import="n.gnd.image.dao.N_ImageDao"%>
<%@page import="n.gnd.image.dto.N_ImageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String artist_name=request.getParameter("artist_name");
	String artist_e_name=request.getParameter("artist_e_name");
	String image_name=request.getParameter("image_name");
	// ImageDto에 이미지 정보 담기
	N_ImageDto dto=new N_ImageDto();
	dto.setArtist_name(artist_name);
	dto.setArtist_e_name(artist_e_name);
	dto.setImage_name(image_name);
	// ImageDao 객체를 이용해서 DB에 저장
	boolean isSuccess=N_ImageDao.getInstance().insert(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 이미지 추가 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<%if(isSuccess){ %>
	<div class="container text-center">
		<p class="mt-5">
			<strong><%=artist_name %></strong> 의 이미지가 성공적으로 저장 되었습니다.<br />
			<a href="m_image_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_image_insert.form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>