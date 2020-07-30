<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /top/navbar.jsp -->
<nav class="navbar navbar-expand-lg" style="background-color:#171717;">
	<a class="navbar-brand" href="${pageContext.request.contextPath }/main/index.jsp">
		<img src="${pageContext.request.contextPath }/image/L_gnd.png" alt="GnD_Logo" />
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">뉴스</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">플레이리스트</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">아티스트</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" style="color:white; font-size:12px;">뉴스레터 구독</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath }/insert/image_insert_form.jsp" style="color:white; font-size:12px;">이미지 정보 입력</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath }/insert/artist_insert_form.jsp" style="color:white; font-size:12px;">아티스트 정보 입력</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath }/insert/musicvideo_insert_form.jsp" style="color:white; font-size:12px;">뮤직비디오 정보 입력</a>
			</li>
		</ul>
	</div>
	<div class="social-icons">
		<a href="https://www.facebook.com/warnermusickorea/">
			<i class="fab fa-facebook-f" style="color: white;"></i>
		</a>
		<a href="https://www.instagram.com/warnermusickorea/">
			<i class="fab fa-youtube" style="color: white;"></i>
		</a>
		<a href="https://www.youtube.com/user/WMK2011">
			<i	class="fab fa-instagram" style="color: white;"></i>
		</a>
		<a href="https://twitter.com/Warner_Music_Kr">
			<i	class="fab fa-twitter" style="color: white;"></i>
		</a>
	</div>
</nav>