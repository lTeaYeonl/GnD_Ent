<%@page import="n.gnd.oc.dao.N_OfficialCDao"%>
<%@page import="n.gnd.oc.dto.N_OfficialCDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String officialchannel_link=request.getParameter("officialchannel_link");
	String officialchannel_icon_name=request.getParameter("officialchannel_icon_name");
	// ImageDto에 이미지 정보 담기
	N_OfficialCDto dto=new N_OfficialCDto();
	dto.setOfficialchannel_link(officialchannel_link);
	dto.setOfficialchannel_icon_name(officialchannel_icon_name);
	// ImageDao 객체를 이용해서 DB에 저장
	boolean isSuccess=N_OfficialCDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공식 채널 아이콘 추가 확인</title>
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
			<strong><%=officialchannel_link %></strong> 의 링크가 성공적으로 저장 되었습니다.<br />
			<a href="m_officialchannel_insert_form.jsp">계속해서 추가하기!</a>
			<a href="${pageContext.request.contextPath }/main/index.jsp">메인 페이지로 돌아가기</a>
		</p>
	</div>
	<%}else{ %>
	<div class="container text-center">
		<p class="mt-5">
			저장에 실패 했습니다. <br />
			<a href="m_officialchannel_insert_form.jsp">다시 저장해보기</a>
		</p>
	</div>
	<%} %>
	<!-- Footer -->
	<jsp:include page="../bottom/footer.jsp"></jsp:include>
	<!-- Footer Close -->
</body>
</html>