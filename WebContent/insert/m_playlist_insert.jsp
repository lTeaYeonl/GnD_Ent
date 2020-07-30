<%@page import="n.gnd.pl.dao.N_PlaylistDao"%>
<%@page import="n.gnd.pl.dto.N_PlaylistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String playlist_writer=request.getParameter("playllist_writer");
	String playlist_title=request.getParameter("playlist_title");
	String playlist_link=request.getParameter("playlist_link");
	String image_name=request.getParameter("image_name");
	String playlist_list1=request.getParameter("playlist_list1");
	String playlist_list2=request.getParameter("playlist_list2");
	String playlist_list3=request.getParameter("playlist_list3");
	String playlist_list4=request.getParameter("playlist_list4");
	String playlist_list5=request.getParameter("playlist_list5");
	
	N_PlaylistDto dto=new N_PlaylistDto();
	dto.setPlaylist_writer(playlist_writer);
	dto.setPlaylist_title(playlist_title);;
	dto.setPlaylist_link(playlist_link);
	dto.setImage_name(image_name);
	dto.setPlaylist_list1(playlist_list1);
	dto.setPlaylist_list2(playlist_list2);
	dto.setPlaylist_list3(playlist_list3);
	dto.setPlaylist_list4(playlist_list4);
	dto.setPlaylist_list5(playlist_list5);
	
	boolean isSuccess=N_PlaylistDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이리스트 추가 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<%if(isSuccess){ %>
	<div class="container text-center">
		<p class="mt-5">
			<strong><%=playlist_title %></strong> 의 플레이리스트가 성공적으로 저장 되었습니다.<br />
			<a href="m_playlist_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_playlist_insert_form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>