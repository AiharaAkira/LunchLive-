<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<script src="resources/js/jQuery.js" type="text/javascript"></script>
<script src="resources/js/validCheck.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/withrawal.css">
<title>LunchLive!</title>
</head>
<body>
	<div id="logo" onclick="location.href='http://localhost/lunchlive/'"><img src="resources/img/ll_logo.jpg"></div>
	
	<form id="login_box" action="withdrawal.do" method="post" onsubmit="return call();">

		<div id="withrawal_id_div" class="login_menu">아이디</div>
		<input class="input_login" id="u_id" name="u_id">

		<div class="login_menu">비밀번호</div>
		<input class="input_login" id="u_pw" name="u_pw">
		
		<div class="login_menu">비밀번호 확인</div>
		<input class="input_login" id="u_pwCheck" name="u_pwCheck">

		<div class="login_menu">닉네임</div>
		<input class="input_login" id="u_nickname" name="u_nickname">

		<br><button id="withdrawal_btn">회원탈퇴</button>
	</form>
	<div id="footer">footer</div>
	<script src="resources/js/withrawal.js" type="text/javascript"></script>
</body>
</html>