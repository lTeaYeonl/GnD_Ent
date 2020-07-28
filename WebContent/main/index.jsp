<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GnD Entertainment</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<!-- fontawesome 에서 제공해주는 icon을 사용하기 위해 로딩  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous /">
</head>
<body>
	<!-- Main Page -->
	<div class="main-page">
		<!-- Top Navigation -->
		<nav class="navbar navbar-expand-lg" style="background-color:#171717;">
			<a class="navbar-brand" href="index.jsp">
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
		<!-- Top Navigation Close -->
		<!-- Main Content -->
		<div class="main-content">
			<!-- Carousel Image -->
			<div class="container-fluid px-0">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_AnneMarie.png"
								alt="1 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1 class="bg-dark">Anne-Marie</h1>
								<p class="bg-dark">앤-마리</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Cardi-B.jpg"
								alt="2 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>CARDI B</h1>
								<p>카디 비</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Coldplay.jpg"
								alt="3 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>COLDPLAY</h1>
								<p>콜드플레이</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_DuaLipa.png"
								alt="4 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>DUA LIPA</h1>
								<p>두아 리파</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Ed-Sheeran.jpg"
								alt="5 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>Ed-Sheeran</h1>
								<p>에드 시런</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Jamie.png"
								alt="6 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>Jamie</h1>
								<p>제이미</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Lizzo.jpg"
								alt="7 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>Lizzo</h1>
								<p>리조</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="${pageContext.request.contextPath }/image/M_Lukas-Graham.jpg"
								alt="8 slide">
							<div class="carousel-caption d-none d-md-block">
								<h1>LUKAS GRAHAM</h1>
								<p>루카스 그레이엄</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<!-- Carousel Image Close -->
				<!-- New Music Video -->
				<div class="container mt-5">
					<div class="container">
						<p
							style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">최신
							뮤직비디오</p>
						<h3
							style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">New
							Music Video</h3>
					</div>
					<div class="row">
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#videoModal">
								<img class="img-fluid"
									src="${pageContext.request.contextPath }/image/bmc.jpg"
									alt="music video thumbnail test" />
							</button>
							<div class="modal fade" id="videoModal" tabindex="-1"
								role="dialog" aria-labelledby="videoModal" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="videoModalLabel">Show Video</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body"></div>
										<div class="modal-body">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">close</button>
											<button type="button" class="btn btn-primary">save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- New Music Video -->
				<!-- Latest News -->
				<div class="container mt-5">
					<div class="container">
						<p
							style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">새로운
							소식</p>
						<h3
							style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">Lastest
							News</h3>
					</div>
					<div class="row">
						<div class="col-3">
							<div class="card" style="width: 18rem;">
								<img class="card-img-top"
									src="${pageContext.request.contextPath }/image/test1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">앤-마리, 도자 캣과 함께한 싱글 'To Be
										Young(feat.Doja Cat)' 발매</h5>
									<p class="card-text">2019 국내 음원차트 1위, 앤-마리 새 싱글 ‘To Be
										Young’ 7월 17일 정오 발매 ‘국민 팝스타’ 앤-마리(Anne-Marie)가 7월 17일 정오에 새 싱글
										‘To Be Young’을 발매한다....</p>
									<a href="#" class="btn btn-primary">더보기 ></a>
								</div>
							</div>
						</div>
						<div class="col"></div>
						<div class="col-3">
							<div class="card" style="width: 18rem;">
								<img class="card-img-top"
									src="${pageContext.request.contextPath }/image/test1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">앤-마리, 도자 캣과 함께한 싱글 'To Be
										Young(feat.Doja Cat)' 발매</h5>
									<p class="card-text">2019 국내 음원차트 1위, 앤-마리 새 싱글 ‘To Be
										Young’ 7월 17일 정오 발매 ‘국민 팝스타’ 앤-마리(Anne-Marie)가 7월 17일 정오에 새 싱글
										‘To Be Young’을 발매한다....</p>
									<a href="#" class="btn btn-primary">더보기 ></a>
								</div>
							</div>
						</div>
						<div class="col"></div>
						<div class="col-3">
							<div class="card" style="width: 18rem;">
								<img class="card-img-top"
									src="${pageContext.request.contextPath }/image/test1.jpg"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">앤-마리, 도자 캣과 함께한 싱글 'To Be
										Young(feat.Doja Cat)' 발매</h5>
									<p class="card-text">2019 국내 음원차트 1위, 앤-마리 새 싱글 ‘To Be
										Young’ 7월 17일 정오 발매 ‘국민 팝스타’ 앤-마리(Anne-Marie)가 7월 17일 정오에 새 싱글
										‘To Be Young’을 발매한다....</p>
									<a href="#" class="btn btn-primary">더보기 ></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-5">
					<a href="#" style="color: gray">전체보기 <i
						class="fas fa-caret-right"></i></a>
				</div>
			</div>
			<!-- Latest News Close -->
			<!-- Official Channel -->
			<div class="container" style="text-align: center;">
				<div class="mt-5">
					<div class="row">
						<div class="container">
							<p
								style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">개노답
								엔터테인먼트 공식 채널</p>
						</div>
						<div class="col-2">
							<a href="https://www.facebook.com/warnermusickorea/"> <i
								class="fab fa-facebook-square"
								style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<div class="col-2">
							<a href="https://www.instagram.com/warnermusickorea/"> <i
								class="fab fa-instagram" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<div class="col-2">
							<a href="https://www.youtube.com/user/WMK2011"> <i
								class="fab fa-youtube" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<div class="col-2">
							<a href="https://twitter.com/warner_music_kr"> <i
								class="fab fa-twitter" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<div class="col-2">
							<a href="https://www.tiktok.com/@warnermusickorea"> <i
								class="fab fa-google" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<div class="col-2">
							<a
								href="http://blog.naver.com/PostList.nhn?blogId=warnermusickorea">
								<i class="fab fa-google" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Official Channel Close -->
			<!-- PlayList -->
			<div class="container">
				<div class="mt-5">
					<div class="container">
						<p
							style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">플레이리스트</p>
						<h3 style="text-align: center;">PlayList</h3>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-3">
								<div class="card">
									<img src="${pageContext.request.contextPath }/image/PL_1.jpg"
										alt="PlayList_First_Image" class="card-img-top" />
									<div class="card-body">
										<h5 class="card-title">개노답뮤직 신작 모음</h5>
									</div>
								</div>
							</div>
							<div class="col-3">
								<div class="card">
									<img src="${pageContext.request.contextPath }/image/PL_2.jpg"
										alt="PlayList_Second_Image" class="card-img-top" />
									<div class="card-body">
										<h5 class="card-title">신나는 댄스팝 뮤직!</h5>
									</div>
								</div>
							</div>
							<div class="col-3">
								<div class="card">
									<img src="${pageContext.request.contextPath }/image/PL_3.jpg"
										alt="PlayList_Third_Image" class="card-img-top" />
									<div class="card-body">
										<h5 class="card-title">한글 가사 번역 뮤직비디오</h5>
									</div>
								</div>
							</div>
							<div class="col-3">
								<div class="card">
									<img src="${pageContext.request.contextPath }/image/PL_4.jpg"
										alt="PlayList_Four_Image" class="card-img-top" />
									<div class="card-body">
										<h5 class="card-title">비 내리는 날 듣는 감성팝</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- PlayList Close -->
			<!-- Artist -->
			<div class="container mt-5">
				<div class="mt-5">
					<div class="container">
						<div class="col mt-5">
							<p
								style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">개노답뮤직
								아티스트</p>
							<h3
								style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">Artist</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_jamie_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_Lizzo_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_AnneMarie_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_ed-sheeran_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_Cardi-B_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_coldplay_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href="#"> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_DuaLipa_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-4">
					<a href="#" style="color: gray">전체보기 <i
						class="fas fa-caret-right"></i></a>
				</div>
			</div>
			<!-- Artist Close-->
			<!-- News Letter -->
			<div class="container mt-5" style="text-align: center">
				<div class="row">
					<div class="col-1"></div>
					<div class="col">
						<h3>개노답뮤직 뉴스레터 구독</h3>
					</div>
					<div class="col">
						<p
							style="font-size: 14px; color: #7c7c7c; line-height: 1.1; text-align: left; letter-spacing: -1px;">
							개노답뮤직 아티스트와 최신 앨범 소식, <br />이벤트 뉴스 등을 빠르게 이메일로 받아보세요.
						</p>
					</div>
					<div class="col-1">
						<button class="btn btn-secondary">구독</button>
					</div>
					<div class="col-1"></div>
				</div>
			</div>
			<!-- News Letter Close-->
			<!-- Instagram Feed -->
			<div class="container mt-5" style="text-align: center">
				<p
					style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">인스타그램
					피드</p>
				<h3
					style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">Instagram
					Feed</h3>
				<div class="container">
					<div class="row">
						<div class="col-3">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="instgram_feed_image" />
						</div>
						<div class="col-3">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="instgram_feed_image" />
						</div>
						<div class="col-3">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="instgram_feed_image" />
						</div>
						<div class="col-3">
							<img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="instgram_feed_image" />
						</div>
					</div>
					<div class="container mt-3">
						<button type="button" class="btn btn-dark"
							onclick="location.href='https://www.instagram.com/warnermusickorea' ">
							<i class="fab fa-instagram"></i> Follow on Instagram
						</button>
					</div>
				</div>
			</div>
			<!-- Instagram Feed Close -->
			<!-- Bottom -->
			<div class="container mt-5">
				<div class="row">
					<div class="col">
						<img class="img-fluid"
							src="${pageContext.request.contextPath }/image/test1.png" alt="" />
					</div>
					<div class="col align-self-center">
						<p
							style="font-size: 12px; color: #000000; line-height: 1; text-align: center; letter-spacing: 2px;">
							개노답 클래식</p>
						<p
							style="font-size: 35px; color: #000000; line-height: 1; text-align: center; font-family: Montserrat; font-weight: 400; font-style: normal; letter-spacing: -1px;">
							DOGNOANSWER CLASSICS</p>
						<div class="container">
							<div class="row justify-content-md-center">
								<div class="col-md-auto">
									<a href="https://www.facebook.com/warnerclassicskorea/"> <i
										class="fab fa-facebook-f" style="color: black;"></i>
									</a>
								</div>
								<div class="col-md-auto">
									<a href="https://www.youtube.com/user/emiclassics"> <i
										class="fab fa-youtube" style="color: black;"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Bottom Close -->
		</div>
		<!-- Main Content Close -->
		<!-- Footer -->
		<div class="footer" style="background-color:#202020;">
			<div class="container mt-5">
				<div class="row">
					<div class="col mt-5">
						<a href="index.jsp">
							<img src="${pageContext.request.contextPath }/image/L_gnd.png" alt="GnD_Logo_Image" />
						</a>
					</div>
					<div class="col mt-5">
						<div class="container">
							<h3 class="title" style="color:#ffffff; font-size:12px;">
								<span>CONTACT US</span>
							</h3>
						</div>
						<div class="container">
							<a href="mailto:clairiamport@gmail.com" style="color:#777777; font-size:12px;">GnDMusic.korea@gmail.com</a>
						</div>
					</div>
					<div class="col mt-5">
						<div class="container">
							<h3 class="title"  style="color:#ffffff; font-size:12px;">
								<span>TERMS AND CONDITIONS</span>
							</h3>
						</div>
						<div class="container">
							<p>
								<a href="#" target="_blank" style="color:#777777; font-size:12px;">이용약관</a>
							</p>
							<p>
								<a href="#" target="_blank" style="color:#777777; font-size:12px;">개인정보 처리방침</a>
							</p>
							<p>
								<a href="#" target="_blank" style="color:#777777; font-size:12px;">개인정보 처리방침 - 입사지원자용</a>
							</p>
						</div>
					</div>
					<div class="col mt-5">
						<div class="container">
							<h3 class="title"  style="color:#ffffff; font-size:12px;">
								<span>SUBSCRIPTION</span>
							</h3>
						</div>
						<div class="container">
							<p>
								<a href="#" target="_blank" style="color:#777777; font-size:12px;">뉴스레터 구독</a>
							</p>
							<p>
								<a href="#" target="_blank" style="color:#777777; font-size:12px;">블로그 방문</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Close -->
		<!-- Footer-Footer -->
		<div class="footer" style="background-color:#171717;">
			<div class="container">
				<div class="row">
					<div class="col mt-3" style="color:#898989; font-size:12px;">
						<p>COPYRIGHT © 2020 GND MUSIC KOREA. All Rights Reserved.</p>
					</div>
					<div class="col mt-3">
						<div class="social-icons float-right">
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
					</div>
				</div>
			</div>
		</div>
		<!-- Footer-Footer -->
	</div>
	<!-- Main Page Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
</body>
</html>