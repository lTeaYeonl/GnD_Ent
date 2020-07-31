<%@page import="n.gnd.mv.dao.N_MvDao"%>
<%@page import="n.gnd.mv.dto.N_MvDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String artist_id=request.getParameter("artist_id");
	String artist_e_name=request.getParameter("artist_e_name");
	String musicvideo_name=request.getParameter("musicvideo_name");
	String musicvideo_link=request.getParameter("musicvideo_link");
	String musicvideo_thumbnail_name=request.getParameter("musicvideo_thumbnail_name");
	
	N_MvDto dto=new N_MvDto();
	dto.setArtist_id(artist_id);
	dto.setArtist_e_name(artist_e_name);
	dto.setMusicvideo_name(musicvideo_name);
	dto.setMusicvideo_link(musicvideo_link);
	dto.setMusicvideo_thumbnail_name(musicvideo_thumbnail_name);
	
	boolean isSuccess=N_MvDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤직비디오 추가 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<%if(isSuccess){ %>
	<div class="container text-center">
		<p class="mt-5">
			<strong><%=artist_e_name %></strong> 의 뮤직비디오가 성공적으로 저장 되었습니다.<br />
			<a href="m_musicvideo_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_musicvideo_insert_form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>