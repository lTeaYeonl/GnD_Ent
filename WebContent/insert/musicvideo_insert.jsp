<%@page import="gnd.mv.dao.MvDao"%>
<%@page import="gnd.mv.dto.MvDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String mv_link=request.getParameter("mv_link");
	String at_id=request.getParameter("at_id");
	// MvDto 정보 담기
	MvDto dto=new MvDto();
	dto.setLink(mv_link);
	dto.setAt_id(at_id);
	// MvDao 객체를 이용해서 DB에 저장
	boolean isSuccess=MvDao.getinstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/musicvideo_insert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
</head>
<body>
	<%if(isSuccess){ %>
		<div class="container">
			<p><strong><%=at_id %> 번</strong> 아티스트의 뮤직비디오 정보가 성공적으로 저장 되었습니다.
				<a href="musicvideo_insert_form.jsp">계속 추가하기</a>
				<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
			</p>
		</div>
	<%}else{ %>
		<div class="container">
			<p>저장에 실패 했습니다. <a href="musicvideo_insert_form.jsp">다시 저장</a></p>
		</div>
	<%} %>
</body>
</html>