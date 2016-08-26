<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="net.card.db.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//	List boardList=(List)request.getAttribute("boardlist");
//	int listcount=((Integer)request.getAttribute("listcount")).intValue();
//	int nowpage=((Integer)request.getAttribute("page")).intValue();
//	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
//	int startpage=((Integer)request.getAttribute("startpage")).intValue();
//	int endpage=((Integer)request.getAttribute("endpage")).intValue();

//	int number = listcount-(nowpage-1)*10;
%>

<html>
<head>
	<title>선택된 신용카드 목록</title>
</head>

<body>
<!-- 게시판 리스트 -->

<table align=center width=600 border="1" cellpadding="0" cellspacing="0">

	
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
	
	<%//int number = listcount-(nowpage-1)*10;
//		for(int i=0;i<boardList.size();i++){
//			BoardBean bl=(BoardBean)boardList.get(i);
	%>	 
	 
	<!-- 화면 출력 번호 -->		
			
	<c:forEach var="c" items="${cardlist}">	
	
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
			<div align="center"><button type="button" onclick="location.href=cardreview.bo?card_num">리   뷰</button>	
            </div>			
	    </td>				
	</tr>
	
	</c:forEach>
	
</table>

</body>
</html>