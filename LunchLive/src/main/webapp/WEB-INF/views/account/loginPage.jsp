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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/loginPage.css"></link>
</head>
<body>
	<div id="logo" onclick="location.href='http://alsdn3795.cafe24.com/'"><img src="resources/img/ll_logo.png"></div>

	<div id="login_box">
		<form id="form" name="form" action="login.get" method="post" onsubmit="return call();">


			<div>
				<input placeholder="아이디" id="input_login_id" class="input_login"
					name="u_id">
			</div>
			<div>
				<input type="password" placeholder="비밀번호" class="input_login" id="input_login_pw" name="u_pw">
			</div>
			<button id="login_btn">로그인</button>
		</form>
	</div>



	<div>
		<a href="http://alsdn3795.cafe24.com/findPw.go" id="login_menu_find_id"
			class="login_menu">비밀번호 찾기</a> 
		<a href="http://alsdn3795.cafe24.com/findId.go" class="login_menu">아이디 찾기</a> 
		<a href="http://alsdn3795.cafe24.com/terms.go" class="login_menu">회원가입</a>
	</div>
	<br>
	<div id="footer"></div>
	<script src="resources/js/loginPage.js" type="text/javascript"></script> 
</body>
</html>