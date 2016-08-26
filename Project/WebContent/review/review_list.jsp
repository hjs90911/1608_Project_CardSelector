<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.review.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>리뷰</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
.star_rating {
	font-size: 20px;
	letter-spacing: 0; color : #FFD700;
	text-decoration: none;
	color: #FFD700
}

.star_rating a {
	
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #FFD700;
}
</style>
<script>
	$(document).ready(function() {
		$("form").submit(function() {
			if ($("input[name=review_subject]").val() == "") {
				alert("제목을 입력하세요.");
				$("input[name=review_subject]").focus();
				return false;
			} else if ($("textarea[name=review_content]").val() == "") {
				alert("내용을 입력하세요.");
				$("textarea[name=review_content]").focus();
				return false;
			} else {	
				alert("리뷰가 등록되었습니다.");
			}
		});
	});
</script>
</head>

<body>
	<h1 align="center">리뷰</h1>
	<!-- 게시판 리스트 -->
	<form method="post" action="/Project/ReviewWrite.re">
		<table align="center" width="600px" border="1" cellpadding="0" cellspacing="0">
			<tr valign="middle" bordercolor="#333333" onmouseover="this.style.backgroundColor='F8F8F8'"
				onmouseout="this.style.backgroundColor=''">
				<td class="star_rating" align="center" rowspan="2" width="80px"><select
					class="star_rating" name="star_rate">
						<option value="5">★★★★★</option>
						<option value="4">★★★★</option>
						<option value="3">★★★</option>
						<option value="2">★★</option>
						<option value="1">★</option>
				</select></td>
				<td align="center" style="font-family: Tahoma" width="430px"><input
					name="review_subject" type="text" placeholder="제목" style="width: 98.5%; height: 100%"></td>
				<td align="center" style="font-family: Tahoma" rowspan="2" width=80px><input
					type="submit" value="등록" style="width: 80px; height: 75px;"></td>
			</tr>

			<tr>
				<td><textarea name="review_content" rows="3" cols="48" placeholder="내용"
						style="overflow: hidden"></textarea></td>
			</tr>
		</table>
	</form>
	<br>

	<table align="center" width="600px" border="1" cellpadding="0" cellspacing="0">
		<%
			//if(listcount > 0){
		%>

		<!-- 레코드가 있으면 -->
		<c:if test="${listcount > 0 }">

			<!-- 화면 출력 번호 -->
			<c:set var="num" value="${listcount-(page-1)*10}" />

			<c:forEach var="r" items="${reviewlist}">

				<tr valign="middle" bordercolor="#333333" onmouseover="this.style.backgroundColor='F8F8F8'"
					onmouseout="this.style.backgroundColor=''">

					<td align="center" width="130px" style="font-size: 20px; color: #FFD700"><c:forEach
							begin="1" end="${r.star_rate }">
							★
						</c:forEach> <c:forEach begin="1" end="${5 - r.star_rate }">
							☆
						</c:forEach></td>
					<td style="font-family: Tahoma" width="370px">
						<div style="font-size: 14pt">${r.review_subject }</div>
						<div style="font-size: 10pt">${r.review_content }</div>
					</td>
					<td style="font-family: Tahoma" align="center">
						<div style="font-size: 12pt">${r.review_id}</div>
						<div style="font-size: 8pt; color: gray;">${r.review_date}</div>
					</td>
				</tr>

			</c:forEach>
			<%-- </c:if> --%>
			<%
				//}// for end
			%>



			<!-- -------------------------------------------------페이징 처리------------------------------------------------- -->

			<tr align=center height=20>
				<td colspan=7 style="font-family: Tahoma; font-size: 10pt;">
					<%--if(nowpage<=1){ --%> <!-- [이전]&nbsp; --> <%--}else{ --%> <%-- <a href="./BoardList.bo?page=<%=nowpage-1 %>">[이전]</a>&nbsp; --%>
					<%--} --%> <c:if test="${page <= 1 }">
				[이전]&nbsp;
			</c:if> <c:if test="${page > 1 }">
						<a href="./BoardList.bo?page=${page-1}">[이전]</a>&nbsp;
			</c:if> <%--for(int a=startpage; a<=endpage; a++){
				if(a==nowpage){ // 현재 페이지 --%> <%-- [<%=a %>] --%> <%--}else{ --%> <%-- <a href="./BoardList.bo?page=<%=a %>">[<%=a %>]</a>&nbsp; --%>
					<%--} --%> <%--} --%> <c:forEach var="a" begin="${startpage}" end="${endpage}">
						<c:if test="${a == page }">
					[${a}]
				</c:if>
						<c:if test="${a != page }">
							<a href="./BoardList.bo?page=${a}">[${a}]</a>&nbsp;
				</c:if>
					</c:forEach> <%--if(nowpage>=maxpage){ --%> <!-- [다음] --> <%--}else{ --%> <%-- <a href="./BoardList.bo?page=<%=nowpage+1 %>">[다음]</a> --%>
					<%--} --%> <c:if test="${page >= maxpage }">
				[다음] 
			</c:if> <c:if test="${page < maxpage }">
						<a href="./BoardList.bo?page=${page+1}">[다음]</a>
					</c:if>
				</td>
			</tr>

		</c:if>
		<%
			//    }else{
		%>

		<!-- 레코드가 없으면 -->
		<c:if test="${listcount == 0 }">
			<tr align="center" valign="middle">
				<td colspan="4">MVC 게시판</td>
				<td align=right><font size=2>등록된 글이 없습니다.</font></td>
			</tr>
		</c:if>

		<%
			//	}
		%>

	</table>

</body>
</html>