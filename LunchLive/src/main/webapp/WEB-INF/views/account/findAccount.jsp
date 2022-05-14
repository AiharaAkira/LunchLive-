<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><a>logo</a><jsp:include page="${login}"></jsp:include></div>
<div><a onclick="location.href='http://localhost/lunchlive/findId.go'">아이디찾기</a><a onclick="location.href='http://localhost/lunchlive/findPw.go'">비밀번호찾기</a></div>
<div><jsp:include page="${findAccounts}"></jsp:include></div>

</body>
</html>