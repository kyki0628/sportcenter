<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠센터</title>

<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
	integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
	integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
	crossorigin="anonymous"></script>

<style type="text/css">
#headbg {
	background: url('images/football.jpg') no-repeat center fixed;
	background-size: cover;
	height: 150pt;
}

.head1 {
	font-size: 20pt;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#ab')
				.ready(
						function() {
							$('#menus')
									.html(
											"<div align='center'><font size='20px'>이용수칙</font><br><img src='images/ico-home.gif'><font>예약하기>이용수칙</font><hr width='800px'><img src='images/sub.jpg'></div>");
						});
		$('#ab')
				.click(
						function() {
							$('#menus')
									.html(
											"<div align='center'><font size='20px'>이용수칙</font></div><br><hr><img src='images/sub.jpg'>");
						});
		$('#ab1')
				.click(
						function() {
							$('#menus')
									.html(
											"<form id='menu1'><h1 align='center'>About Me 1은 여기</h1><img src='images/goal.jpg' style='height:65%;width:65%;'></form>")
						});
		$('#ab2')
				.click(
						function() {
							$('#menus')
									.html(
											"<form id=\"menu2\"><h1 align='center'>About Me 2는 여기</h1><img src=\"images/football2.jpg\" style=\"height:65%;width:65%;\"></form>")
						});
		$('#ab4')
				.click(
						function() {
							$('#menus')
									.html(
											"<a href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\" target=\"_blank\"><img width=\"800\" height=\"600\" src=\"https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=477590&MY=1120840&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo\" style=\"border:1px solid #ccc\"></a><div class=\"hide\" style=\"overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;\"><strong style=\"float: left;\"><img src=\"//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png\" width=\"72\" height=\"16\" alt=\"카카오맵\"></strong><div style=\"float: right;position:relative\"><a style=\"font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000\" target=\"_blank\" href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\">지도 크게 보기</a></div></div>")
						});
		$('#ab3').click(function() {
			$.ajax({
				url : 'CenterReservationtable.jsp',
				success : function(data) {
					$('#menus').html(data);
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="container-fluid" id="headbg" align="center"
		style="padding-top: 50pt">
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<font style="color: white; font-size: 50px">예약화면</font>
			</div>
			<div class="col dropdown">
				<button type="button" class="btn btn-danger dropdown-toggle"
					data-toggle="dropdown">
					<font style="align: right; color: white;">경기장 선택</font>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">축구장</a> <a class="dropdown-item"
						href="#">농구장</a> <a class="dropdown-item" href="#">야구장</a> <a
						class="dropdown-item" href="#">수영장</a> <a class="dropdown-item"
						href="#">태니스장</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-sm bg justify-content-center"
			style="background-color: #2F3E46; margin-left: -15px; margin-right: -15px;">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 3</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Dropdown link </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div></li>
			</ul>
		</nav>
	</div>
	<div style="background-color: lightgray; padding-bottom: 50px;">
		<div class="container"
			style="margin-left: 0px; height: 100%;">
			<div class="row">
				<div class="col-sm-4" style="background-color: #26A65B;">
					<!-- carousel시작 -->
					<h2>새로운 소식</h2>
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox" align="center">
							<div class="item active">
								<h4>
									코로나 바이러스<br> <span style="font-style: normal;">
										예방수칙:1, 2, 3, 4...</span>
								</h4>
							</div>
							<div class="item">
								<h4>
									새로운 시설 개설<br> <span style="font-style: normal;">볼링장:
										1, 2, 3, 4, 5, ...</span>
								</h4>
							</div>
							<div class="item">
								<h4>
									국가 시설 평가<br> <span style="font-style: normal;">2020년
										최고의 시설</span>
								</h4>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>

					<!-- 왼쪽 메뉴바 -->
					<h3>
						<button id="ab" class="btn btn-primary btn-block"
							style="background-color: #2F3E46;">메인</button>
					</h3>
					<h3>
						<button id="ab1" class="btn btn-primary btn-block">대관 현황</button>
					</h3>
					<h3>
						<button id="ab2" class="btn btn-primary btn-block">About
							Me 2</button>
					</h3>
					<h3>
						<button id="ab3" class="btn btn-primary btn-block">예약 화면</button>
					</h3>
					<h3>
						<button id="ab4" class="btn btn-primary btn-block">오시는 길</button>
					</h3>
					<ul class="nav nav-pills flex-column">
						<li class="nav-item"><a class="nav-link active" href="#">Active</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
						</li>
					</ul>
				</div>

				<!-- 메인 내용 표시되는 곳 -->
				<div id="menus" class="col-sm-8"
					style="padding-top: 20px; width: 780px"></div>

			</div>
		</div>
	</div>
	<div align="center">
		<jsp:include page="Footter.jsp" />
	</div>
</body>
</html>