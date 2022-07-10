<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">

<title>LunchLive!</title>

<link rel="stylesheet" href="resources/css/signUp.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">

<script src="resources/js/jQuery.js" type="text/javascript"></script>

</head>
<body>
	<div class="wrap">
        <div id="logo" class="logo_title" onclick="location.href='http://alsdn3795.cafe24.com/'">LUNCH LIVE</div>
        <div class="form-wrap">
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="location.href='http://alsdn3795.cafe24.com/login.do'" >로그인</button>
                <button type="button" class="togglebtn">회원가입</button>
            </div>
            <form id="formSignUp" action="signUp.do" method="post" class="input-group" onsubmit="return call();">
                <div style="display: flex;">
                    <input type="id" id="u_id" class="sign_input_default" placeholder="아이디" name="u_id">
                    <button type="button" id="idck" class="sign_check_btn">중복검사</button>
                </div>
                <input type="password" id="u_pw" class="sign_input_default" placeholder="비밀번호" name="u_pw">
                <input type="password" id="u_pwCheck" class="sign_input_default" placeholder="비밀번호 확인" name="u_pwCheck">
                <div style="display: flex;">
                    <input type="nickname" id="u_nickname" class="sign_input_default" placeholder="닉네임" name="u_nickname">
                    <button type="button" id="nicknameck" class="sign_check_btn">중복검사</button>
                </div>
                
                <button id="sign_submit_btn" class="submit" style="margin-top: 50px;">회원가입</button>
            </form>
        </div>
    </div>
</body>
	<script src="resources/js/signUp.js" type="text/javascript"></script>
	<script src="resources/js/signUpValid.js" type="text/javascript"></script>
</html>