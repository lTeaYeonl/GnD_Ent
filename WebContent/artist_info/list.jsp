<%@page import="n.gnd.artist.dao.N_ArtistDao"%>
<%@page import="n.gnd.artist.dto.N_ArtistDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아티스트 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- Top Navigation -->
	<jsp:include page="../top/navbar.jsp"></jsp:include>
	<!-- Top Navigation Close -->
	<!-- Main Content -->
	<div>
		<h1 class="text-center mt-5">아티스트</h1>
		<div class="row">
		<%
   			// 모든 뮤직비디오 정보 가져오기
			List<N_ArtistDto> atlist=N_ArtistDao.getInstance().getList(new N_ArtistDto());
		%>
        <%for(int i=0; i<atlist.size(); i++) {%>
			<div class="col-4">
				<img onclick="location.href='detail.jsp?num<%=atlist.get(i).getArtist_id() %>'" class="img-fluid" src="<%=atlist.get(i).getImage_name() %>" alt="<%=atlist.get(i).getImage_name() %>" />
			</div>
		<%} %>
		</div>
	</div>
	<!-- Main Content Close -->
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>