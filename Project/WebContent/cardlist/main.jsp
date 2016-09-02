<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>	
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
#btn1{
 	font-weight: bold;
	color: #F6F6F6;
	padding: 5px;
	text-align:center;
	font-size: 24px;
}

</style>
</head>
<center>
<body>
<br><br><br><br><br>
<input id="btn1" class="btn btn-info" type="button" value="나의 취미에 따른 맞춤형 카드" onClick="location.href='/Project/MemberViewAction.me'">
<br><br><br><br><br><input id="btn1" class="btn btn-info" type="button" value="나의 이용 실적에 따른 맞춤형 카드" onClick="location.href='/SsgSsg/MemberViewAction.me'">
</body>
</center>
</html>