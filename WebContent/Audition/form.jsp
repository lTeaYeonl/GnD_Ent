<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<style>
.main {
    position: relative;
    max-width: 100%;
    margin: 0 auto;
    height: auto;
    overflow: hidden;
    padding-bottom: 0;
	};

    #header_main {
    position: absolute;
    max-width: 1200px;
    /*가운데정렬법*/
    margin: 0 auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: auto;
    overflow: hidden;
    text-align: center
}

    #header_main .main_logo {
        position: absolute;
        width: 100px;
        height: 36px;
        top: 20px;
        cursor: pointer;
        z-index: 1113;
    }

        #header_main .main_logo img {
            width: 100%;
        }
</style>
</head>
<body>
<div class="main">
	<div class="header_main">
		<a href="">
			<div class="main_logo" alt="gnd엔터테인먼트">
			</div>
		</a>
	</div>

	<div class="sub_bg" style="background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6T57wnTPfO86zfCBdRqumXjKZedkYaDX_TA&usqp=CAU) 50%">
		<div class="bk_bg"></div>
			<ul class="sub_top">
				<li class="sub_tt">AUDITION</li>
			</ul>
	</div>
</body>
</html>