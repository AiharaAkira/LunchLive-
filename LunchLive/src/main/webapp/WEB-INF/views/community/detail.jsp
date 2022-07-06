<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LunchLive!</title>
</head>

	<table border=1>
	
		<tr>
			<td>${communities.c_title}</td>
			<td>${communities.c_like}</td>
			<td><fmt:formatDate value="${communities.c_date}" pattern="yyyy.MM.dd"/></td>
		</tr>
		
		<tr>
			<td colspan="3">${communities.c_contents}</td>
		</tr>
		
	
	</table>


	
	
	<c:if test="${sessionScope.loginAccount != null}"><button type="button" onclick="location.href='http://localhost/lunchlive/update.go?c_no=${communities.c_no}'">수정하기</button></c:if>
	<c:if test="${sessionScope.loginAccount != null}"><button type="button" onclick="location.href='http://localhost/lunchlive/delete.do?c_no=${communities.c_no}'">삭제하기</button></c:if>
	
<body>




</body>
</html>