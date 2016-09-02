<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@include file="../include/header.jsp"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>SSGSSG LOGIN PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
#bob{
	top:"200px";
	align:middle;
}
#top2 {width:1200px;}
address{font:bold normal 100% "NGothic",Arial; padding:10px;
		color:#eee;text-align:center;}
#footer{position:fixed; bottom:0; width:100%; height:30px; background-color:#123456; clear:both;}
</style>
</head>
<center>
<body>
	<script>
		$(function() {
			$("logingood").submit(function() {
				if ($("#Mem_ID").val() == "") {
					alert("ID를 입력해주세요");
					$("#MEM_ID").focus();
					return false;
				}
				if ($("#Mem_PW").val() == "") {
					alert("비밀번호를 입력해주세요");
					$("#MEM_PW").focus();
					return false;
				}
			});
			$("#join").click(function() {
				location.href = "/Project/mem/Joinform.jsp"
			});
		})
	</script>
<div id="top2">
	<form name="logingood" action="/Project/MemberLoginAction.me" autocomplete="on">
			<div id="bob">
			<br><br><br>
				<label>아이디</label> &nbsp;
				<label><input type="text" width="20px" name="Mem_ID" id="Mem_ID" class="form-control" value=""/></label><br>
				<label>비밀번호 </label> 
				<label> <input type="password" width="20px" name="Mem_PW" id="Mem_PW" class="form-control" value=""/></label>
				<br><br><label><input type="submit" value="로그인" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" name="join" id="join" value="회원가입" class="btn btn-primary"></label> 
	</div>
	</form><br><br><br><br><br><br><br><br>
	</center>
	<div id="footer">
			<address>
				손창호/김병수/정재홍/김진수의 맞춤형 카드 서비스
			</address>
		</div>
		</div>
</body>

</html>

