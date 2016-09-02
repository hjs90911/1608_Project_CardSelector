<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] checks = request.getParameterValues("checkbox");
	    String t=null;
	%>

	<%
		int checklen = 0;
		checklen = checks.length;
		try {
			for (int i = 0; i < checklen; i++)
				t+=checks[i];
		} catch (Exception e) {
		}
		
	%> 
       <input type="button" value="전송"><a href="/Project/CardAddAction.bo?card_ad=t"></a>

</body>
</html>