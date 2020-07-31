<%@page import="n.gnd.pl.dao.N_PlaylistDao"%>
<%@page import="n.gnd.pl.dto.N_PlaylistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 글 정보를 얻어온다.
	N_PlaylistDto dto=N_PlaylistDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=dto.getPlaylist_title() %></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<div class="container">
		<!-- Main Content -->
		<div class="container">
			<div class="container">
				<img class="img-fluid" src="${pageContext.request.contextPath }/image/<%=dto.getImage_name() %>" alt="<%=dto.getImage_name() %>" />
			</div>
			<h1 class="text-center mt-5"><%=dto.getPlaylist_title() %></h1>
			<p ><strong>작성자</strong></p>
			<p><%=dto.getPlaylist_writer() %></p>
			<p ><strong>유튜브 주소</strong></p>
			<p><%=dto.getPlaylist_link() %></p>
			<p><strong>플레이리스트 1</strong></p>
			<p><%=dto.getPlaylist_list1() %></p>
			<p><strong>플레이리스트 2</strong></p>
			<p><%=dto.getPlaylist_list2() %></p>
			<p><strong>플레이리스트 3</strong></p>
			<p><%=dto.getPlaylist_list3() %></p>
			<p><strong>플레이리스트 4</strong></p>
			<p><%=dto.getPlaylist_list4() %></p>
			<p><strong>플레이리스트 5</strong></p>
			<p><%=dto.getPlaylist_list5() %></p>
		</div>
	</div>
	<!-- Main Content Close -->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>