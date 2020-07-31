<%@page import="java.util.List"%>
<%@page import="n.gnd.newsletter.dao.N_NewsLetterDao"%>
<%@page import="n.gnd.newsletter.dto.N_NewsLetterDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//다오 객체의 참조값 얻어오기
	N_NewsLetterDao dao = N_NewsLetterDao.getInstance();
	//저장된 email 정보를 읽어온다.
	List<N_NewsLetterDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<meta charset="UTF-8">
<title>/artist/at_news/news_emailinfo.jsp</title>
</head>
<body>
<h1>구독자 이메일 목록 입니다.</h1>
<table class="table table-hover table-sm">
	<thead class="thead-dark">
		<tr class="d-flex">
			<th class="col-3">email</th>
		</tr>
	</thead>
	<tbody>
		<%for (N_NewsLetterDto tmp : list) {%>
		<tr class="d-flex">
			<td class="col-3"><%=tmp.getEmail_id()%></td>
		</tr>
		<%}%>
	</tbody>
</table>
</body>
</html>