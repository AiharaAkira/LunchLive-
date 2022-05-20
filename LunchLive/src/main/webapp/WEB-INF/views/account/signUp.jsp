<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>
<link rel="stylesheet" href="resources/css/signUp.css">
<script src="resources/js/jQuery.js" type="text/javascript"></script>
<script src="resources/js/signUp.js" type="text/javascript"></script>
</head>
<body>
	<div id="logo" onclick="location.href='http://localhost/lunchlive/'"><img src="resources/img/ll_logo.png"></div>
	<form action="signUp.do" name="form" id="formSignUp" method="post" onsubmit="return call();">
	<div class="sign_input_wrap">
		<h3 class="sign_title">아이디</h3>
		<input class="sign_input_default" id="u_id" name="u_id"><button class="sign_check_btn" type="button" id="idck">아이디중복 검사</button><br>
	</div>
	<div class="sign_input_wrap">
		<h3 class="sign_title">비밀번호</h3>
		<input class="sign_input_default" id="u_pw" name="u_pw"><br>
	</div>
	<div class="sign_input_wrap">
		<h3 class="sign_title">pw확인</h3>
		<input id="u_pwCheck" class="sign_input_default"><br>
	</div>
	<div class="sign_input_wrap">
		<h3 class="sign_title">닉네임</h3>
		<input class="sign_input_default" name="u_nickname" id="u_nickname"><button class="sign_check_btn" type="button" id="nicknameck">닉네임중복 검사</button>
	</div>
	<div class="sign_input_wrap">
		<br><button id="sign_submit_btn">회원가입</button>
	</div>
	</form>
	<div id="footer">footer</div>
	<script src="resources/js/signUpValid.js" type="text/javascript"></script>

</body>
</html>