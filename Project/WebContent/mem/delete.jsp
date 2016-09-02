<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
//	int num=Integer.parseInt(request.getParameter("num"));
//	String nowpage = request.getParameter("page");
%>
<%@include file="../include/header.jsp"%>	

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="net.mem.db.*"%>
<html>
<head>
<title>정보 지우기</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	
	<script>
		$(document).ready(function(){
			$("form").submit(function(){				
				if($("#Mem_PW").val()==""){
					alert("비밀번호를 입력 하세요.");
					$("#Mem_PW").focus();
					return false;
				}		
			});			
		});	
	</script>
<style>
#top2 {width:1200px;}
address{font:bold normal 100% "NGothic",Arial; padding:10px;
		color:#eee;text-align:center;}
#footer{position:fixed; bottom:0; width:100%; height:30px; background-color:#123456; clear:both;}
</style>
</head>
<center>
<body>
<div id="top2">
<form name="deleteForm" action="./MemberDeleteAction.me" method="post">
<%-- <input type=hidden name="Mem_ID" value="${member.}"> --%>
<br><br><br>
<table border=1 align=center>
<label>비밀번호</label> &nbsp;
				<label><input type="password" width="20px" name="Mem_PW" id="Mem_PW" class="form-control" value=""/></label><br>
		<label></label> &nbsp; &nbsp; &nbsp;<input type=submit value="삭제"class="btn btn-warning">&nbsp;&nbsp;
		<input type=button value="취소" onClick="history.go(-1)"class="btn btn-warning">

</table>
</form>
<br><br><br><br><br><br><br><br><br><br><br><br>
</center>
<div id="footer">
			<address>
				손창호/김병수/정재홍/김진수의 맞춤형 카드 서비스
			</address>
		</div>
</div>
</body>

</html>