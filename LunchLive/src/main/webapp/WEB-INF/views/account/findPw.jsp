<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>
<script src="resources/js/jQuery.js" type="text/javascript"></script>
<script src="resources/js/validCheck.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/findPw.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

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