<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div onclick="location.href='http://localhost/lunchlive/'">logo</div>
	<form action="login.get?id=&pw=">
		<div>아이디<input name="u_id"></div>
		<div>비번<input name="u_pw"></div>
		<button >로그인</button>
	</form>
	
	<div onclick="location.href='http://localhost/lunchlive/findPw.do'">비밀번호 찾기</div>
	<div onclick="location.href='http://localhost/lunchlive/findId.do'">아이디 찾기</div>
	<div onclick="location.href='http://localhost/lunchlive/signUp.do'">회원가입</div>

</body>
</html>