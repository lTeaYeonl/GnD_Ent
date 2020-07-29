<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/artist/artist_ab/at_ab_kim.jsp</title>
<link rel="stylesheet" href="/GnD_Ent/css/bootstrap.css" />
<style>
body {
		background-image : url('${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg');
		background-repeat : no-repeat;
		background-size : cover;
}
img{
	height: auto;
	width: auto;
}
.container { 
	display: grid; 
	grid-auto-rows: minmax(125px, auto); 
	grid-gap: .5rem; 
	margin-top: 0px;
	margin-bottom: 0px;
}
</style>
</head>
<body>
<div class="container col-4"></div>
<div class="container col-4" >

<div class="container layout-header col-8">
	<img src="${pageContext.request.contextPath }/image/AT_Tones-and-i_ab.jpg" alt="" />
	<header class="header" style="color:white; background-color: black;">
	
		<h1>Coldplay</h1>
		<h2>[A Rush Of Blood To The Head]</h2>
		<p>서비스를 골라주세요</p>
	
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_melon.jpeg" style="max-width: 20%; height: 100px;" alt="melon_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_applemusic.png" style="max-width: 20%; height: auto;" alt="applemusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_bugsmusic.png" style="max-width: 20%; height: auto;" alt="bugsmusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_geniemusic.jpeg" style="max-width: 20%; height: auto;" alt="geniemusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_navermusic.png" style="max-width: 20%; height: auto;" alt="navermusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_mnetmusic.png" style="max-width: 20%; height: auto;" alt="mnetmusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	<nav class="navbar navbar-light bg-light">
		<img src="${pageContext.request.contextPath}/image/logo_soribadamusic.jpeg" style="max-width: 20%; height: auto;" alt="soribadamusic_logo" />
		<a class="navbar-brand" href="#">
		<button type="submit" class="btn btn-outline-secondary">play</button></a>
	</nav>
	</header>
	</div>
</div>
<div class="container col-4"></div>
</body>
</html>