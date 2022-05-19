<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<title>LunchLive!</title>
<link rel="stylesheet" href="resources/css/terms.css">
<script src="resources/js/validCheck.js" type="text/javascript"></script>
</head>
<body>
	<div id="logo" onclick="location.href='http://localhost/lunchlive/'"><img src="resources/img/ll_logo.jpg"></div>
	<form action="signUp.go" onsubmit="return call();">
	<div class="terms_div" id="terms_div_first">
		<h3 class="article_title">제1약관</h3>
		<p>약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관</p>
	</div>
	<input id="check1" type="checkbox">동의합니다
	<div class="terms_div">
		<h3 class="article_title">제2약관</h3>
		<p>약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관</p>
	</div>
	<input id="check2" type="checkbox">동의합니다
	<div class="terms_div">
		<h3 class="article_title">제3약관</h3>
		<p>약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관
		약관약관약관약관약관약관약관약관약관약관약관약관약관</p>
	</div>
	<input id="check3" type="checkbox">동의합니다<br>
	<button onclick="location.href='http://localhost/lunchlive/'" class="terms_btn_default" type="button">취소</button><button id="terms_btn_accept" class="terms_btn_default">확인</button>
	</form>
<div >footer</div>
<script src="resources/js/terms.js" type="text/javascript"></script>
</body>
</html>