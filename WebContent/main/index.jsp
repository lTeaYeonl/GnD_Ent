<%@page import="gnd.mv.dao.MvDao"%>
<%@page import="gnd.mv.dto.MvDto"%>
<%@page import="java.util.List"%>
<%@page import="gnd.image.dto.ImageDto"%>
<%@page import="gnd.image.dao.ImageDao"%>
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
<link href='${pageContext.request.contextPath }/css/font.css' rel='stylesheet' type='text/css'>
<style>
	html {
	scroll-behavior: smooth;
	}
</style>
</head>
<body>
	<!-- Main Page -->
	<div class="main-page">
		<!-- Top Navigation -->
		<jsp:include page="../top/navbar.jsp"></jsp:include>
		<!-- Top Navigation Close -->
		<!-- Main Content -->
		<div class="main-content">
			<!-- Carousel Image -->
			<%
				// 모든 아티스트 이미지 목록 가져오기
				List<ImageDto> list = ImageDao.getinstance().getList(new ImageDto());
			%>
			<%if(list.size()!=0){ %>
			<div class="container-fluid px-0" id="carouselimage">
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<%for (int i=0; i<list.size(); i++){ %>
							<%if(i==0){ %>
								<li data-target="#carouselExampleIndicators" data-slide-to="<%=i %>" class="active"></li>
							<%}else{ %>
								<li data-target="#carouselExampleIndicators" data-slide-to="<%=i %>"></li>
							<%} %>
						<%} %>
					</ol>
					<div class="carousel-inner">
					<%for(int i=0; i<list.size(); i++){ %>
						<%if(i==0){ %>
						<div class="carousel-item active">
						<%}else{ %>
						<div class="carousel-item">
					<%} %>
							<img class="d-block w-100" src="${pageContext.request.contextPath }/image/<%=list.get(i).getName() %>" alt="<%=i %> slide" />
							<div class="carousel-caption d-none d-md-block" style="bottom: 15%">
								<h1 style="bottom: 10%;"><%=list.get(i).getE_name()%></h1>
								<p style="bottom: 10%;"><%=list.get(i).getK_name()%></p>
								<button style="color: white; bottom: 10%;" type="button" class="btn btn-secondary" onclick="location.href='cpath.jsp?<%=list.get(i).getAt_id()%>'">
									더 보기
								</button>
							</div>
						</div>
					<%} %>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span	class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<%}else{ %>
				<p class="text-danger">이미지 Data가 없습니다. Data를 추가해 주세요.</p>
				<a href="${pageContext.request.contextPath }/insert/image_insert_form.jsp">추가하러 가기</a>
			<%} %>
			<!-- Carousel Image Close -->
			<!-- New Music Video -->
            <div class="container mt-5">
               <div class="container">
                  <p style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">
                     최신뮤직비디오
                  </p>
                  <h3 style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">
                     New Music Video
                  </h3>
               </div>
               <div class="row">
	               <%
	               		// 모든 뮤직비디오 정보 가져오기
						List<MvDto> mvlist=MvDao.getinstance().getList(new MvDto());
	               %>
	               <%for(int i=0; i<mvlist.size(); i++) {%>
               		<div class="col-4">
               			<button type="button" class="btn btn-default" data-toggle="modal" data-target="#mvModal<%=i %>">
                   			<img class="img-fluid" src="${pageContext.request.contextPath }/image/<%=mvlist.get(i).getImg_name() %>" alt="<%=mvlist.get(i).getImg_name() %>" />
                   		</button>
                   		<div class="modal fade bd-example-modal-xl" id="mvModal<%=i %>" tabindex="-1" role="dialog" aria-labelledby="videoModal" aria-hidden="true">
	                        <div class="modal-dialog modal-xl" role="document">
	                           <div class="modal-content">
	                              <div class="modal-header">
	                                 <h5 class="modal-title" id="videoModalLabel"><%=mvlist.get(i).getAt_id() %></h5>
	                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                    <span aria-hidden="true">&times;</span>
	                                 </button>
	                              </div>
	                              <div class="modal-body">
	                                 <div class="embed-responsive embed-responsive-16by9">
	                                 	<iframe class="embed-responsive-item" src="<%=mvlist.get(i).getLink() %>" allowfullscreen="true"></iframe>
	                                 </div>
	                              </div>
	                              <div class="modal-footer">
	                                 <button type="button" class="btn btn-secondary"
	                                    data-dismiss="modal">close</button>
	                                 <button type="button" class="btn btn-primary">save</button>
	                              </div>
	                           </div>
	                        </div>
                     	</div>
                   	</div>
	               <%} %>
	               <div class="col-4">
	               		<div class="container text-center">
	               			<div class="container" style="margin-top: 25%;">
								<a href="${pageContext.request.contextPath }/insert/image_insert_form.jsp">이미지 추가하기</a><br />
		               		<i class="fas fa-plus"></i>
	               			</div>
	               	</div>
	               </div>
                </div>
            	<!-- New Music Video -->
				<!-- Latest News -->
				<div class="container mt-5" id="news">
					<div class="container">
						<p style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">
							새로운 소식
						</p>
						<h3 style="font-size: 30px; line-height: 1; text-align: center; letter-spacing: 0px;">
							Lastest News
						</h3>
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
									<a href="" class="btn btn-primary">더보기 ></a>
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
									<a href="" class="btn btn-primary">더보기 ></a>
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
									<a href="" class="btn btn-primary">더보기 ></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-5">
					<a href="" style="color: gray">전체보기 <i
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
							<a href="https://www.facebook.com/warnermusickorea/">
							<i class="fab fa-facebook-square" style="font-size: 4vw; color: black;"></i>
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
			<div class="container" id="playlist">
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
			<div class="container mt-5" id="artist">
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
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_jamie_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_Lizzo_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_AnneMarie_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_ed-sheeran_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_Cardi-B_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_coldplay_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
						<div class="col-3">
							<a href=""> <img class="img-fluid"
								src="${pageContext.request.contextPath }/image/AT_DuaLipa_thumb.jpg"
								alt="Tones-And_I_Thumbnail_Image" />
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-4">
					<a href="" style="color: gray">전체보기 <i
						class="fas fa-caret-right"></i></a>
				</div>
			</div>
			<!-- Artist Close-->
			<!-- News Letter -->
			<div class="container mt-5" id="newsletter" style="text-align: center">
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
							<a href="${pageContext.request.contextPath }/instafeed/instagram_feed_tonesandi.jsp">
								<img class="img-fluid" src="${pageContext.request.contextPath }/image/AT_tones-and-i_thumb.jpg" alt="instgram_feed_image" />
							</a>
						</div>
						<div class="col-3">
							<a href="${pageContext.request.contextPath }/instafeed/instagram_feed_dualipa.jsp">
								<img class="img-fluid" src="${pageContext.request.contextPath }/image/AT_DuaLipa_thumb.jpg" alt="instgram_feed_image" />
							</a>
						</div>
						<div class="col-3">
							<a href="${pageContext.request.contextPath }/instafeed/instagram_feed_coldplay.jsp">
								<img class="img-fluid" src="${pageContext.request.contextPath }/image/AT_coldplay_thumb.jpg" alt="instgram_feed_image" />
							</a>
						</div>
						<div class="col-3">
							<a href="${pageContext.request.contextPath }/instafeed/instagram_feed_annemarie.jsp">
								<img class="img-fluid" src="${pageContext.request.contextPath }/image/AT_AnneMarie_thumb.jpg" alt="instgram_feed_image" />
							</a>
						</div>
					</div>
					<div class="container mt-3">
						<button type="button" class="btn btn-dark" onclick="location.href='https://www.instagram.com/warnermusickorea' ">
							<i class="fab fa-instagram"></i>
							Follow on Instagram
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
		<jsp:include page="../bottom/footer.jsp"></jsp:include>
		<!-- Footer Close -->
		<!-- Fixed Button -->
			<a href="#" id="topbutton"style="position:fixed; bottom: 10%; right: 10%; display:none;">
				<button class="btn btn-dark">
					<i class="fas fa-chevron-up"></i>
				</button>
			</a>
		<!-- Fixed Button Close -->
	</div>
	</div>
	<!-- Main Page Close -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script>
		$("#carouselimage").mouseenter(function(){
			$("#topbutton").hide();
		}).mouseleave(function(){
			$("#topbutton").show();
		});
	</script>
	<!-- Script Close -->
</body>
</html>