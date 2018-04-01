<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
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
		List<String> words = new ArrayList<String>();
		words.add("today");
		words.add("is");
		words.add("a");
	%>
	<table width="100%" align="center" border="1" cellspacing="0">
	<%for(String word:words){ %>
	<tr>
		<td><%=word %></td>
	</tr>
	<%} %>
	</table>
</body>
<%-- <%@include file="footer.jsp" %> --%>
<jsp:include page="footer.jsp">
	<jsp:param value="year" name="2017"/>
</jsp:include>
</html>