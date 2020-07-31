<%@page import="n.gnd.news.dao.N_NewsDao"%>
<%@page import="n.gnd.news.dto.N_NewsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 글 정보를 얻어온다.
	N_NewsDto dto=N_NewsDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=dto.getNews_title() %></title>
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
						<h1 style="bottom: 10%;"><%=dto.getNews_title() %></h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel Image Close -->
	<!-- Main Content -->
	<div class="container">
		<h1 class="text-center mt-5"><%=dto.getNews_title() %></h1>
		<p ><strong>작성자</strong></p><br />
		<p><%=dto.getNews_writer() %></p>
		<p ><strong>작성일</strong></p><br />
		<p><%=dto.getNews_regdate() %></p>
		<p><strong>내용</strong></p><br />
		<p><%=dto.getNews_content() %></p>
	</div>
	<!-- Main Content Close -->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>