<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신용카드 목록</title>
</head>
<body>
	<form name="cardradio" action="/Project/CardSelect.me" method="post">
	<table align=center width=600 border="1" cellpadding="0"
		cellspacing="0">
		<%
			//if(radiocount > 0){
		%>

		<!-- 레코드가 있으면 -->

		<tr align="center" valign="middle">
			<td colspan="5">신용카드 목록</td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center">선택</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">카드 종류</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<div align="center">혜택</div>
			</td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="1">
					<input type="radio" id="movie" name="Mem_CARD"
						value="신한카드 하이패스(전용)체크">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">
					<img src="card/shhipass.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;신한카드 하이패스(전용)체크</strong>
					<br>&nbsp;하이패스 이용요금의 0.1% 적립!
					<br>&nbsp;출퇴근시간대 통행료 20%자동할인!
				</dl>
			</td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="2">
					<input type="radio" id="movie" name="Mem_CARD" value="신한카드 RPM+">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">
					<img src="card/shrpm.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;신한카드 RPM+</strong>
					<br>&nbsp;모든 주유소에서 최고 150P 적립!
					<br>&nbsp;강력한 주유할인에 쇼핑, 마트 할인까지!
				</dl>
			</td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="3">
					<input type="radio" id="movie" name="Mem_CARD" value="현대카드 ZERO">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">
					<img src="card/zero.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;현대카드 ZERO</strong>
					<br>&nbsp;2~8월 C카드비교사이트 인기차트 1위
					<br>&nbsp;무조건 할인카드의 대표, 현대카드
				</dl>
			</td>
		</tr>

		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="4">
					<input type="radio" id="movie" name="Mem_CARD"
						value="현대카드M Edition2">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">
					<img src="card/m.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;현대카드M Edition2</strong>
					<br>&nbsp;어디서나 0.5~3% M포인트 적립
					<br>&nbsp;매월50% M포인트 Special 쇼핑
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="5">
					<input type="radio" id="movie" name="Mem_CARD"
						value="삼성카드 taptap O">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">
					<img src="card/taptap.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;삼성카드 taptap O</strong>
					<br>&nbsp;스타벅스 50%, 교통통신 10%
					<br>&nbsp;쇼핑 7% 월 2회 영화5천원 할인
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="6">
					<input type="radio" id="movie" name="Mem_CARD" value="삼성카드 4">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/s4.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;삼성카드 4</strong>
					<br>&nbsp;저렴한 연회비로 국내외 가맹점 확인
					<br>&nbsp;무이자 할부에 모든 영화관 할인!
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="7">
					<input type="radio" id="movie" name="Mem_CARD"
						value="KB국민 FINETECH카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/kb_f.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;KB국민 FINETECH카드</strong>
					<br>&nbsp;스타벅스 50%, 교통 20% 할인
					<br>&nbsp;CGV, 통신비 5천원 할인까지
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="8">
					<input type="radio" id="movie" name="Mem_CARD"
						value="KB국민 굿데이카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/kb.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;KB국민 굿데이카드</strong>
					<br>&nbsp;대중교통, 통신, 주유 업종 청구할인
					<br>&nbsp;음식, 편의점, 학원 업종 청구할인
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="9">
					<input type="radio" id="movie" name="Mem_CARD"
						value="Driving Pass카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/ltpass.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;Driving Pass카드</strong>
					<br>&nbsp;전국 모든 주유, 충전소 60원 할인
					<br>&nbsp;오늘신청 내일수령! 하이패스 30%할인
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="10">
					<input type="radio" id="movie" name="Mem_CARD"
						value="올마이쇼핑카드(통신)">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/allmylt.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;올마이쇼핑카드(통신)</strong>
					<br>&nbsp;쇼핑업종 5%, 통신요금 10% 할인
					<br>&nbsp;오늘신청, 내일 수령!
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="11">
					<input type="radio" id="movie" name="Mem_CARD" value="NEW우리카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/newuri.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;NEW우리카드</strong>
					<br>&nbsp;모든 백화점, 대형마트, 주유소 할인
					<br>&nbsp;우리나라 카드의 기준 NEW우리V카드
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="12">
					<input type="radio" id="movie" name="Mem_CARD"
						value="LG U+ 라서 THE 즐거운 카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/lguuri.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;LG U+ 라서 THE 즐거운 카드</strong>
					<br>&nbsp;LGU+통신비최대 23,000원할인!
					<br>&nbsp;실속만점 생활서비스 혜택
				</dl>
			</td>
		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="13">
					<input type="radio" id="movie" name="Mem_CARD" value="씨티 클리어 카드">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/citiclear.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;씨티 클리어 카드</strong>
					<br>&nbsp;영화30%, 대중카드 10%, 점심 5% 할인
					<br>&nbsp;온라인 신청시 첫해 연회비 1천원 할인
				</dl>
			</td>

		</tr>
		<tr align="center" valign="middle" bordercolor="#333333">
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
				height="26">
				<div align="center" name="card_num" value="14">
					<input type="radio" id="movie" name="Mem_CARD"
						value="씨티 프리미어마일 카드(아시아나항공)">
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/citipri.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;씨티 프리미어마일 카드(아시아나항공)</strong>
					<br>&nbsp;PP카드 무료제공
					<br>&nbsp;온라인 신청시 첫해연회비 10%할인
					<em class="org"><br>&nbsp;카드수령 전 즉시혜택! 바로발급서비스</em>
				</dl>
			</td>
		</tr>
	</table>
	<!-- <tr>
				<td align="center" colspan="2"><div
						class="btn_wrap text-center mt50">
						<br>
						<input type="submit" class="img_btn user cancel mr7" name="sure" value="확인"
							id="sure">
						<button type="button" class="img_btn user ok ml7" id="btnReset">취소</button>
					</div></td>
			</tr> -->

	<footer align="center">
	<tr>
		<td align="center" colspan="2"><div
				class="btn_wrap text-center mt50">
				<br> <input type="submit" 
					name="OTL" value="확인" id="OTL">
				<input type=button value="취소" onClick="history.go(-1)"></button>
			</div></td>
	</tr>
	</footer>
	</form>
</body>
</html>