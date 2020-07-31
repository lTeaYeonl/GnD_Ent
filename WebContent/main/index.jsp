<%@page import="gnd.artist.dto.ArtistDto"%>
<%@page import="gnd.artist.dao.ArtistDao"%>
<%@page import="gnd.mv.dao.MvDao"%>
<%@page import="gnd.mv.dto.MvDto"%>

<%@page import="n.gnd.artist.dao.N_ArtistDao"%>
<%@page import="n.gnd.artist.dto.N_ArtistDto"%>
<%@page import="n.gnd.pl.dao.N_PlaylistDao"%>
<%@page import="n.gnd.pl.dto.N_PlaylistDto"%>
<%@page import="n.gnd.oc.dao.N_OfficialCDao"%>
<%@page import="n.gnd.oc.dto.N_OfficialCDto"%>
<%@page import="n.gnd.news.dao.N_NewsDao"%>
<%@page import="n.gnd.news.dto.N_NewsDto"%>
<%@page import="n.gnd.mv.dao.N_MvDao"%>
<%@page import="n.gnd.mv.dto.N_MvDto"%>
<%@page import="n.gnd.image.dao.N_ImageDao"%>
<%@page import="n.gnd.image.dto.N_ImageDto"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
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
				List<N_ImageDto> list = N_ImageDao.getInstance().getList(new N_ImageDto());
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
							<img class="d-block w-100" src="${pageContext.request.contextPath }/image/<%=list.get(i).getImage_name() %>" alt="<%=i %> slide" />
							<div class="carousel-caption d-none d-md-block" style="bottom: 15%">
								<h1 style="bottom: 10%;"><%=list.get(i).getArtist_e_name() %></h1>
								<p style="bottom: 10%;"><%=list.get(i).getArtist_name() %></p>
								<button style="color: white; bottom: 10%;" type="button" class="btn btn-secondary" onclick="location.href='../artist_info/detail.jsp?num=<%=list.get(i).getArtist_id() %>">
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
			<div class="container text-center mt-5">
				<p class="text-danger">이미지 Data가 없습니다. Data를 추가해 주세요.</p>
				<a href="${pageContext.request.contextPath }/insert/m_image_insert_form.jsp">추가하러 가기</a>
			</div>
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
						List<N_MvDto> mvlist=N_MvDao.getInstance().getList(new N_MvDto());
	               %>
	               <%for(int i=0; i<mvlist.size(); i++) {%>
               		<div class="col-4">
               			<button type="button" class="btn btn-default" data-toggle="modal" data-target="#mvModal<%=i %>">
                   			<img class="img-fluid" src="${pageContext.request.contextPath }/image/<%=mvlist.get(i).getMusicvideo_thumbnail_name() %>" alt="<%=mvlist.get(i).getMusicvideo_thumbnail_name() %>" />
                   		</button>
                   		<div class="modal fade bd-example-modal-xl" id="mvModal<%=i %>" tabindex="-1" role="dialog" aria-labelledby="videoModal" aria-hidden="true">
	                        <div class="modal-dialog modal-xl" role="document">
	                           <div class="modal-content">
	                              <div class="modal-header">
	                                 <h5 class="modal-title" id="videoModalLabel"><%=mvlist.get(i).getArtist_e_name() %> - <%=mvlist.get(i).getMusicvideo_name() %></h5>
	                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                    <span aria-hidden="true">&times;</span>
	                                 </button>
	                              </div>
	                              <div class="modal-body">
	                                 <div class="embed-responsive embed-responsive-16by9">
	                                 	<iframe class="embed-responsive-item" src="<%=mvlist.get(i).getMusicvideo_link() %>" allowfullscreen="true"></iframe>
	                                 </div>
	                              </div>
	                              <div class="modal-footer">
	                                 <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	                              </div>
	                           </div>
	                        </div>
                     	</div>
                   	</div>
	               <%} %>
	               <div class="col-4">
	               		<div class="container text-center">
	               			<div class="container" style="margin-top: 25%;">
								<a href="${pageContext.request.contextPath }/insert/m_musicvideo_insert_form.jsp">이미지 추가하기</a><br />
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
					<%
	               		// 모든 뮤직비디오 정보 가져오기
						List<N_NewsDto> newslist=N_NewsDao.getInstance().getList(new N_NewsDto());
	               %>
	               <%for(int i=0; i<newslist.size(); i++) {%>
						<div class="col-3">
							<div class="card" style="width: 18rem;">
								<img class="card-img-top"
									src="${pageContext.request.contextPath }/image/<%=newslist.get(i).getImage_name() %>" alt="<%=newslist.get(i).getImage_name() %>">
								<div class="card-body">
									<h5 class="card-title"><%=newslist.get(i).getNews_title() %></h5>
									<p class="card-text"><%=newslist.get(i).getNews_content() %></p>
									<a href="<%=newslist.get(i).getNews_id() %>" class="btn btn-primary">더보기 ></a>
								</div>
							</div>
						</div>
						<%} %>
						<div class="container text-center mt-5">
							<p class="text-danger">뉴스 Data가 없습니다. Data를 추가해 주세요.</p>
							<a href="${pageContext.request.contextPath }/insert/m_news_insert_form.jsp">추가하러 가기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-5">
				<%
               		// 모든 뮤직비디오 정보 가져오기
					List<N_NewsDto> newslist2=N_NewsDao.getInstance().getList(new N_NewsDto());
               %>
               <%for(int i=0; i<newslist2.size(); i++) {%>
					<a href="<%=newslist2.get(i).getNews_id() %>" style="color: gray">
						전체보기
						<i class="fas fa-caret-right"></i>
					</a>
				<%} %>
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
						<%
							// 모든 뮤직비디오 정보 가져오기
							List<N_OfficialCDto> oclist=N_OfficialCDao.getInstance().getList(new N_OfficialCDto());
		             	%>
		              	<%for(int i=0; i<oclist.size(); i++) {%>
						<div class="col-2">
							<a href="<%=oclist.get(i).getOfficialchannel_link() %>">
								<i class="fab fa-<%=oclist.get(i).getOfficialchannel_icon_name() %>" style="font-size: 4vw; color: black;"></i>
							</a>
						</div>
						<%} %>
						<div class="container text-center mt-5">
							<p class="text-danger">공식 채널 Data가 없습니다. Data를 추가해 주세요.</p>
							<a href="${pageContext.request.contextPath }/insert/m_officialchannel_insert_form.jsp">추가하러 가기</a>
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
						<%
	               			// 모든 뮤직비디오 정보 가져오기
							List<N_PlaylistDto> pllist=N_PlaylistDao.getInstance().getList(new N_PlaylistDto());
		               	%>
		               	<%for(int i=0; i<pllist.size(); i++) {%>
							<div class="col-3">
								<div class="card">
									<img src="${pageContext.request.contextPath }/image/<%=pllist.get(i).getImage_name() %>" alt="<%=pllist.get(i).getImage_name() %>" class="card-img-top" />
									<div class="card-body">
										<h5 class="card-title">
											<a href="${pageContext.request.contextPath }/playlist/some.jsp?num<%=pllist.get(i).getPlaylist_id()%>">
												<%=pllist.get(i).getPlaylist_title() %>
											</a>
										</h5>
									</div>
								</div>
							</div>
							<%} %>
							<div class="container text-center mt-5">
								<p class="text-danger">플레이리스트 Data가 없습니다. Data를 추가해 주세요.</p>
								<a href="${pageContext.request.contextPath }/insert/m_playlist_insert_form.jsp">추가하러 가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- PlayList Close -->
			<!-- Artist -->
			<%
			 	//모든 아티스트 정보 가져오기
				List<ArtistDto> ArtistInfolist = ArtistDao.getinstance().getList(new ArtistDto());
			%>
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
					<%
               			// 모든 뮤직비디오 정보 가져오기
						List<N_ArtistDto> atlist=N_ArtistDao.getInstance().getList(new N_ArtistDto());
	               	%>
	               	<%for(int i=0; i<atlist.size(); i++) {%>
						<div class="col-3">
							<a href="${pageContext.request.contextPath }/artist_info/some.jsp">
								<img class="img-fluid" src="${pageContext.request.contextPath }/image/<%=atlist.get(i).getImage_name() %>" alt="<%=atlist.get(i).getImage_name() %>" />
							</a>
						</div>
					<%} %>
					<div class="container text-center mt-5">
						<p class="text-danger">아티스트 Data가 없습니다. Data를 추가해 주세요.</p>
						<a href="${pageContext.request.contextPath }/insert/m_artist_insert_form.jsp">추가하러 가기</a>
					</div>
					</div>
				</div>
			</div>
			<div class="container" style="text-align: center;">
				<div class="col mt-4">
					<a href="${pageContext.request.contextPath }/artist_info/list.jsp" style="color: gray">전체보기<i class="fas fa-caret-right"></i></a>
				</div>
			</div>
			<!-- Artist Close-->
			<!-- News Letter -->
			<div class="container mt-5" style="text-align: center">
				<div class="row">
					<div class="col">
						<h3>개노답뮤직 뉴스레터 구독</h3>
					</div>
					<div class="col">
						<p style="font-size: 14px; color: #7c7c7c; line-height: 1.1; text-align: left; letter-spacing: -1px;">
							개노답뮤직 아티스트와 최신 앨범 소식, <br />이벤트 뉴스 등을 빠르게 이메일로 받아보세요.</p>
					</div>
					<!-- Button trigger modal -->
					<div class="col">
						<button type="button" class="btn btn-dark" data-toggle="modal" data-target="#staticBackdrop">구독</button>
					</div>
					<!-- Button trigger modal close-->
				</div>
			</div>
			<!-- News Letter Modal-->
			<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">뉴스레터 구독신청</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="container">
								<p style="text-align: left;">Warner Music Korea 뉴스레터 구독을 위해
									다음과 같이 귀하의 개인정보를 수집합니다. 수집된 개인정보는 뉴스레터 발송 이외의 목적으로는 사용되지 않습니다.
									귀하는 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으며, 이 경우 뉴스레터 발송을 신청할 수 없습니다.</p>
								<p style="text-align: left;">
									<strong>개인정보 수집 및 이용 동의</strong>
								</p>
								<ul style="text-align: left;">
									<li>개인정보 수집 목적 : Warner Music Korea 뉴스레터 발송</li>
									<li>개인정보 수집 항목 : 이메일 주소</li>
									<li>보유 이용 기간 : 구독수신거부 전까지</li>
								</ul>
								<p style="text-align: left;">
									<label> <input type="checkbox" id="chkbox" class="chkbox" /> 
										<span>위 내용에 동의 합니다.</span> 
										<span class="email"> <input type="email" placeholder="Email" /></span>
									</label>
								</p>
							</div>
						</div>
						<div class="modal-footer">
							<form action="#" method="post">
								<button type="submit" id="subscbtn" class="btn btn-dark" data-dismiss="modal">신청</button>
							</form>
						</div>
						</div>
					</div>
				</div>
			</div>
			<!-- News Letter Modal Close-->
			<!-- News Letter close-->
			<!-- Instagram Feed -->
			<div class="container mt-5" style="text-align: center">
				<p style="font-size: 12px; color: #a3a3a3; line-height: 1; text-align: center; letter-spacing: 0px;">인스타그램
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