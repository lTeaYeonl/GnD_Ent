<%@page import="gnd.image.dao.ImageDao"%>
<%@page import="gnd.image.dto.ImageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	// ImageDto 파일 이름 담기
	ImageDto dto=new ImageDto();
	dto.setName(name);
	// ImageDao 객체를 이용해서 DB에 저장
	boolean isSuccess=ImageDao.getinstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/insert/image_insert.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<p><strong><%=name %></strong> 파일이 성공적으로 저장 되었습니다.
			<a href="image_insert_form.jsp">계속 추가하기</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	<%}else{ %>
		<p>저장에 실패 했습니다. <a href="image_insert_form.jsp">다시 저장</a></p>
	<%} %>
</body>
</html>