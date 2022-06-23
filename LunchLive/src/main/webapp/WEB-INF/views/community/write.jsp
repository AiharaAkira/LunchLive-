<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
</head>
<body>
	<form action="write.do" method="post">
	<table border=1>
		<tr>
			<td><input name="c_title" placeholder="제목을 입력해주세요."></td>
		</tr>
		
		<tr>
			<td colspan="4"> <textarea name="c_contents" placeholder="내용을 입력해주세요."></textarea>></td>
		</tr>

	</table>
	<button value="${communities.c_no}" name="c_no">글쓰기</button>
	</form>
</body>
</html>