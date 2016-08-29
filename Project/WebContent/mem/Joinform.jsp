<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script 
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById('Mem_POST1').value = data.postcode1;
				document.getElementById('Mem_POST2').value = data.postcode2;
				document.getElementById('Mem_ADDRESS').value = data.address;
			}
		}).open();
	}

	$(function() {

		$("#idCheck").click(
				function() {
					if ($("#Mem_ID").val() == "") {
						alert("ID 입력해주세요");
						$("#Mem_ID").focus();
					} else {
						var ref = "/SsgSsg/idCheck.me?Mem_ID="
								+ $("#Mem_ID").val();
						window.open(ref, "idcheck", "width=300, height=250");
					}
				});

		$("#sel").change(function() {
			if ($("#sel").val() == "") {
				$("#MemBER_DOMAIN").val("");
				$("#MemBER_DOMAIN").focus();
			} else {
				$("#MemBER_DOMAIN").val($("#sel").val());
				$("#MemBER_DOMAIN").attr("readOnly", true);
			}
		});

		$("form").submit(
				function() {

					if ($("#Mem_ID").val() == "") {
						alert("ID를 입력해주세요");
						$("#Mem_ID").focus();
						return false;
					}
					if ($("#Mem_PW").val() == "") {
						alert("비밀번호를 입력해주세요");
						$("#Mem_PW").focus();
						return false;
					}

					if ($("#Mem_pw_ck").val() == "") {
						alert("비밀번호 확인을 위해 비밀번호를 다시 입력해주세요");
						$("#pw_ck").focus();
						return false;
					}

					if ($("#Mem_NAME").val() == "") {
						alert("이름을 입력해주세요");
						$("#Mem_NAME").focus();
						return false;
					}

					if ($("#male").is(":checked") == false
							&& $("#female").is(":checked") == false) {
						alert("성별을 선택해주세요");
						return false;
					}

					if ($("#Mem_JUMIN1").val() == "") {
						alert("주민번호 앞자리를 입력해주세요");
						$("#Mem_JUMIN1").focus();
						return false;
					}

					if ($("#Mem_JUMIN2").val() == "") {
						alert("주민번호 뒷자리를 입력해주세요");
						$("#Mem_JUMIN2").focus();
						return false;
					}

					if ($("#Mem_POST1").val() == "") {
						alert("우편번호 검색을 하여 주소를 입력해주세요");
						$("#Mem_POST1").focus();
						return false;
					}

					if ($("#Mem_POST2").val() == "") {
						alert("우편번호 검색을 하여 주소를 입력해주세요");
						$("#Mem_POST2").focus();
						return false;
					}

					if ($("#Mem_ADDRESS").val() == "") {
						alert("우편번호 검색을 하여 주소를 입력해주세요");
						$("#Mem_ADDRESS").focus();
						return false;
					}

					if ($("#Mem_tong").val() == "#") {
						alert("통신사를 선택해주세요");
						$("#Mem_tong").focus();
						return false;
					}

					if ($("#Mem_PHONE1").val() == "#") {
						alert("핸드폰 앞자리를 선택해주세요");
						$("#Mem_PHONE1").focus();
						return false;
					}

					if ($("#Mem_PHONE2").val() == "") {
						alert("핸드폰 번호를 입력해주세요");
						$("#Mem_PHONE2").focus();
						return false;
					}

					if ($("#Mem_PHONE3").val() == "") {
						alert("핸드폰 번호를 입력해주세요");
						$("#Mem_PHONE3").focus();
						return false;
					}

					if ($("#Mem_HOBBY").val() == "") {
						alert("E-Mail 도메인을 입력 또는 선택해주세요");
						$("#MemBER_DOMAIN").focus();
						return false;
					}

					 var cnt = 0;
					if ($("#movie").is(":checked"))
						cnt++;
					if ($("#treval_ko").is(":checked"))
						cnt++;
					if ($("#treval_bo").is(":checked"))
						cnt++;
					if ($("#book").is(":checked"))
						cnt++;
					if ($("#computer").is(":checked"))
						cnt++;
					if ($("#concert").is(":checked"))
						cnt++;
					if ($("#beauti").is(":checked"))
						cnt++;
					if ($("#shopping").is(":checked"))
						cnt++;
					if ($("#sports_sang").is(":checked"))
						cnt++;
					if ($("#sports_goo").is(":checked"))
						cnt++;
					if (cnt < 3) {
						alert("취미는 3개이상 선택하세요");
						return false;
					} 

					if ($("#SH").is(":checked") == false
							&& $("#KB").is(":checked") == false
							&& $("#NH").is(":checked") == false
							&& $("#HN").is(":checked") == false
							&& $("#IBK").is(":checked") == false
							&& $("#CT").is(":checked") == false
							&& $("#WR").is(":checked") == false) {
						alert("선호하는 은행을 선택해주세요");
						return false;
					}

					if ($("#Mem_DONG").is(":checked") == false) {
						alert("개인정보에 동의해주세요");
						$("#Mem_DONG").focus();
						return false;
					}

					/*       $("#sel").change(function(){
					 if($("#sel").val() == ""){
					 $("#email02").val("");
					 $("#email02").focus();
					 }else{
					 $("#email02").val($("#sel").val());
					 $("#email02").attr("readOnly",true);
					 }		 
					 });	  */

					alert("회원가입을 축하드립니다.");
//					location.href = "loginForm.jsp"
				});

	});
	
	
	$(function() {
		$("#button").click(function() {
			location.href = "/SsgSsg/mem/Joinform.jsp"
		})
	})
	$(function() {
		$("#btnReset").click(function() {
			$("form").each(function() {
				this.reset();
			});
		});
	});
