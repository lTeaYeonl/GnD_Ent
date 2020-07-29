<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>artist_subscribe.jsp</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-grid.css" />
<!-- fontawesome 에서 제공해주는 icon을 사용하기 위해 로딩  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous /">

<meta charset="UTF-8">
</head>
<body>
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<!-- Script Close -->
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
					<a
						href="${pageContext.request.contextPath}/artist/artist_list/artist_info/at_tones-and-i.jsp">
						<img class="img-fluid"
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
			<a href="${pageContext.request.contextPath}/artist/artist_list/artist_list.jsp" style="color: gray">전체보기 <i
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
				<!-- Button trigger modal -->
				<div class="container">
				<button type="button" class="btn btn-dark" data-toggle="modal"
					data-target="#staticBackdrop">구독</button>
				</div>
				<!-- News Letter Modal -->
				<div class="modal fade" id="staticBackdrop" data-backdrop="static"
					data-keyboard="false" tabindex="-1" role="dialog"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">뉴스레터 구독신청</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
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
										<label> 
											<input type="checkbox" id="confirm" class="confirm" /> 
											<span>위 내용에 동의 합니다.</span> 
											<span class="email">
												<input type="email" placeholder="Email" />
											</span>
										</label>
									</p>
								</div>
							</div>
							<div class="modal-footer">
								<form action="resetprocess.php">
									<button type="submit" id="subscbtn" class="btn btn-dark" data-dismiss="modal">신청</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<script>
				$('#subscbtn').click(function () {
				       if (!$('#confirm').is(':checked')) {
				           alert('not checked');
				           return false;
				       }
				});
				</script>
				<!-- News Letter Modal Close-->
			
</body>
</html>