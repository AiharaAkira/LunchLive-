<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
</head>
<label onclick="location.href='http://alsdn3795.cafe24.com/'"> <img 
				src="resources/img/ll_logo.png" style="width: 70px;">
			</label>


	<form action="update.do" method="post" enctype="multipart/form-data">
	
	<table border=1>
	
		<tr>
			<td><input name="c_title" value="${communities.c_title}"></td>
			<td>${communities.c_like}</td>
			<td><fmt:formatDate value="${communities.c_date}" pattern="yyyy.MM.dd"/></td>
		</tr>
		<tr>
			<td> <input type="file" name="c_file"> </td>
		</tr>
		<tr>
			<td colspan="3"><input name="c_contents" value="${communities.c_contents}"></td>
		</tr>
	
	</table>
	
	
	
	<button value="${communities.c_no}" name="c_no">수정하기</button>
	</form>
	
<body>




</body>
</html>