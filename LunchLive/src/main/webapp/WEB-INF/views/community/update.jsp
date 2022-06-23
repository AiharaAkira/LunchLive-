<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
</head>

	<form action="update.do" method="post">
	<table border=1>
		<tr>
			<td><input name="c_title" value="${communities.c_title}"></td>
			<td>${communities.c_like}<td>
			<td>${communities.c_date}</td>
		</tr>
		
		<tr>
			<td colspan="4"> <input name="c_contents" value="${communities.c_contents}"></td>
		</tr>

	</table>
	<button value="${communities.c_no}" name="c_no">수정하기</button>
	</form>
	
<body>




</body>
</html>