<%@page import="gnd.artist.dao.ArtistDao"%>
<%@page import="gnd.artist.dto.ArtistDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String e_name=request.getParameter("e_name");
	String k_name =request.getParameter("k_name");
	String r_name=request.getParameter("r_name");
	String main_img=request.getParameter("main_img");
	String art_img=request.getParameter("art_img");
	String s_msg=request.getParameter("s_msg");
	String l_msg=request.getParameter("l_msg");
	String at_d_day=request.getParameter("at_d_day");
	String country=request.getParameter("country");
	String at_y_link=request.getParameter("at_y_link");
	String fb_link=request.getParameter("fb_link");
	String insta_link=request.getParameter("insta_link");
	String twitter_link=request.getParameter("twitter_link");
	String youtube_link=request.getParameter("youtube_link");
	String official_site=request.getParameter("official_site");
	// ArtistDto 아티스트 정보 담기
	ArtistDto dto=new ArtistDto();
	dto.setE_name(e_name);
	dto.setK_name(k_name);
	dto.setR_name(r_name);
	dto.setMain_img(main_img);
	dto.setArt_img(art_img);
	dto.setS_msg(s_msg);
	dto.setL_msg(l_msg);
	dto.setAt_d_day(at_d_day);
	dto.setCountry(country);
	dto.setAt_y_link(at_y_link);
	dto.setF_link(fb_link);
	dto.setI_link(insta_link);
	dto.setT_link(twitter_link);
	dto.setY_link(youtube_link);
	dto.setOfficial_site(official_site);
	// ArtistDao 객체를 이용해서 DB에 저장
	boolean isSuccess=ArtistDao.getinstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/artist_insert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<%if(isSuccess){ %>
		<div class="container">
			<p><strong><%=e_name %></strong> 아티스트의 정보가 성공적으로 저장 되었습니다.
				<a href="artist_insert_form.jsp">계속 추가하기</a>
				<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
			</p>
		</div>
	<%}else{ %>
		<div class="container">
			<p>저장에 실패 했습니다. <a href="artist_insert_form.jsp">다시 저장</a></p>
		</div>
	<%} %>
</body>
</html>