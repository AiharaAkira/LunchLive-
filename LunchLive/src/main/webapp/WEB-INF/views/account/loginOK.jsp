<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>
<link rel="stylesheet" href="resources/css/loginOk.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">
</head>
<body>
[${sessionScope.loginAccount.u_nickname}]님 환영합니다
<button id="loginOk_logOut_btn" onclick="location.href='http://localhost/lunchlive/logOut.do'">로그아웃</button>

</body>
</html>