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
<link rel="stylesheet" href="resources/css/findId.css">
</head>
<body>

<form id="form" action="findId.do" method="POST" onsubmit="return call();">
	<div class="fp_txt">닉네임</div><input id="u_nickname" class="fp_input" name="u_nickname">
	<br><button id="fp_submit_btn">아이디찾기</button>
</form>
<script src="resources/js/findId.js" type="text/javascript"></script>

</body>
</html>