<%@page import="gnd.artist.dao.ArtistDao"%>
<%@page import="gnd.artist.dto.ArtistDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="list-group">
<!-- 
	<%
		// 아티스트 id&name 가져오기
		List<ArtistDto> list=ArtistDao.getinstance().getList(new ArtistDto());
	%>
	<%for(ArtistDto tmp:list){ %>
		<li class="list-group-item"><%=tmp.getId() %> : <%=tmp.getE_name() %></li>
	<%} %>
-->
</ul>