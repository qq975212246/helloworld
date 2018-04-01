<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${fn:substring('name',0,2) }
	<c:set var="hp" value="${10 }" scope="request"></c:set>
	<c:if test="${hp<5 }">
		<p>这个英雄要挂了</p>
	</c:if>
	<c:if test="${!(hp<5) }">
		<p>这个英雄觉得自己还可以再抢救抢救</p>
	</c:if>
	
	<%
		pageContext.setAttribute("weapon", null);
	%>
</body>
</html>