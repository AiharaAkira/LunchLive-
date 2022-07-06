<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<td>${communities.c_like}</td>
			<td><fmt:formatDate value="${communities.c_date}" pattern="yyyy.MM.dd"/></td>
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