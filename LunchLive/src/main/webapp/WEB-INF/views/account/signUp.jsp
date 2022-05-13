<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jQuery.js" type="text/javascript"></script>
<script src="resources/js/signUp.js" type="text/javascript"></script>
</head>
<body>
회원가입페이지
<form action="signUp.do">
아이디<div id="divInputId"><input id="u_id" name="u_id"></div>
<button type="button" id="idck">아이디중복 검사</button><br>
비밀번호<input id="u_pw"name="u_pw"><br>
pw확인<input><br>
닉네임<input name="u_nickname">
<button>회원가입</button>
</form>

</body>
</html>