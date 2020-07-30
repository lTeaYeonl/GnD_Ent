<%@page import="informdao.InformDao"%>
<%@page import="informdto.InformDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 가입할 회원의 정보를 읽어온다.
	String inf_name=request.getParameter("inf_name");
	String inf_email=request.getParameter("inf_email");
	String inf_pwd=request.getParameter("inf_pwd");
	String inf_nt=request.getParameter("inf_nt");
	String inf_sel=request.getParameter("inf_sel");
	String inf_sex=request.getParameter("inf_sex");
	String inf_bday=request.getParameter("inf_bday");
	int inf_height=0; //Integer.parseInt(request.getParameter("inf_height"));
	int inf_weight=0; //Integer.parseInt(request.getParameter("inf_weight"));
	String inf_phone= request.getParameter("inf_phone");
	String inf_job=request.getParameter("inf_job");
	String inf_sns=request.getParameter("inf_sns");
	String inf_address=request.getParameter("inf_address");
	String inf_lan=request.getParameter("inf_lan");
	String inf_hobby=request.getParameter("inf_hobby");
	String inf_spec=request.getParameter("inf_spec");
	String inf_intro=request.getParameter("inf_intro");
	
	//InformDto 객체에 회원정보를 담고
	InformDto dto=new InformDto();
	dto.setInf_name(inf_name);
	dto.setInf_email(inf_email);
	dto.setInf_pwd(inf_pwd);
	dto.setInf_nt(inf_nt);
	dto.setInf_sel(inf_sel);
	dto.setInf_sex(inf_sex);
	dto.setInf_bday(inf_bday);
	dto.setInf_height(inf_height);
	dto.setInf_weight(inf_weight);
	dto.setInf_phone(inf_phone);
	dto.setInf_job(inf_job);
	dto.setInf_sns(inf_sns);
	dto.setInf_address(inf_address);
	dto.setInf_lan(inf_lan);
	dto.setInf_hobby(inf_hobby);
	dto.setInf_spec(inf_spec);
	dto.setInf_intro(inf_intro);
	
	//UsersDao 객체를 이용해서 DB 에 저장한다.
	boolean isSuccess=InformDao.getInstance().insert(dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/Audition/signup.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p> 
		<strong><%=inf_name %></strong> 회원님 가입 되었습니다. 
		
	</p>
		<a href="${pageContext.request.contextPath }/main/index.jsp">main 으로 돌아가기</a>
<%}else{ %>
	<p> 가입이 실패 했습니다. <a href="form.jsp">다시 가입</a></p>
<%} %>
</body>
</html>