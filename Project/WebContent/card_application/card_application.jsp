<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카드신청서</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		$("form").submit(function() {
			if ($("#mem_name").val() == "") {
				alert("이름을 입력하세요.");
				$("#mem_name").focus();
				return false;
			} else if ($("#mem_jumin1").val() == "") {
				alert("주민등록번호 앞자리를 입력하세요.");
				$("#mem_jumin1").focus();
				return false;
			} else if ($("#mem_jumin2").val() == "") {
				alert("주민등록번호 뒷자리를 입력하세요.");
				$("#mem_jumin2").focus();
				return false;
			} else if ($("#mem_phone1").val() == "" || $("#mem_phone2").val() == "" || $("#mem_phone3").val() == "") {
				alert("전화번호를 입력하세요.");
				$("#mem_phone1").focus();
				return false;
			} else if ($("input[name='transportation']:checked").val() != "y" && $("input[name='transportation']:checked").val() != "n") {
				alert("후불교통카드 사용여부를 선택하세요.");
				$("#transportation").focus();
				return false;
			} else if ($("input[name='mobile']:checked").val() != "y" && $("input[name='mobile']:checked").val() != "n") {
				alert("모바일카드 사용여부를 선택하세요.");
				$("#mobile").focus();
				return false;
			}
		});
	});
</script>
</head>
<body>
	<form name="applicationform" action="application_confirm.jsp" method="post">
		<center>
			<table border="2">
				<tr>
					<td colspan="2" align=center><b><font size=5>카드 신청서</font></b></td>
				</tr>
				<tr>
					<td colspan="2" align="left"><input type="radio" name="iswritten">회원정보와 동일 
					<input type="radio" name="iswritten">직접 입력
					</td>
				</tr>
				<tr align="center">
					<td>이름</td>
					<td><input type="text" name="mem_name" id="mem_name" /></td>
				</tr>
				<tr align="center">
					<td>주민등록번호</td>
					<td><input type="text" name="mem_jumin1" id="mem_jumin1" size="6" maxlength="6" /> - <input type="text"
						id="mem_jumin2" name="mem_jumin2" size="6" maxlength="7" /></td>
				</tr>
				<tr align="center">
					<td>연락처</td>
					<td><select name="mem_phone1" id="mem_phone1">
							<option value="select">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="019">019</option>
						</select>
					 - <input type="text" name="mem_phone2" id="mem_phone2" size="3" maxlength="4"/>
						- <input type="text" name="mem_phone3" id="mem_phone3" size="3" maxlength="4"/></td>
				</tr>
				<tr align="center">
					<td>후불교통카드</td>
					<td><input type="radio" name="transportation" id="transportaion" value="y" />예<input type="radio"
						name="transportation" id="transportation" value="n" />아니요</td>
				</tr>
				<tr align="center">
					<td>모바일카드</td>
					<td><input type="radio" name="mobile" id="mobile" value="y" />예<input type="radio" name="mobile" id="mobile"
						value="n" />아니요</td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type="submit" value="신청">&nbsp;&nbsp; <input
						type=button value="취소" onClick="history.go(-1)">
				</tr>
			</table>
		</center>
	</form>
</body>
</html>