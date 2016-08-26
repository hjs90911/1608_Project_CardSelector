<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="net.card.db.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신용카드 전체 목록</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		$("#apply").click(function() {
			window.open("../card_application/card_application.jsp","","width=400, height=400");
		});
	});
</script>
<body>
<table align=center width=600 border="1" cellpadding="0" cellspacing="0">
<%
//if(listcount > 0){
%>

<!-- 레코드가 있으면 -->

	<tr align="center" valign="middle">
		<td colspan="5">신용카드 목록</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<td style="font-family:Tahoma;font-size:8pt;" width="8%" height="26">
			<div align="center">번호</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="25%">
			<div align="center">카드 종류</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="30%">
			<div align="center">혜택</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="14%">
			<div align="center">가입 신청</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="10%">
			<div align="center">리 뷰</div>
		</td>		
	</tr>
	
<%
	String r = "review";
	int i = 0;
%>
	
<c:forEach var="c" items="${cardlist}">	
	
	<% i = i+1; %>
	
	<script>
		$(function() {
			$(<%=r + i %>).click(function() {
				window.open("/Project/ReviewList.re?card_num=<%=i %>", "popup_review", "width=700, height=500, scrollbars=yes");
			});
		});
	</script>
	
	
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			<!-- 번호 출력 부분 -->
			<c:out value="${c.card_num}"/>				
			<!--<c:set var="num" value="${num-1}"/>-->					
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%--bl.getBOARD_NAME() --%></div>
				<img src="card/${c.card_image}"/>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%--bl.getBOARD_NAME() --%></div>
			<!--  	<c:out value="${c.card_ad}"/>	-->
			   <c:forTokens items="${c.card_name}" delims="/" var="cg">
                  ${cg}<br>
               </c:forTokens>
		</td>
		
		<td style="font-family:Tahoma;font-size:8pt;">			
			<div align="center"><button type="button" onclick="location.href=cardreview.bo?card_num">가입 신청</button>	
	        </div>	
	    </td> 
	    <td style="font-family:Tahoma;font-size:8pt;">  		
			<div align="center"><input type="button" id=<%=r + i %> value="리   뷰">	
            </div>			
	    </td>				
	</tr>
	
	</c:forEach>
	
</table>

</body>
</html>