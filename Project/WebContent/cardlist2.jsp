<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신용카드 목록</title>
</head>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center">번호</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="25%">
				<div align="center">카드 종류</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<div align="center">혜택</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">가입 신청</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">리 뷰</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="1">1</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="20%">
				<div align="center">
					<img src="card/shhipass.GIF" />
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="30%">
				<dl>
					<strong class="bk">&nbsp;신한카드 하이패스(전용) 체크</strong>
					<br>&nbsp;하이패스 이용요금의 0.1% 적립!
					<br>&nbsp;출퇴근시간대 통행료 20%자동할인!
				</dl>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=1">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="2">2</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=2">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="3">3</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=3">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="4">4</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=4">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="5">5</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=5">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="6">6</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=6">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="7">7</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=7">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="8">8</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=8">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="9">9</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=9">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="10">10</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=10">리 뷰</button>
				</div>
			</td>
		</tr>

		<tr>
			<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
				<div align="center" name="cardnum" value="11">11</div>
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
			<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
				<div align="center">
					<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
				</div>
			</td>
			<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
				<div align="center">
					<button type="button" onclick="location.href=cardreview.bo?cardnum=11">리 뷰</button>
				</div>
			</td>
		</tr>

		<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
			<div align="center" name="cardnum" value="12">12</div>
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
		<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
			<div align="center">
				<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
			</div>
		</td>
		<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
			<div align="center">
				<button type="button" onclick="location.href=cardreview.bo?cardnum=12">리 뷰</button>
			</div>
		</td>
		</tr>

		<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
			<div align="center" name="cardnum" value="13">13</div>
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
		<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
			<div align="center">
				<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
			</div>
		</td>
		<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
			<div align="center">
				<button type="button" onclick="location.href=cardreview.bo?cardnum=13">리 뷰</button>
			</div>
		</td>
		</tr>

		<td style="font-family: Tahoma; font-size: 8pt;" width="8%" height="26">
			<div align="center" name="cardnum" value="14">14</div>
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
		<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
			<div align="center">
				<button onclick="alert('가입이 신청 되었습니다')">가입 신청</button>
			</div>
		</td>
		<td style="font-family: Tahoma; font-size: 8pt;" width="10%">
			<div align="center">
				<button type="button" onclick="location.href=cardreview.bo?cardnum=14">리 뷰</button>
		</td>
		</tr>
	</table>

</body>
</html>