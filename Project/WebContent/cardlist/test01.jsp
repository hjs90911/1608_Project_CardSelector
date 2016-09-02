<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="ko">
<head>
<title>CSS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 
 
<style type="text/css">

 *{margin:0;padding:0;}li{list-style-type:none;}
img, fieldset{border:none;}li img, dd img{vertical-align:top;}
   @font-face{font-family:'NGothic'; src:url('font/NanumGothic.woff') format('woff');}
   @font-face{font-family:'NGothicB'; src:url('font/NanumGothicBold.woff') format('woff');}
   @font-face{font-family:'NGothicEB'; src:url('font/NanumGothicExtraBold.woff') format('woff');} 

body{font:13px "NGothic",Arial;background:#aaa;}

/* Layout */
 #wrapper{width:800px;margin:0 auto;background:#fff;}
#header{text-align:center;background:#fa0;color:#fff; }
 h1{font:bold 30px "휴먼모음T",Gungseo;padding:10px;text-align:center; size:50%;}
 h1 strong{font-size:300%;color:#ffd;} 
#container{float:left;width:100%;}
.cover{float:left;width:600px;}
.content{float:right;width:400px;background:#ddd;color:#123456;}
.sidemenu{float:left;width:200px;}
.aside{float:right;width:200px;}
#footer{clear:both;}

/* Detail */
ul li{list-style:none; float:left; margin-left:2;}

/* 메뉴 상단에 텝 기능 */
#css_tabs {
    font-family:'nanumgothic', '나눔고딕', 'malgun gothic', '맑은 고딕', 'dotum', '돋움', sans-serif
} 
/* 탭 선택 시 표시할 요소(div) 정의(1번 탭 선택 시 첫 번째 div 요소 표시) */
 #css_tabs input:nth-of-type(1), #css_tabs input:nth-of-type(1) ~ div:nth-of-type(1), #css_tabs input:nth-of-type(2), #css_tabs input:nth-of-type(2) ~ div:nth-of-type(2), #css_tabs input:nth-of-type(3), #css_tabs input:nth-of-type(3) ~ div:nth-of-type(3) {
   display:none 
} 
#css_tabs input:nth-of-type(1):checked ~ div:nth-of-type(1), #css_tabs input:nth-of-type(2):checked ~ div:nth-of-type(2), #css_tabs input:nth-of-type(3):checked ~ div:nth-of-type(3) {
 	display:block 
} 
/* 라벨 기본 스타일 지정 */
#css_tabs > label {
    display:inline-block;
    font-variant:small-caps;
    font-size:.9em;
    padding:5px;
    text-align:center;
    width:20%;
    line-height:1.8em;
    font-weight:700;
    border-radius:3px 3px 0 0;
    background:#eee;
    color:#777;
    border:1px solid #ccc;
    border-width:1px 1px 0
}
#css_tabs > label:hover {
    cursor:pointer
}
#css_tabs label[for=tab1] {
    margin-left:1.5em
}
/* 선택된 라벨, 커서를 올린 라벨 스타일 지정 */
#css_tabs input:nth-of-type(1):checked ~ label[for=tab1]:nth-of-type(1), #css_tabs > label[for=tab1] :hover {
    background:tomato;
    color:#fff
}
 #css_tabs input:nth-of-type(2):checked ~ label[for=tab2]:nth-of-type(2), #css_tabs > label[for=tab2]:hover {
    background:gold;
    color:#fff
}
#css_tabs input:nth-of-type(3):checked ~ label[for=tab3]:nth-of-type(3), #css_tabs > label[for=tab3]:hover {
    background:green;
    color:#fff
} 
/* 실제 내용이 담긴 div 요소 스타일 지정 */
 #css_tabs .tab1_content, #css_tabs .tab2_content, #css_tabs .tab3_content {
    padding:2em;
    border:1px solid #ddd;
    width:100%;
    height:100%
} 

