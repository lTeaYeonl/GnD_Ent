<%@page import="n.gnd.news.dao.N_NewsDao"%>
<%@page import="n.gnd.news.dto.N_NewsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String artist_id=request.getParameter("artist_id");
	String artist_name=request.getParameter("artist_name");
	String artist_e_name=request.getParameter("artist_e_name");
	String news_writer=request.getParameter("news_writer");
	String news_title=request.getParameter("news_title");
	String news_content=request.getParameter("news_content");
	String image_name=request.getParameter("image_name");
	
	N_NewsDto dto=new N_NewsDto();
	dto.setArtist_id(artist_id);
	dto.setArtist_name(artist_name);
	dto.setArtist_e_name(artist_e_name);
	dto.setNews_writer(news_writer);
	dto.setNews_title(news_title);
	dto.setNews_content(news_content);
	dto.setImage_name(image_name);
	
	boolean isSuccess=N_NewsDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뉴스 추가 확인</title>
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
			<strong><%=news_title %></strong> 의 뉴스가 성공적으로 저장 되었습니다.<br />
			<a href="m_news_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_news_insert_form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>