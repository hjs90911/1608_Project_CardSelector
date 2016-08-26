<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.review.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function(){
		$("#review").click(function(){
			window.open("/Project/ReviewList.re?card_num=1", "popup_review", "width=700, height=500, scrollbars=yes");
		});
		$("#apply").click(function(){
			window.open("/card_application/card_application.jsp","","width=400, height=400");
		});
		$("#cardlistall").click(function() {
			location.href="/Project/CardAllAction.bo";
		});
	});
</script>
</head>
<body>

<input type="button" value="리뷰보기" id="review">
<input type="button" value="카드신청하기" id="apply">
<input type="button" value="전체 카드 목록" id="cardlistall">
<h2 style="color: #FFD700;">★☆☆</h2>
	test
</body>
</html>