<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="/members/new" method="post">
		이름 : <input type="text" name="name"> <br>
		아이디 : <input type="text" name="username"> <br>
		비밀번호 : <input type="password" name="password"> <br>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>