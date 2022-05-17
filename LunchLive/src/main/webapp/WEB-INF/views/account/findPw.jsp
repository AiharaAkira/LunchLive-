<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jQuery.js" type="text/javascript"></script>
<script src="resources/js/validCheck.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/findPw.css">
</head>
<body>
<form id="form" action="findPw.do" method="post" onsubmit="return call();">
	<div class="fp_txt">아이디</div><input id="u_id" class="fp_input" name="u_id"><br>
	<div class="fp_txt">새 비밀번호</div><input id="u_pw" class="fp_input" name="u_pw"><br>
	<div class="fp_txt">새 비밀번호 확인</div><input id="u_pwCheck" class="fp_input"><br>
	<button id="fp_submit_btn">비밀번호 바꾸기</button>
</form>
<script src="resources/js/findPw.js" type="text/javascript"></script>
</body>
</html>