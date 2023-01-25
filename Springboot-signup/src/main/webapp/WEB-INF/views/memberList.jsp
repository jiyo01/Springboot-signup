<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div>
	<table border="1">
	<thead>
		<tr>
			<th>#</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="member" items="${members}">
		<tr>
			<td><c:out value="${member.id}"/></td>
			<td><c:out value="${member.name}"/></td>
			<td><c:out value="${member.username}"/></td>
			<td><c:out value="${member.password}"/></td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
</div>
</div>
</body>
</html>