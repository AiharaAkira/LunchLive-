<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/loginPage.css"></link>
</head>
<body>
	<div id="logo" onclick="location.href='http://localhost/lunchlive/'">logo</div>

	<div id="login_box">
		<form action="login.get">


			<div>
				<input placeholder="아이디" id="input_login_id" class="input_login" name="u_id">
			</div>
			<div>
				<input placeholder="비밀번호" class="input_login" name="u_pw">
			</div>
			<button id="login_btn">로그인</button>
		</form>
	</div>



	<div>
		<span id="login_menu_find_id" class="login_menu"
			onclick="location.href='http://localhost/lunchlive/findPw.do'">비밀번호
			찾기</span> <span class="login_menu"
			onclick="location.href='http://localhost/lunchlive/findId.do'">아이디
			찾기</span> <span class="login_menu"
			onclick="location.href='http://localhost/lunchlive/signUp.go'">회원가입</span>
	</div>
	<br>
	<div>footer</div>
</body>
</html>