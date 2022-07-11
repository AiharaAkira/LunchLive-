<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/img/web_icon_ll.png">
<meta charset="UTF-8">
<title>LunchLive!</title>
</head>
<label onclick="location.href='http://alsdn3795.cafe24.com/'"> <img
				src="resources/img/ll_logo.png" style="width: 70px;">
			</label>
	<table border=1>
	
		<tr>
			<td>${communities.c_title}</td>
			<td>${communities.c_like}</td>
			<td><fmt:formatDate value="${communities.c_date}" pattern="yyyy.MM.dd"/></td>
		</tr>
		<tr>
			<td> <img src="resources/file/${communities.c_file}" width="500px"> </td>
		</tr>
		<tr>
			<td colspan="3">${communities.c_contents}</td>
		</tr>
		
	
	</table>


	
	
	<c:if test="${sessionScope.loginAccount != null}"><button type="button" onclick="location.href='http://alsdn3795.cafe24.com/update.go?c_no=${communities.c_no}'">수정하기</button></c:if>
	<c:if test="${sessionScope.loginAccount != null}"><button type="button" onclick="location.href='http://alsdn3795.cafe24.com/delete.do?c_no=${communities.c_no}'">삭제하기</button></c:if>
	
<body>




</body>
</html>