address{font:bold normal 100% "NGothic",Arial;padding:10px;
		background:#123456;color:#eee;text-align:center;}
address a{color:#eee;}
/* header 기능 설정 */

.d1 {
    float: left;
    /*position: relative;
    left:0;
    top: 0;
    width: 5%;
    margin-right: 2%;
    padding: 20px 0;
    background-color: #59b1f6;
    color: white;
    text-align: center    */ 
}

.d2 {
    float: right;
    /* position: relative; 
    right: 0%;
    top:0;
    width: 15%;
    margin-right: 2%;
    padding: 3px 80;
    background-color: #59b1f6;
    color: white;
    text-align: right */
   
    
}

.d3 {
    float: right;
 	position: relative; 
    top: 230px;  
     color: #fa8382;
     right: -15%;
    /* 
    margin-right: -17%;
    padding: 20px;
   background-color: #ffb5b4;
    
    text-align: center */
    
} 
</style>
</head>

<body>
	<div id="wrapper">
		<div id="header">

			<div class="d1">
				<a href="test01.jsp"><img src="images/ssgssg.png" width="80" height="50"
					alt="홈으로"></a> 
			</div> 

			 <form name="login" id="login">
				<div class="d2">
					<ul>
						<li><input type="button" class="btn btn-success" 
								style="font-size: 10pt; WIDTH: 60; HEIGHT: 30" value="로그인">
						<input type="button" class="btn btn-success"
								style="font-size:10pt; WIDTH: 70; HEIGHT: 30" value="회원가입"></li>
					</ul>
				</div>
			</form> 

			<!-- <div class="d3">
				<label>카드 검색</label>&nbsp;<input type="search" id="sbox" size="10"
					class="tbox" placehoder="카드명 입력" /> <input type="button" value="검색" name="search_btn"
					id="search_button" class="sbtn" alt="검색" />
			</div> -->
 
 			<h1>
				<strong>SSGSSG</strong>
			</h1>
		</div>
		
		
		
		
		<div id="container">
			<div id="css_tabs">
				<input id="tab1" type="radio" name="tab" checked="checked" /> <input
					id="tab2" type="radio" name="tab" /> 
				<input id="tab3" type="radio" name="tab" />
				<label for="tab1">내가 원하는 카드 찾기</label> 
				<label for="tab2">내게 맞는 카드 찾기</label> 
				<label for="tab3">전체카드 목록</label>
				
				<!-- 1번탭 -->
				<div class="tab1_content">
					<jsp:include page="Check_Box_list.jsp" flush="false" />				
				</div>
				
				<!-- 2번탭 -->
				<div class="tab2_content" >
					<table border=1>
			<tr>
				<td colspan="2" align=center><b><font size=5>로그인 페이지</font></b>
				</td>
			</tr>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="Mem_ID" id="Mem_ID" class="form-control"/></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="Mem_PW" id="Mem_PW" class="form-control" /></td>
			</tr>
			<tr>
				<td colspan="2" align=center><input type="submit" value="로그인" class="btn btn-primary">&nbsp;&nbsp;
					<input type="button" name="join" id="join" value="회원가입"></td>
			</tr>
		</table>
				
					<%-- <jsp:include page="/mem/loginForm.jsp" flush="false" / --%> 
			</div>
<!-- 			<form>		
			<table border=1 width=300>					
			<tr>
				<td colspan="2" align=center><b><font size=5>로그인 페이지</font></b>
				</td>
			</tr>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="Mem_ID" id="Mem_ID" /></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="Mem_PW" id="Mem_PW" /></td>
			</tr>
			<tr>
				<td colspan="2" align=center>
				
				    <input type="submit" value="로그인" class="btn btn-primary">&nbsp;&nbsp;
					<input type="button" name="join" id="join" value="회원가입">
					<button type="submit" class="btn btn-primary">로그인</button> 
					<button type="button" class="btn btn-primary">회원가입</button>
					
				</td>
			</tr>
		</table>
		</form>
				</div>

				<!-- 3번탭 -->
				<div class="tab3_content">
					Tab3 내용 <br />전체 카드 목록
					<jsp:include page="cardlist2.jsp" flush="false" />
				</div>
				
			</div>			
			
		</div>

		<div id="footer">
			<address>
				© 2016 카드검색하는 페이지 만들기 연습 <a href="#">test_page@model2.gg</a> <span>김병수</span>
			</address>
		</div>

	</div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
 #wrapper{width:800px;margin:0 auto;background:#fff;}
#header{text-align:center;background:#fa0;color:#fff; }
 h1{font:bold 30px "휴먼모음T",Gungseo;padding:10px;text-align:center; size:50%;}
 h1 strong{font-size:300%;color:#ffd;} 
#css_tabs > label {
    display:inline-block;
    font-variant:small-caps;
    font-size:.9em;
    padding:5px;
    text-align:center;
    width:20%;
    line-height:1.8em;
    font-weight:700;
    border-radius:3px 3px 0 0;
    background:#eee;
    color:#777;
    border:1px solid #ccc;
    border-width:1px 1px 0
}
.d1 {
    float: left;
    /*position: relative;
    left:0;
    top: 0;
    width: 5%;
    margin-right: 2%;
    padding: 20px 0;
    background-color: #59b1f6;
    color: white;
    text-align: center    */ 
}

.d2 {
    float: right;
    /* position: relative; 
    right: 0%;
    top:0;
    width: 15%;
    margin-right: 2%;
    padding: 3px 80;
    background-color: #59b1f6;
    color: white;
    text-align: right */
}
</style>
<body>
<div id="wrapper">
<div id="header">

			<div class="d1">
				<a href="test01.jsp"><img src="images/ssgssg.png" width="80" height="50"
					alt="홈으로"></a>
			</div> 

			 <form name="login" id="login">
				<div class="d2">
					<ul>
						<li><input type="button" class="btn btn-success" 
								style="font-size: 10pt; WIDTH: 60; HEIGHT: 30" value="로그인">
						<input type="button" class="btn btn-success"
								style="font-size:10pt; WIDTH: 70; HEIGHT: 30" value="회원가입"></li>
					</ul>
				</div>
			</form> 

			<!-- <div class="d3">
				<label>카드 검색</label>&nbsp;<input type="search" id="sbox" size="10"
					class="tbox" placehoder="카드명 입력" /> <input type="button" value="검색" name="search_btn"
					id="search_button" class="sbtn" alt="검색" />
			</div> -->
 
 			<h1>
				<strong>SSGSSG</strong>
			</h1>
		</div>

<div class="container">
  <h2>Dynamic Tabs</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
  </ul>
  


  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      	<jsp:include page="Check_Box_list.jsp" flush="false" />		
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
     <jsp:include page="/mem/loginForm.jsp" flush="false" /> 
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <jsp:include page="cardlist2.jsp" flush="false" />
    </div>
  </div>
  	<div id="footer">
			<address>
				© 2016 카드검색하는 페이지 만들기 연습 <a href="#">test_page@model2.gg</a> <span>김병수</span>
			</address>
		</div>
  
</div>
</div>
</body>
</html> --%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.card.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="ko">
<head>
<title>CSS</title>
<meta charset="utf-8">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
}

img, fieldset {
	border: none;
}

li img, dd img {
	vertical-align: top;
}

@font-face {
	font-family: 'NGothic';
	src: url('font/NanumGothic.woff') format('woff');
}

@font-face {
	font-family: 'NGothicB';
	src: url('font/NanumGothicBold.woff') format('woff');
}

@font-face {
	font-family: 'NGothicEB';
	src: url('font/NanumGothicExtraBold.woff') format('woff');
}

body {
	font: 13px "NGothic", Arial;
	background: #aaa;
}

/* Layout */
#wrapper {
	width: 800px;
	margin: 0 auto;
	background: #fff;
}

