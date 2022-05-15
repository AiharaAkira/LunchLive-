<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
[${sessionScope.loginAccount.u_nickname}]님 환영합니다
<button onclick="location.href='http://localhost/lunchlive/logOut.do'">로그아웃</button>

</body>
</html>