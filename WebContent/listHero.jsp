<%@page import="java.util.List"%>
<%@page import="bean.Hero"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<table align="center" border="1" cellspacing="0">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>hp</td>
			<td>damage</td>
			<td>edit</td>
			<td>delete</td>
		</tr>
<%-- 		<%
		List<Hero> heros = (List<Hero>)request.getAttribute("heros");
		for (Hero hero : heros) {
		%>
		<tr>
			<td><%=hero.id %></td>
			<td><%=hero.name %></td>
			<td><%=hero.hp %></td>
			<td><%=hero.damage %></td>
			<td><a herf="editHero?id=${hero.id }">edit</a></td>
			<td><a herf="deleteHero?id=${hero.id }">delete</a></td>
			</tr>
		<%
		}
		%> --%>
 		<c:forEach items="${heros}" var="hero" varStatus="st">
			<tr>
				<td>${hero.id }</td>
				<td>${hero.name }</td>
				<td>${hero.hp }</td>
				<td>${hero.damage }</td>
				<td><a herf="editHero?id=${hero.id }">edit</a></td>
				<td><a herf="deleteHero?id=${hero.id }">delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>