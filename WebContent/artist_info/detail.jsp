<%@page import="n.gnd.artist.dao.N_ArtistDao"%>
<%@page import="n.gnd.artist.dto.N_ArtistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 글 정보를 얻어온다.
	N_ArtistDto dto=N_ArtistDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=dto.getImage_name() %> 상세 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Carousel Image -->
	<div class="container-fluid px-0" id="carouselimage">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item">
					<img class="d-block w-100" src="${pageContext.request.contextPath }/image/<%=dto.getImage_name() %>" alt="<%=dto.getImage_name() %>" />
					<div class="carousel-caption d-none d-md-block" style="bottom: 15%">
						<h1 style="bottom: 10%;"><%=dto.getArtist_e_name() %></h1>
						<p style="bottom: 10%;"><%=dto.getArtist_name() %></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel Image Close -->
	<!-- Main Content -->
	<div class="container">
		<div class="row mt-5">
			<div class="col">
				<h4><%=dto.getArtist_name() %> (<%=dto.getArtist_e_name() %>)</h4>
				<p><%=dto.getArtist_description() %></p>
			</div>
			<div class="col">
				<p><strong>본명</strong><br /><%=dto.getArtist_name() %></p>
				<p><strong>국가</strong><br /><%=dto.getArtist_country() %></p>
			</div>
		</div>
	</div>
	<!-- Main Content Close -->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>