<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if (null != cookies) {
			for (int d = 0; d <= cookies.length - 1; d++) {
				out.print(cookies[d].getName() + ":" + cookies[d].getValue() + "<br/>");
			}
		}
	%>
</body>
</html>