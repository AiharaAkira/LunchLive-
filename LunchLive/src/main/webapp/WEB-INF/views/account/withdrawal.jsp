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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">

<title>LunchLive!</title>
</head>
<body>
	<div id="logo" onclick="location.href='http://localhost/lunchlive/'"><img src="resources/img/ll_logo.png"></div>
	
	<form id="login_box" action="withdrawal.do" method="post" onsubmit="return call();">

		<div id="withrawal_id_div" class="login_menu">아이디</div>
		<input class="input_login" id="u_id" name="u_id">
		
		<div class="login_menu">닉네임</div>
		<input class="input_login" id="u_nickname" name="u_nickname">

		<br><button id="withdrawal_btn">회원탈퇴</button>
	</form>
	<div id="footer">footer</div>
	<script src="resources/js/withrawal.js" type="text/javascript"></script>
</body>
</html>