</script>
<title>회원가입 &lt; 회원서비스 | 나만의 맞춤형 카드 서비스. SSGSSG</title>
<style>
td {
	border-top-style: solid;
	border-top-width: \1px;
	border-top-color: #E4E4E4
}
</style>
</head>

<header> <img src="ssgssg.png" style="margin-top: 20px"
	width=150 height=50 /> <img src="join_text.png"
	style="margin-top: 20px" />

<hr style="border: outset 5px #00BFFF;">
<font size="5pt" color="Gray" face="명조체">정보입력</font> </span> <font size="3pt"
	color="Gray" face="명조체"> 회원가입에 필요한 고객님의 정보를 입력해주세요.</font> <br>
<br>
<font size="2" color="Gray"> *표시 항목은 필수입력 항목입니다.</font>

<hr style="border: outset 1px #00BFFF;">
</header>


<body>
	<form name="joinform" action="/SsgSsg/MemberJoinAction.me" method="post">
		<table border="0" cellpadding="0" cellspacing="0">
			<div id="join_main">
				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120><label
						for="input_text1">*아이디</label></th>
					<td>&nbsp;<input type="text" title="아이디" id="Mem_ID" 
						name="Mem_ID" value="" maxlength="12" fieldname="아이디" />
						<button type="button" name="idCheck" id="idCheck">중복확인</button> <span
						size="1"><font STYLE="font-family: 굴림체" color="#747474"
							size="2pt"> * 영문이나 숫자 혹은 그 조합 8~12자리</font></span></td>
				</tr>

				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120><label
						for="input_text2">*비밀번호</label></th>
					<td>&nbsp;<input type="password" title="비밀번호 입력" id="Mem_PW"
						name="Mem_PW" maxlength="16" value=""
						onkeyup="passwordLengthCheck(this)"> <span
						class="text-sub" style="margin-left: 11px;"> <font
							STYLE="font-family: 굴림체" color="#747474" size="2pt"> * 영문,
								숫자, 특수문자 중 2가지 이상 조합 10자리 이상</font></font></span></td>
				</tr>


				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120><label
						for="input_text3">*비밀번호 확인</label></th>
					<td>&nbsp;<input type="password" title="비밀번호 확인 입력"
						id="Mem_pw_ck" name=Mem_pw_ck maxlength="16" value=""></td>
				</tr>


				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120><label
						for="input_text4">*이름</label></th>
					<td>&nbsp;<input type="text" title="이름" id="Mem_NAME"
						name="Mem_NAME" maxlength="30" value="" size="10"></td>
				</tr>

				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120><label
						for="input_text44">*성별</label></th>
					<td>&nbsp;<input type=radio name=Mem_GENDER id=male value=male>남자
						<input type=radio name=Mem_GENDER id=female value=female>여자</td>
				</tr>


				<tr>
					<th bgcolor="#EAEAEA" height=50 width=120>*주민등록번호</th>
					<td>&nbsp;<input type="hidden" title="주민등록번호" name="JUMIN"
						value="" /> <input type="text" name="Mem_JUMIN1" id=Mem_JUMIN1
						maxlength="6" size="6" /> <span>-</span> <input type="text"
						name="Mem_JUMIN2" id=Mem_JUMIN2 maxlength="7" size="7" />
					</td>
				</tr>

				<tr>
					<th bgcolor="#EAEAEA" height=70>*주소</th>
					<td>&nbsp;
						<input type="text" title="우편번호 앞자리" name="Mem_POST1"
						id="Mem_POST1" readOnly="readOnly" size="3"> -						
						<input type="text"
						title="우편번호 뒷자리"  name="Mem_POST2"
						id="Mem_POST2" readOnly="readOnly" size="3">
						<button type="button" 
							onclick="openDaumPostcode()">우편번호 검색</button>
			<div>
				&nbsp;&nbsp;<input type="text" title="주소" name="Mem_ADDRESS"
					id="Mem_ADDRESS" style="width: 300px;" size=30> <span
					class="text-sub ml10"><font STYLE="font-family: 굴림체"
					color="#747474" size="2pt">상세 주소 정보는 받지 않습니다.</font></span>
			</div>
			</td>
			</tr>
			<tr>
				<th bgcolor="#EAEAEA" height=50 width=120>*휴대폰</th>
				<td>&nbsp; <select id="Mem_tong" name="Mem_tong">
						<option value="#">통신사 선택</option>
						<option value="KT">KT</option>
						<option value="SKT">SKT</option>
						<option value="LG">LG</option>
				</select> <select id="Mem_PHONE1" name="Mem_PHONE1">
						<option value="#">앞자리 선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="019">019</option>
				</select>-</span> <input type="text" class="w67" name="Mem_PHONE2" id=Mem_PHONE2
					validate="number" allowtype="number" maxlength="4" size="4" /> <span
					class="text-sub ml2 mr2">-</span> <input type="text" class="w67"
					name="Mem_PHONE3" id=Mem_PHONE3 validate="number"
					allowtype="number" maxlength="4" / size="4"></td>
			</tr>


			<tr>
				<th bgcolor="#EAEAEA" height=50 width=120><label
					for="inputtext9">*취미<br>(3개 이상)
				</label></th>
				<td>&nbsp; <input type="checkbox" id="movie" name="Mem_HOBBY"
					value="영화">영화
					</option> <input type="checkbox" id="treval_ko" name="Mem_HOBBY"
					value="국내 여행">국내 여행
					</option> <input type="checkbox" id="treval_bo" name="Mem_HOBBY"
					value="해외 여행">해외 여행
					</option> <input type="checkbox" id="book" name="Mem_HOBBY" value="독서">독서
					</option> <input type="checkbox" id="computer" name="Mem_HOBBY" value="컴퓨터">컴퓨터
					</option> <input type="checkbox" id="concert" name="Mem_HOBBY" value="콘서트">콘서트
					</option> <input type="checkbox" id="beauti" name="Mem_HOBBY" value="뷰티">뷰티
					</option> <br>&nbsp; <input type="checkbox" id="shopping" name="Mem_HOBBY"
					value="쇼핑">쇼핑
					</option> <input type="checkbox" id="sports_sang" name="Mem_HOBBY"
					value="생활운동">생활운동(요가, 배드민턴, 등산, 자전거 등)
					</option> <input type="checkbox" id="sports_goo" name="Mem_HOBBY"
					value="구기운동">구기운동(축구, 농구 등)
					</option>
				</td>
			</tr>

			<tr>
				<th bgcolor="#EAEAEA" height=50 width=120><label
					for="inputtext9">*선호하는 은행</label></th>
				<td>&nbsp; <input type="radio" id="SH" name="Mem_BANK"
					value="신한">신한
					</option> <input type="radio" id="KB" name="Mem_BANK" value="국민">국민
					</option> <input type="radio" id="NH" name="Mem_BANK" value="농협">농협
					</option> <input type="radio" id="HN" name="Mem_BANK" value="하나">하나
					</option> <input type="radio" id="WR" name="Mem_BANK" value="우리">우리
					</option> <input type="radio" id="CT" name="Mem_BANK" value="씨티">씨티
					</option> <input type="radio" id="IBK" name="Mem_BANK" value="기업">기업
					</option>
				</td>
			</tr>

			<tr>
				<th bgcolor="#EAEAEA" height=50 width=120><label
					for="inputtext9">*나의 카드</label></th>
				<td>&nbsp;<input type="text" name="Mem_CARD" id=Mem_CARD
					validate="number" allowtype="number" maxlength="4" size="4" /></td>
			</tr>

			<tr>
				<th bgcolor="#EAEAEA" height=50 width=120><label
					for="inputtext9">*개인정보 동의</label></th>
				<td>&nbsp;
					<div class="container">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title" >
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse1" >개인정보 수집 및 이용에 대한 안내</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse">
									<div class="panel-body">
										<label id="termsPrivacyLb" for="termsPrivacy"> 개인정보 수집
											및 이용에 대한 안내<span class="terms_choice">(필수)</span>
										</label> </span>
										<div class="terms_box">
											<div class="policy_summary">
												<p class="policy_summary__text">정보통신망법 규정에 따라 SSGSSG에
													회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및
													이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
											</div>
											<div class="article">
												<h3 class="article__title">1. 수집하는 개인정보</h3>
												<p class="article__text">이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기
													등 대부분의 SSGSSG 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페,
													블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, SSGSSG는 서비스
													이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
												<div class="clause">
													<h4 class="clause__title">회원가입 시점에 SSGSSG가 이용자로부터 수집하는
														개인정보는 아래와 같습니다.</h4>
													<ul class="sections">
														<li class="sections__section">- 회원 가입 시에 ‘아이디, 비밀번호,
															이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는
															생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 중복가입확인정보(DI),
															휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.</li>
														<li class="sections__section">- 단체아이디로 회원 가입 시에
															단체아이디, 단체이름, 법인명(단체명), 대표자명, 대표 전화번호, 사업장소재지, 관리자 아이디,
															관리자 휴대폰번호를 필수항목으로 수집합니다.</li>
													</ul>
													<h4 class="clause__title">서비스 이용 과정에서 이용자로부터 수집하는
														개인정보는 아래와 같습니다.</h4>
													<p class="clause__text">SSGSSG 내의 개별 서비스 이용, 이벤트 응모 및
														경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로
														개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의
														수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.</p>
													<h4 class="clause__title">서비스 이용 과정에서 IP 주소, 쿠키,
														방문일시·불량 이용 기록 등의 서비스 이용 기록, 기기정보가 생성되어 수집될 수 있습니다.</h4>
													<p class="clause__text">구체적으로 1) 서비스 이용 과정에서 이용자에 관한
														정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 2) 이용자 기기의
														고유한 정보를 원래의 값을 확인하지 못하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.</p>
												</div>
											</div>
											<div class="article">
												<h3 class="article__title">2. 수집한 개인정보의 이용</h3>
												<p class="article__text">SSGSSG는 회원관리, 서비스 개발・제공 및 향상,
													안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.</p>
												<ul class="sections">
													<li class="sections__section">- 회원 가입 의사의 확인, 연령 확인 및
														법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등
														회원관리를 위하여 개인정보를 이용합니다.</li>
													<li class="sections__section">- 콘텐츠 등 기존 서비스 제공(광고
														포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한
														이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및
														기존 서비스 개선 등을 위하여 개인정보를 이용합니다.</li>
													<li class="sections__section">- 법령 및 SSGSSG 이용약관을 위반하는
														회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한
														방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존,
														민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.</li>
													<li class="sections__section">- 유료 서비스 제공에 따르는 본인인증,
														구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>
													<li class="sections__section">- 이벤트 정보 및 참여기회 제공, 광고성
														정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>
													<li class="sections__section">- 서비스 이용기록과 접속 빈도 분석,
														서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를
														이용합니다.</li>
													<li class="sections__section">- 보안, 프라이버시, 안전 측면에서
														이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>
												</ul>
											</div>
											<div class="article">
												<h3 class="article__title">3. 개인정보의 파기</h3>
												<div class="clause">
													<h4 class="clause__title">회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시
														지체없이 파기하고 있습니다.</h4>
													<p class="clause__text">단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를
														얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를
														안전하게 보관합니다.</p>
												</div>
												<div class="clause">
													<h4 class="clause__title">이용자에게 개인정보 보관기간에 대해 별도의 동의를
														얻은 경우는 아래와 같습니다.</h4>
													<p class="clause__text">
														부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간
														보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우
														법정대리인 DI)가 있습니다.<br>결제도용, 카드깡 등 관련 법령 및 이용약관을 위반하는
														SSGSSG페이의 부정거래기록(아이디, 이름, 휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은
														부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간
														보관하고 파기합니다.
													</p>
												</div>
												<div class="clause">
													<h4 class="clause__title">전자상거래 등에서의 소비자 보호에 관한 법률,
														전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다.
														SSGSSG는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대
														이용하지 않습니다.</h4>
													<ul class="sections">
														<li class="sections__section">- 전자상거래 등에서 소비자 보호에 관한
															법률 <br>계약 또는 청약철회 등에 관한 기록: 5년 보관 <br>대금결제 및 재화
															등의 공급에 관한 기록: 5년 보관 <br>소비자의 불만 또는 분쟁처리에 관한 기록: 3년
															보관
														</li>
														<li class="sections__section">- 전자금융거래법 <br>전자금융에
															관한 기록: 5년 보관
														</li>
														<li class="sections__section">- 통신비밀보호법 <br>로그인
															기록: 3개월
														</li>
													</ul>
													<input type="checkbox" id="Mem_DONG" name="Mem_DONG" value="동의" align="center">개인정보 동의
												</div>
											</div>
										</div>
										</li>
									</div>

								</div>
							</div>
						</div>
					</option>
				<br>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2"><div
						class="btn_wrap text-center mt50">
						<br>
						<input type="submit" class="img_btn user cancel mr7" name="sure" value="확인"
							id="sure">
						<button type="button" class="img_btn user ok ml7" id="btnReset">취소</button>
					</div></td>
			</tr>


			<input type="hidden" name="auth_Gubun" value="4" />
		</TABLE>
	</FORM>
	</div>
	</div>
	<!-- user_wrap -->

	</div>
	</table>
	<br>
	<hr style="border: outset 1px #EAEAEA;">
	<footer>
	<div class="#"></div>
	</footer>
</body>

</html>