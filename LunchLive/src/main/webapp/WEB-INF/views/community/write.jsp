<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
</head>
<body>
<label onclick="location.href='http://alsdn3795.cafe24.com/'"> <img
				src="resources/img/ll_logo.png" style="width: 70px;">
			</label>

	<form action="write.do" method="post" enctype="multipart/form-data" >
	<table border=1>
		<tr>
			<td><input name="c_title" placeholder="제목을 입력해주세요."></td>
		</tr>
		<tr>
			<td><input name="c_file" type="file"></td>
		</tr>
		
		<tr>
			<td colspan="4"> <textarea name="c_contents" placeholder="내용을 입력해주세요."></textarea>></td>
		</tr>
		
		<input type="hidden" name="u_id" value="${sessionScope.loginAccount.u_id}">

	</table>
	<button value="${communities.c_no}" name="c_no">글쓰기</button>
	</form>
</body>
</html>