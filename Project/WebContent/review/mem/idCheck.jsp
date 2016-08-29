<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		int result = ((Integer) request.getAttribute("result")).intValue();
		out.println(result);	
	
		if (result == 1) {
			out.println("사용중인 id입니다.");
		} else {
			out.println("사용 가능한 id입니다.");
		}
	--%>
	<c:if test="${result == 0 }">
		<c:out value="사용 가능한 ID입니다."/>
	</c:if>
	
	<c:if test="${result == -1 }">
		<c:out value="사용중인 ID입니다."/>
	</c:if>
	
	
	<br><br><br>
	<a href="javascript:self.close()">닫기</a>	

</body>
</html>