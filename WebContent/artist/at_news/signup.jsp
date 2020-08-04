<%@page import="n.gnd.newsletter.dao.N_NewsLetterDao"%>
<%@page import="n.gnd.newsletter.dto.N_NewsLetterDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 가입할 회원의 정보를 읽어온다.
	String email_id=request.getParameter("email_id");

	//N_NewsLetterDto객체에 회원 정보를 담고
	N_NewsLetterDto dto=new N_NewsLetterDto();
	dto.setEmail_id(email_id);
	
	//N_NewsLetterDao객체를 이용해서 DB에 저장한다.
	boolean isSuccess=N_NewsLetterDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(isSuccess){ %>
<p> 
	<strong><%=email_id %></strong> 회원님 가입 되었습니다. 
	<a href="${pageContext.request.contextPath}/main/index.jsp">메인으로 돌아가기</a>
</p>
<%}%>
	
</body>
</html>