<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>스포츠센터게시판</title>

<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<style type="text/css">
</style>
<script type="text/javascript">
	
</script>
</head>

<body>
	<jsp:include page="CenterHeader.jsp" />
	<!-- 메인 내용 표시되는 곳 -->
	<div id="menus" class="col-sm-8"
		style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
		<table class="table">
			<tr>
				<td colspan="2">총10건 &nbsp;&nbsp;2/12</td>
				<td colspan="4" align="right"><select><option>제목</option>
						<option>작성자</option></select><input type="text"></td>
			</tr>
			<tr>
				<td>번호</td>
				<td width="20%">제목</td>
				<td>작성자</td>
				<td>작성 날짜</td>
				<td>카테고리</td>
				<td>조회수</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>1</td><td>blah..blah..blah</td><td>blah</td><td>blah</td><td>blah</td><td></td>
			<!-- 게시글 여기 -->
			</tr>
			
			
			<tr>
				<td colspan="6">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1" aria-disabled="true">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>
					</nav>
				</td>
			</tr>
		</table>




	</div>


	<div id="menus" class="col-sm-2"
		style="padding-top: 20px; background-color: rgb(89, 102, 114);">
		<br>
		<div id="carouselExampleControls1" class="carousel slide"
			data-ride="carousel" style="width: 250px; height: 600px;">
			<div class="carousel-inner">
				<div class="carousel-item active" align="center">
					<img src="images/football2.jpg"
						style="width: 280px; height: 600px;">
				</div>
				<div class="carousel-item" align="center">
					<img src="images/goal.jpg" style="width: 300px; height: 600px;">
				</div>
				<div class="carousel-item" align="center">
					<img src="images/place/경기장야경.jpg"
						style="width: 280px; height: 600px;">
				</div>
				<div class="carousel-item" align="center">
					<h1>
						광고문의:<br> 000-0000-0000
					</h1>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls1"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls1"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a> <Br>
		</div>
	</div>
	</div>
	</div>
	</div>
	<div align="center">
		<jsp:include page="Footter.jsp" />
	</div>
</body>
</html>