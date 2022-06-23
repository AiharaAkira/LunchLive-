<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
</head>

	<table border=1>
		<tr>
			<td>${communities.c_title}</td>
			<td>${communities.c_like}<td>
			<td>${communities.c_date}</td>
		</tr>

		<tr>
			<td colspan="4">${communities.c_contents}</td>
		</tr>

	</table>
	
	<button type="button" onclick="location.href='http://localhost/lunchlive/update.go?c_no=${communities.c_no}'">수정하기</button>
	<button type="button" onclick="location.href='http://localhost/lunchlive/delete.do?c_no=${communities.c_no}'">삭제하기</button>
	
<body>




</body>
</html>