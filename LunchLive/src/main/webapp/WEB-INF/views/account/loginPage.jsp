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
		<form action="login.get" method="post">


			<div>
				<input placeholder="아이디" id="input_login_id" class="input_login"
					name="u_id">
			</div>
			<div>
				<input placeholder="비밀번호" class="input_login" name="u_pw">
			</div>
			<button id="login_btn">로그인</button>
		</form>
	</div>



	<div>
		<a href="http://localhost/lunchlive/findPw.go" id="login_menu_find_id"
			class="login_menu">비밀번호 찾기</a> 
		<a href="http://localhost/lunchlive/findId.go" class="login_menu">아이디 찾기</a> 
		<a href="http://localhost/lunchlive/terms.go" class="login_menu">회원가입</a>
	</div>
	<br>
	<div>footer</div>
</body>
</html>