<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>	

<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>체크박스 리스트임</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
/* 폰트 */
a {
	font-weight: bold;
	color: #269287;
	padding: 5px
}

a:hover {
	border-bottom: 1px dashed;
	color: #C3E518;
	padding: 5px
}

/* 월 카드 소비금액 */
input[type=radio] {
	display: none;
}

input[type=radio]+label {
	display: inline-block;
	margin: -2px;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #fff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #fff, #e6e6e6);
	background-image: -o-linear-gradient(top, #fff, #e6e6e6);
	background-image: linear-gradient(to bottom, #fff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #ccc;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

input[type=radio]:checked+label {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	background-color: #D1B2FF;
}
/* 할인혜택 */
input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	margin: -2px;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #fff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #fff, #e6e6e6);
	background-image: -o-linear-gradient(top, #fff, #e6e6e6);
	background-image: linear-gradient(to bottom, #fff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #ccc;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}
address{font:bold normal 100% "NGothic",Arial; padding:10px;
		color:#eee;text-align:center;}
#footer{position:fixed; bottom:0; width:100%; height:30px; background-color:#123456; clear:both;}
input[type=checkbox]:checked+label {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	background-color: #D1B2FF;
}
</style>



<!-- 카드 선택 유효성 검사 -->
<script>
	$(function() {
		$("input[name='checkboxes']:checkbox")
				.submit(
						function() {// 체크박스들이 변경됬을때
							var cnt = "3";
							if (cnt == $("input[name='checkboxes']:checkbox:checked").length) {
								$(
										"input[name='checkboxes']:checkbox:not(:checked)")
										.attr("disabled", "disabled");
							} else {
								$("input[name='checkboxes']:checkbox")
										.removeAttr("disabled");
							}
						});

	});
</script>

</head>
<center>
<body>

	<div>
		<!-- <form action="/Project/CardAllAction.bo?card_ad=osv" method="get" enctype="multipart/form-data" name="boardform"> -->

		<form id="card" action="/Project/CardAddAction.bo" method="post">
			<div class="gender" name="gender">
				<h4>
					<a>성별</a>
				</h4>
				<input type="radio" id="radio1" name="radio" value="all"> <label
					for="radio1">남자</label> <input type="radio" id="radio2"
					name="radio" value="false"> <label for="radio2">여자</label><br>
			</div>
			<br>
			<br>
			<div class="consumption" name="consumption">
				<h4>
					<a>월 카드 이용금액</a>
				</h4>
				<input type="radio" id="radio3" name="radios" value="all"> <label
					for="radio3">30만원 미만</label> <input type="radio" id="radio4"
					name="radios" value="false"> <label for="radio4">30만원
					이상</label> <input type="radio" id="radio5" name="radios" value="false">
				<label for="radio5">60만원 이상</label> <input type="radio" id="radio6"
					name="radios" value="false"> <label for="radio6">100만원
					이상</label>
			</div>
			<br>
			<br>

			<div>
				<h4>
					<a>혜택</a>
				</h4>
				<input type="checkbox" id="checkbox1" name="checkboxes" value="mart">
				<label for="checkbox1"><img src="images/ico_mart_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox2" name="checkboxes" value="m"> <label
					for="checkbox2"><img src="images/ico_mobile_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox3" name="checkboxes" value="o"> <label
					for="checkbox3"><img src="images/ico_oil_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox4" name="checkboxes" value="s"> <label
					for="checkbox4"><img src="images/ico_shopping_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox5" name="checkboxes" value="t"> <label
					for="checkbox5"><img src="images/ico_traffic_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox6" name="checkboxes" value="food"> <label
					for="checkbox6"><img src="images/ico_food_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox7" name="checkboxes" value="beverage"> <label
					for="checkbox7"><img src="images/ico_beverage_off.png"
					width="60" height="80"></label><br> <input type="checkbox"
					id="checkbox8" name="checkboxes" value="cashback"> <label
					for="checkbox8"><img src="images/ico_cashback_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox9" name="checkboxes" value="point"> <label
					for="checkbox9"><img src="images/ico_point_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox10" name="checkboxes" value="car"> <label
					for="checkbox10"><img src="images/ico_car_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox11" name="checkboxes" value="v"> <label
					for="checkbox11"><img src="images/ico_movie_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox12" name="checkboxes" value="concert"> <label
					for="checkbox12"><img src="images/ico_concert_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox13" name="checkboxes" value="mileage"> <label
					for="checkbox13"><img src="images/ico_mileage_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox14" name="checkboxes" value="tour"> <label
					for="checkbox14"><img src="images/ico_tour_off.png"
					width="60" height="80"></label><br> <input type="checkbox"
					id="checkbox15" name="checkboxes" value="woman"> <label
					for="checkbox15"><img src="images/ico_woman_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox16" name="checkboxes" value="baby"> <label
					for="checkbox16"><img src="images/ico_baby_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox17" name="checkboxes" value="edu"> <label
					for="checkbox17"><img src="images/ico_edu_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox18" name="checkboxes" value="book"> <label
					for="checkbox18"><img src="images/ico_book_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox19" name="checkboxes" value="medical"> <label
					for="checkbox19"><img src="images/ico_medical_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox20" name="checkboxes" value="free"> <label
					for="checkbox20"><img src="images/ico_free_off.png"
					width="60" height="80"></label> <input type="checkbox"
					id="checkbox21" name="checkboxes" value="golf"> <label
					for="checkbox21"><img src="images/ico_golf_off.png"
					width="60" height="80" alt="교통"></label><br> <input
					type="checkbox" id="checkbox22" name="checkboxes" value="park">
				<label for="checkbox22"><img src="images/ico_park_off.png"
					width="60" height="80" alt="교통"></label> <input type="checkbox"
					id="checkbox23" name="checkboxes" value="business"> <label
					for="checkbox23"><img src="images/ico_business_off.png"
					width="60" height="80" alt="교통"></label> <input type="checkbox"
					id="checkbox24" name="checkboxes" value="life"> <label
					for="checkbox24"><img src="images/ico_life_off.png"
					width="60" height="80" alt="교통"></label> <input type="checkbox"
					id="checkbox25" name="checkboxes" value="finance"> <label
					for="checkbox25"><img src="images/ico_finance_off.png"
					width="60" height="80" alt="교통"></label> <input type="checkbox"
					id="checkbox26" name="checkboxes" value="membership"> <label
					for="checkbox26"><img src="images/ico_membership_off.png"
					width="60" height="80" alt="교통"></label> <br>
				<br>
				<br> <input type="submit" value="완료" class="btn btn-primary">
				<input type="reset" value="취소" class="btn btn-danger">
			</div>

		</form>
		</center>
		
		<br><br><br>
<div id="footer">
			<address>
				손창호/김병수/정재홍/김진수의 맞춤형 카드 서비스
			</address>
		</div>
	</div>

</body>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset=UTF-8">
<title>체크박스 리스트임</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
/* 폰트 */
a {
	font-weight: bold;
	color: #269287;
	padding: 5px
}

a:hover {
	border-bottom: 1px dashed;
	color: #C3E518;
	padding: 5px
}

/* 월 카드 소비금액 */
input[type=radio] {
	display: none;
}

input[type=radio]+label {
	display: inline-block;
	margin: -2px;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #fff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #fff, #e6e6e6);
	background-image: -o-linear-gradient(top, #fff, #e6e6e6);
	background-image: linear-gradient(to bottom, #fff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #ccc;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

input[type=radio]:checked+label {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	background-color: #e0e0e0;
}
/* 할인혜택 */
input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	margin: -2px;
	padding: 4px 12px;
	margin-bottom: 0;
	font-size: 14px;
	line-height: 20px;
	color: #333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #fff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #fff, #e6e6e6);
	background-image: -o-linear-gradient(top, #fff, #e6e6e6);
	background-image: linear-gradient(to bottom, #fff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #ccc;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

input[type=checkbox]:checked+label {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	background-color: #e0e0e0;
}
</style>



<!-- 카드 선택 유효성 검사 -->
<script>
	$(document)
			.ready(
					function($) {
						$("input[name='checkboxes']:checkbox")
								.change(
										function() {// 체크박스들이 변경됬을때
											var cnt = "3";
											if (cnt == $("input[name='checkboxes']:checkbox:checked").length) {
												$(
														"input[name='checkboxes']:checkbox:not(:checked)")
														.attr("disabled",
																"disabled");
											} else {
												$(
														"input[name='checkboxes']:checkbox")
														.removeAttr("disabled");
											}
										});

					});
</script>

</head>
<body>

	<div>
		<!-- <form action="/Project/CardAllAction.bo?card_ad=osv" method="get" enctype="multipart/form-data" name="boardform"> -->

		<form id="card" action="/Project/CardAddAction.bo" method="post">
			<div class="gender" name="gender">
				<a>성별</a><br> <input type="radio" id="radio1" name="radio" value="all"> <label
					for="radio1">남자</label> <input type="radio" id="radio2" name="radio" value="false">
				<label for="radio2">여자</label><br>
			</div>
			<div class="consumption" name="consumption">
				<a>월 카드 이용금액</a><br> <input type="radio" id="radio3" name="radios" value="all">
				<label for="radio3">30만원 미만</label> <input type="radio" id="radio4" name="radios"
					value="false"> <label for="radio4">30만원 이상</label> <input type="radio" id="radio5"
					name="radios" value="false"> <label for="radio5">60만원 이상</label> <input
					type="radio" id="radio6" name="radios" value="false"> <label for="radio6">100만원
					이상</label>
			</div>

			<div>
				<a>혜택</a><br> <input type="checkbox" id="checkbox1" name="checkboxes" value="t">
				<label for="checkbox1"><img src="images/ico_traffic_off.png" width="60" height="80"
					title="교통"></label> <input type="checkbox" id="checkbox2" name="checkboxes" value="m">
				<label for="checkbox2"><img src="images/ico_mobile_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox3" name="checkboxes" value="o"> <label
					for="checkbox3"><img src="images/ico_oil_off.png" width="60" height="80"></label> <input
					type="checkbox" id="checkbox4" name="checkboxes" value="s"> <label for="checkbox4"><img
					src="images/ico_shopping_off.png" width="60" height="80"></label> <input type="checkbox"
					id="checkbox5" name="checkboxes" value="mart"> <label for="checkbox5"><img
					src="images/ico_mart_off.png" width="60" height="80"></label> <input type="checkbox"
					id="checkbox6" name="checkboxes" value="food"> <label for="checkbox6"><img
					src="images/ico_food_off.png" width="60" height="80"></label> <input type="checkbox"
					id="checkbox7" name="checkboxes" value="beverage"> <label for="checkbox7"><img
					src="images/ico_beverage_off.png" width="60" height="80"></label><br> <input
					type="checkbox" id="checkbox8" name="checkboxes" value="cashback"> <label
					for="checkbox8"><img src="images/ico_cashback_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox9" name="checkboxes" value="point"> <label
					for="checkbox9"><img src="images/ico_point_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox10" name="checkboxes" value="car"> <label
					for="checkbox10"><img src="images/ico_car_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox11" name="checkboxes" value="v"> <label
					for="checkbox11"><img src="images/ico_movie_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox12" name="checkboxes" value="concert"> <label
					for="checkbox12"><img src="images/ico_concert_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox13" name="checkboxes" value="mileage"> <label
					for="checkbox13"><img src="images/ico_mileage_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox14" name="checkboxes" value="tour"> <label
					for="checkbox14"><img src="images/ico_tour_off.png" width="60" height="80"></label><br>
				<input type="checkbox" id="checkbox15" name="checkboxes" value="woman"> <label
					for="checkbox15"><img src="images/ico_woman_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox16" name="checkboxes" value="baby"> <label
					for="checkbox16"><img src="images/ico_baby_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox17" name="checkboxes" value="edu"> <label
					for="checkbox17"><img src="images/ico_edu_off.png" width="60" height="80"></label> <input
					type="checkbox" id="checkbox18" name="checkboxes" value="book"> <label
					for="checkbox18"><img src="images/ico_book_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox19" name="checkboxes" value="medical"> <label
					for="checkbox19"><img src="images/ico_medical_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox20" name="checkboxes" value="free"> <label
					for="checkbox20"><img src="images/ico_free_off.png" width="60" height="80"></label>
				<input type="checkbox" id="checkbox21" name="checkboxes" value="golf"> <label
					for="checkbox21"><img src="images/ico_golf_off.png" width="60" height="80" alt="교통"></label><br>
				<input type="checkbox" id="checkbox22" name="checkboxes" value="park"> <label
					for="checkbox22"><img src="images/ico_park_off.png" width="60" height="80" alt="교통"></label>
				<input type="checkbox" id="checkbox23" name="checkboxes" value="business"> <label
					for="checkbox23"><img src="images/ico_business_off.png" width="60" height="80"
					alt="교통"></label> <input type="checkbox" id="checkbox24" name="checkboxes" value="life">
				<label for="checkbox24"><img src="images/ico_life_off.png" width="60" height="80"
					alt="교통"></label> <input type="checkbox" id="checkbox25" name="checkboxes" value="finance">
				<label for="checkbox25"><img src="images/ico_finance_off.png" width="60" height="80"
					alt="교통"></label> <input type="checkbox" id="checkbox26" name="checkboxes"
					value="membership"> <label for="checkbox26"><img
					src="images/ico_membership_off.png" width="60" height="80" alt="교통"></label> <br>
				<br>
				<br> <input type="submit" value="완료"> <input type="reset" value="취소">
			</div>

		</form>

	</div>

</body>

</html>