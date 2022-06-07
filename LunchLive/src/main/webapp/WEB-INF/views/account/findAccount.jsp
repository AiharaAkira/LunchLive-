<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>
</head>
<link rel="stylesheet" href="resources/css/findAccount.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<body>
<div id="header_wrap">
<div id="header_wrap_first">
	<ul><li><div id="logo" onclick="location.href='http://alsdn3795.cafe24.com/'"><span>LunchLive!</span></div></li><li id="af_login"><button onclick="location.href='http://alsdn3795.cafe24.com/login.do'" id="fa_login_btn">로그인</button></li></ul>
</div>
<div id="header_wrap_second">
	<a class="fa_menu" onclick="location.href='http://alsdn3795.cafe24.com/findId.go'">아이디찾기</a><a class="fa_menu" onclick="location.href='http://alsdn3795.cafe24.com/findPw.go'">비밀번호찾기</a>
</div>
</div>
<div id="fa_idpwbox_warraper">
	<jsp:include page="${findAccounts}"></jsp:include>
</div>
<div id="footer"></div>
</body>
</html>