#header {
	text-align: center;
	background: #fa0;
	color: #fff;
}

h1 {
	font: bold 30px "휴먼모음T", Gungseo;
	padding: 10px;
	text-align: center;
	size: 50%;
}

h1 strong {
	font-size: 300%;
	color: #ffd;
}

#container {
	float: left;
	width: 100%;
}

.cover {
	float: left;
	width: 600px;
}

.content {
	float: right;
	width: 400px;
	background: #ddd;
	color: #123456;
}

.sidemenu {
	float: left;
	width: 200px;
}

.aside {
	float: right;
	width: 200px;
}

#footer {
	clear: both;
}

/* Detail */
ul li {
	list-style: none;
	float: left;
	margin-left: 2;
}

/* 메뉴 상단에 텝 기능 */
#css_tabs {
	font-family: 'nanumgothic', '나눔고딕', 'malgun gothic', '맑은 고딕', 'dotum',
		'돋움', sans-serif
}
/* 탭 선택 시 표시할 요소(div) 정의(1번 탭 선택 시 첫 번째 div 요소 표시) */
#css_tabs input:nth-of-type(1), #css_tabs input:nth-of-type(1) ~ div:nth-of-type(1),
	#css_tabs input:nth-of-type(2), #css_tabs input:nth-of-type(2) ~ div:nth-of-type(2),
	#css_tabs input:nth-of-type(3), #css_tabs input:nth-of-type(3) ~ div:nth-of-type(3)
	{
	display: none
}

