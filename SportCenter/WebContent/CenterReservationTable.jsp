<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠센터 예약화면</title>

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

<!-- datefilter -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<style type="text/css">
#headbg {
	background: url('images/football.jpg') no-repeat center;
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

.ui-datepicker-trigger {
	cursor: pointer;
}

.hasDatepicker {
	cursor: pointer;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#ab4')
				.click(
						function() {
							$('#menus')
									.html(
											"<div align='center' width='400px' height='200px'><h2>오시는 길</h2><br><a href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\" target=\"_blank\"><img width=\"800\" height=\"600\" src=\"https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=477590&MY=1120840&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo\" style=\"border:1px solid #ccc\"></a><div class=\"hide\" style=\"overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;\"><strong style=\"float: left;\"><img src=\"//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png\" width=\"72\" height=\"16\" alt=\"카카오맵\"></strong><div style=\"float: right;position:relative\"><a style=\"font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000\" target=\"_blank\" href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\">지도 크게 보기</a></div></div></div>")
						});
	});

	$(function() {
		$("#price").html('<font style="color:red;"> 1234 </font>');
		$(".widget input[type=submit, .widget a, .widget button").button();
	});

	$(function() {
		$('input[name="dates"]').daterangepicker({
			autoApply : true,
			autoUpdateInput : false,
			locale : {
				cancelLabel : 'Clear'
			}
		});
		$('input[name="dates"]').on(
				'apply.daterangepicker',
				function(ev, picker) {
					$(this).val(
							picker.startDate.format('YYYY-MM-DD') + ' - '
									+ picker.endDate.format('YYYY-MM-DD'));
				});

		$('input[name="dates"]').on('cancel.daterangepicker',
				function(ev, picker) {
					$(this).val('');
				});

	});
	function list() {
		location.href = "CenterList.jsp";
	}
	function Calendar() {
		location.href = "CenterReservationCalendar.jsp";
	}
	function Rtable() {
		location.href = "CenterReservationTable.jsp";
	}
	function main() {
		location.href = "CenterReservation.jsp"
	}
</script>
</head>

<body>
	<jsp:include page="CenterHeader.jsp" />
	<!-- 메인 내용 표시되는 곳 -->
	<div id="menus" class="col-sm-8"
		style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
		<table style="column-width: 1000px;">
			<tr align="center">
				<td width="1000px"><font
					style="font-size: 30px; color: cadetblue">예약</font></td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>경기장</h4> <br> <select><option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;축구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;농구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수영장&nbsp;&nbsp;&nbsp;&nbsp;</option>
				</select> <br>
				</td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>입금자명</h4> <br> <input type="text">
				</td>
			</tr>
			<tr align="center" style="padding-top: 20">
				<td>
					<hr>
					<h4>사용인원</h4> <br> <input type="number" value="0" min="0">
				</td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>사용날자</h4> <br> <br> <input type="text" name="dates"
					style="width: 210px;">
				</td>
			</tr>
			<tr align="center">
				<td><hr>
					<h4>사용시간대</h4> <br>
					<table>
						<tr>
							<td>
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">08:00~10:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">00:00~12:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">12:00~14:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">14:00~16:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">16:00~18:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">18:00~20:00
									</label> <label class="btn btn-info"> <input type="checkbox"
										autocomplete="off">20:00~22:00
									</label>
								</div>
							</td>
						</tr>
					</table></td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>가격</h4> <br>
					<div id="total">
						<font color="blue">여기에 총 일수 + 시간을 표시</font>
					</div>
					<div id="price"></div>
				</td>
			</tr>
			<tr align="center">
				<td><hr>
					<div class="widget">
						<button>예약하기</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button>취소하기</button>
					</div></td>
			</tr>
		</table>
	</div>


	<div class="col-sm-2"
		style="padding-top: 20px; background-color: rgb(89, 102, 114);">
		<div id="carouselExampleControls1" class="carousel slide"
			data-ride="carousel" style="padding: 0px; width: 100%; height: 100%;">
			<div class="carousel-inner">
				<div class="carousel-item active" align="center">
					<img src="images/football2.jpg"
						style="width: 300px; height: 600px;">
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