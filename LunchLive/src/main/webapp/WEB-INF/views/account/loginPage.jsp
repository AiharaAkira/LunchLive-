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
	<div class="wrap">
        <div id="logo" class="logo_title" onclick="location.href='http://alsdn3795.cafe24.com/'">LUNCH LIVE</div>
        <div class="form-wrap">
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn">로그인</button>
                <button type="button" class="togglebtn" onclick="location.href='http://alsdn3795.cafe24.com/terms.go'" >회원가입</button>
            </div>
            <form id="form" class="input-group" name="form" action="login.get" method="post" onsubmit="return call();">
                <input type="text" name="u_id" id="input_login_id" class="input_login" placeholder="아이디">
                <input type="password" name="u_pw" id="input_login_pw" class="input_login" placeholder="비밀번호" style="margin-bottom: 30px;">
                <a href="http://alsdn3795.cafe24.com/findId.go" id="login_menu_find_id" class="login_menu">아이디 찾기</a><a href="http://alsdn3795.cafe24.com/findPw.go" class="login_menu">비밀번호 찾기</a>
                <button id="login_btn" class="submit" style="margin-top: 30px;">로그인</button>
            </form>
            
        </div>
    </div>
	
</body>
<script src="resources/js/loginPage.js" type="text/javascript"></script> 
</html>