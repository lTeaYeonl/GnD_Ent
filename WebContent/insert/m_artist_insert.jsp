<%@page import="n.gnd.artist.dao.N_ArtistDao"%>
<%@page import="n.gnd.artist.dto.N_ArtistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String artist_name=request.getParameter("artist_name");
	String artist_e_name=request.getParameter("artist_e_name");
	String image_name=request.getParameter("image_name");
	String artist_country=request.getParameter("artist_country");
	String artist_description=request.getParameter("artist_description");
	// ImageDto에 이미지 정보 담기
	N_ArtistDto dto=new N_ArtistDto();
	dto.setArtist_name(artist_name);
	dto.setArtist_e_name(artist_e_name);
	dto.setImage_name(image_name);
	dto.setArtist_country(artist_country);
	dto.setArtist_description(artist_description);
	// ImageDao 객체를 이용해서 DB에 저장
	boolean isSuccess=N_ArtistDao.getInstance().insert(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 아티스트 추가 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<%if(isSuccess){ %>
	<div class="container text-center">
		<p class="mt-5">
			<strong><%=artist_name %></strong> 의 정보가 성공적으로 저장 되었습니다.<br />
			<a href="m_artist_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_artist_insert_form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>