#css_tabs input:nth-of-type(1):checked ~ div:nth-of-type(1), #css_tabs input:nth-of-type(2):checked 
	~ div:nth-of-type(2), #css_tabs input:nth-of-type(3):checked ~ div:nth-of-type(3)
	{
	display: block
}
/* 라벨 기본 스타일 지정 */
#css_tabs>label {
	display: inline-block;
	font-variant: small-caps;
	font-size: .9em;
	padding: 5px;
	text-align: center;
	width: 20%;
	line-height: 1.8em;
	font-weight: 700;
	border-radius: 3px 3px 0 0;
	background: #eee;
	color: #777;
	border: 1px solid #ccc;
	border-width: 1px 1px 0
}

#css_tabs>label:hover {
	cursor: pointer
}

#css_tabs label[for=tab1] {
	margin-left: 1.5em
}
/* 선택된 라벨, 커서를 올린 라벨 스타일 지정 */
#css_tabs input:nth-of-type(1):checked ~ label[for=tab1]:nth-of-type(1),
	#css_tabs>label[for=tab1]:hover {
	background: tomato;
	color: #fff
}

#css_tabs input:nth-of-type(2):checked ~ label[for=tab2]:nth-of-type(2),
	#css_tabs>label[for=tab2]:hover {
	background: gold;
	color: #fff
}

#css_tabs input:nth-of-type(3):checked ~ label[for=tab3]:nth-of-type(3),
	#css_tabs>label[for=tab3]:hover {
	background: green;
	color: #fff
}
/* 실제 내용이 담긴 div 요소 스타일 지정 */
#css_tabs .tab1_content, #css_tabs .tab2_content, #css_tabs .tab3_content
	{
	padding: 2em;
	border: 1px solid #ddd;
	width: 100%;
	height: 100%
}

address {
	font: bold normal 100% "NGothic", Arial;
	padding: 10px;
	background: #123456;
	color: #eee;
	text-align: center;
}

address a {
	color: #eee;
}
/* header 기능 설정 */
.d1 {
	float: left;
	position: relative;
	left: 0;
	top: 0;
	width: 10%;
	margin-right: 2%;
	padding: 20px 0;
	background-color: #59b1f6;
	color: white;
	text-align: center
}

.d2 {
	float: right;
	position: relative;
	right: 0%;
	top: 0;
	width: 15%;
	margin-right: 2%;
	padding: 3px 80;
	background-color: #59b1f6;
	color: white;
	text-align: right
}

.d3 {
	float: right;
	position: relative;
	top: 110px;
	width: 10;
	right: 0%;
	margin-right: -17%;
	padding: 2px 0;
	background-color: #ffb5b4;
	color: #fa8382;
	text-align: center
}
</style>
</head>

<body>
	<div id="wrapper">
		<div id="header">

			<div class="d1">
				<a href="#"><img src="images/ssgssg.png" width="80" height="50" alt="홈으로"></a>
			</div>

			<!-- <form name="login" id="login">
				<div class="d2">
					<ul>
						<li><a href="#"><input type="button"
								style="font-size: 8pt; WIDTH: 5; HEIGHT: 5" value="로그인"></a></li>
						<li><a href="#"><input type="button"
								style="font-size: 8pt; WIDTH: 5; HEIGHT: 5" value="로그아웃"></a></li>
					</ul>
				</div>
			</form> -->

			<!-- <div class="d3">
				<label>카드 검색</label><input type="search" id="sbox" size="10"
					class="tbox" placehoder="카드명 입력" /> <input type="button" value="검색"
					id="search_button" class="sbtn" alt="검색" />
			</div>
 -->
			<h1>
				<strong>SSGSSG</strong>
			</h1>
			co
		</div>
		<div id="container">
			<div id="css_tabs">
				<input id="tab1" type="radio" name="tab" checked="checked" /> <input id="tab2" type="radio"
					name="tab" /> <input id="tab3" type="radio" name="tab" /> <label for="tab1">내가
					원하는 카드 찾기</label> <label for="tab2">내게 맞는 카드 찾기</label> <label for="tab3">전체카드 목록</label>
				<div class="tab1_content">
					Tab1 내용 <br />
					<jsp:include page="Check_Box_list.jsp" flush="false" />

				</div>


				<div class="tab2_content">
					Tab2 내용 <br />DB연동 카드를 맞추기 //
					<jsp:include page="/mem/loginForm.jsp" flush="false" />
				</div>


				<div class="tab3_content">
					Tab3 내용 <br />전체 카드 목록
					<jsp:include page="cardlist2.jsp" flush="false" />
				</div>

			</div>

		</div>



		<div id="footer">
			<address>
				© 2016 카드검색하는 페이지 만들기 연습 <a href="#">test_page@model2.gg</a> <span>김병수</span>
			</address>
		</div>

	</div>
</body>
</html>

