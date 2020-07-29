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
	height: 337px;
}
</style>
</head>
<body>
<div class="card bg-dark text-white">
  <img src="..." class="card-img" alt="...">
  <div class="card-img-overlay">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text">Last updated 3 mins ago</p>
  </div>
</div>
<main class="layout" data-test="layout-wrapper">
	<div class="layout">
		<div class="cover">
			<img src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg" alt="" />
		</div>
	</div>
	<div class="layout__cover-sizer"></div>
	<div class="layout__header ">
		<header class="header js-header">
			<h1 data-test="layout-header-title">Coldplay [A Rush Of Blood To The Head]</h1>
			<p style=background-color: balck;  data-test="layout-header-description">서비스를 골라주세요</p>
		</header>
	</div>
	<div class="layout__header-sizer js-header-sizer js-scroll-to-offset-sizer" style="height: 108px;"></div>
	<div class="layout__content" data-test="layout-content">
		<nav id="music-services" data-test="music-service-list" class="music-service-list" role="navigation">
			<div class="music-service-list__item" data-test="music-service-list-item">
				<a id="coldplay_ab" class="music-service-list__link js-redirect" 
				href="https://melon.do/kUnpVLFVF" data-app-type="manual" data-test="music-service-list-link"
				data-label="melon" data-category="service" data-action="Play" data-rank="1">
					<div class="music-service-list__content">
						<img class="music-service-list__img" data-test="music-service-item-image" 
						src="https://services.linkfire.com/logo_melon_onlight.svg" alt="melon" longdesc="https://melon.do/kUnpVLFVF"/>
							<button class="btn music-service-list__btn" data-test="music-service-item-button" tabindex="-1" title="Play">
								<span class="btn-label" data-test="music-service-item-button-label">play</span>
							</button>
					</div>
				</a>
			</div>
		</nav>
	</div>
</main>
</body>
</html>