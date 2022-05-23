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
<body>
<div id="header_wrap">
<div id="header_wrap_first">
	<ul><li><div id="logo" onclick="location.href='http://localhost/lunchlive/'"><img src="resources/img/ll_logo.png"></div></li><li id="af_login"><button onclick="location.href='http://localhost/lunchlive/login.do'" id="fa_login_btn">로그인</button></li></ul>
</div>
<div id="header_wrap_second">
	<a class="fa_menu" onclick="location.href='http://localhost/lunchlive/findId.go'">아이디찾기</a><a class="fa_menu" onclick="location.href='http://localhost/lunchlive/findPw.go'">비밀번호찾기</a>
</div>
</div>
<div id="fa_idpwbox_warraper">
	<jsp:include page="${findAccounts}"></jsp:include>
</div>
<div id="footer">footer</div>
</body>
</html>