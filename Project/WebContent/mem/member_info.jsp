<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="net.mem.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>	

<%--
	MemberBean member=(MemberBean)request.getAttribute("member");
--%>

<html>
<head>
<title>회원 정보 보기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
<form method="post" action="/Project/MemberDelete.me">
	<%-- <input type=hidden name="Mem_ID" value="${member.getMem_id()}"> --%>
	<center>
		<h1>회원 정보 보기</h1>
		<table border=1 width=300>
			<tr align=center>
				<td colspan=1>아이디 </td>
				<td colspan=2>
					<%--member.getMEMBER_ID() --%> ${member.getMem_id()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>이름 </td>
				<td colspan=2>
					<%--member.getMEMBER_NAME() --%> ${member.getMem_name()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>성별 </td>
				<td colspan=2>
					<%--member.getMEMBER_AGE() --%> ${member.getMem_gender()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>생년월일 </td>
				<td colspan=2>
					<%--member.getMEMBER_GENDER() --%> ${member.getMem_jumin1()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>핸드폰번호 </td>
				<td colspan=2>
					<%--member.getMEMBER_EMAIL() --%>
					${member.getMem_phone1()}-${member.getMem_phone2()}-${member.getMem_phone3()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>선호은행 </td>
				<td colspan=2>
					<%--member.getMEMBER_GENDER() --%> ${member.getMem_bank()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>소지카드 </td>
				<td colspan=2>
					<%--member.getMEMBER_GENDER() --%> ${member.getMem_card()}
				</td>
			</tr>
			<tr align=center>
				<td colspan=1>가입날짜 </td>
				<td colspan=2>
					<%--member.getMEMBER_GENDER() --%> ${member.getMem_date()}
				</td>
			</tr>

			<tr align=center>
				<td colspan=1><input type="hidden"></a></td>
				<td colspan=1><input type="submit" value="탈퇴하기" name="delete"
					id="delete"></a></td>
				<td colspan=1><input onclick="history.go(-1)" type="button" value="돌아가기" name="button"
					id="reset"></a></td>
			</tr>
		</table>
	</center>
</form><br><br><br>
</center>
<div id="footer">
			<address>
				손창호/김병수/정재홍/김진수의 맞춤형 카드 서비스
			</address>
		</div>
</div>
</body>

</html>