<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/findAccount.css">
<body>
<div id="header_wrap">
<div id="header_wrap_first">
	<ul><li><a>logo</a></li><li id="af_login"><jsp:include page="${login}"></jsp:include></li></ul>
</div>
<div id="header_wrap_second">
	<a class="fa_menu" onclick="location.href='http://localhost/lunchlive/findId.go'">아이디찾기</a><a class="fa_menu" onclick="location.href='http://localhost/lunchlive/findPw.go'">비밀번호찾기</a>
</div>
</div>
<div>
	<jsp:include page="${findAccounts}"></jsp:include>
</div>
<div id="fa_footer">footer</div>
</body>
</html>