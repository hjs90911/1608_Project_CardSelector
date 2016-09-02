<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
 #wrapper{width:800px;margin:0 auto;background:#fff; }
#header{text-align:center;background:#fa0;color:#fff; }
 h1{font:bold 30px "휴먼모음T",Gungseo;padding:10px;text-align:center; size:50%;}
 #footer{clear:both;}
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

/* #header {border:1px solid red;} */
#wrapper {width: 1200px;}
#tab1{
	background:#D1B2FF;
    color:fff;
    cursor: pointer;
}
#tab2{
	background:#D1B2FF;
    color:fff;
    cursor: pointer;
}
#tab3{
	background:#D1B2FF;
    color:fff;
    cursor: pointer;
}


address{font:bold normal 100% "NGothic",Arial; padding:10px;
		color:#eee;text-align:center;}
#footer{position:fixed; bottom:0; width:100%; height:30px; background-color:#123456; clear:both;}
</style>

</head>
<body>
<div id="wrapper">
<div id="header">

			<div class="d1">
				<a href="test01.jsp"><img src="/Project/cardlist/images/ssgssg.png" width="80" height="50"
					alt="홈으로"></a>
			</div> 

			 <form name="login" id="login">
				<div class="d2">
					<ul>
					<c:if test="${sessionScope.id == null}">
						<li><input type="button" class="btn btn-success" 
								style="font-size: 10pt; WIDTH: 60; HEIGHT: 30" value="로그인" onclick="location.href='/Project/MemberLogin.me';">
						<input type="button" class="btn btn-success"
								style="font-size:10pt; WIDTH: 80; HEIGHT: 30" value="회원가입"  onclick="location.href='/Project/MemberJoin.me';"></li>
					</c:if>
					<c:if test="${sessionScope.id != null}">
						<li><input type="button" class="btn btn-success" 
								style="font-size: 10pt; WIDTH: 80; HEIGHT: 30" value="로그아웃" onclick="location.href='/Project/MemberLogoutAction.me';">
						<input type="button" class="btn btn-success"
								style="font-size:10pt; WIDTH: 80; HEIGHT: 30" value="회원정보"  onclick="location.href='/Project/MemberViewAction.me';"></li>
					</c:if>
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
  <ul class="nav nav-tabs">
    <li><a class="active" data-toggle="tab" id="tab1" onclick="location.href='/Project/cardlist/Check_Box_list.jsp';">내가원하는 카드찾기</a></li>
    <li><a data-toggle="tab" id="tab2" onclick="location.href='/Project/mem/loginForm.jsp';">내게맞는카드 찾기</a></li>
    <li><a data-toggle="tab" id="tab3" onclick="location.href='/Project/cardlist/cardlist2.jsp';">전체카드목록</a></li>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <c:if test="${sessionScope.id != null}">
    <div style="text-align:right;"><strong>${sessionScope.id}</strong> 님 환영합니다.</div>
    </c:if>
  </ul>
  
</div>
<div id="footer">
			<address>
				손창호/김병수/정재홍/김진수의 맞춤형 카드 서비스
			</address>
		</div>
	</div>
</div>
</body>
</html>