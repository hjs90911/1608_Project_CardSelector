<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
//	int num=Integer.parseInt(request.getParameter("num"));
//	String nowpage = request.getParameter("page");
%>
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

</head>
<body>
<form name="deleteForm" action="./MemberDeleteAction.me" method="post">
<%-- <input type=hidden name="Mem_ID" value="${member.}"> --%>
<table border=1 align=center>
<tr>
	<td>
		<font size=2>비밀번호 : </font>
	</td>
	<td>
		<input name="Mem_PW" id="Mem_PW" type="password">
	</td>
</tr>
<tr>
	<td colspan=2 align=center>
		<input type=submit value="삭제">
		<input type=button value="취소" onClick="history.go(-1)">
	</td>
</tr>
</table>
</form>
</body>
</html>