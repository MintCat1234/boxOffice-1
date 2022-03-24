<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="mainContainer" align="center">
	<table id="mainTable"  style="width: 70%">
		<tr>
			<th colspan="2">${review.mvTitle }</th><th colspan="3"><c:if test="${review.rvGrade == 1 }">평점 : ★</c:if>
			<c:if test="${review.rvGrade == 2 }">평점 : ★★</c:if><c:if test="${review.rvGrade == 3 }">평점 : ★★★</c:if><c:if test="${review.rvGrade == 4 }">평점 :★★★★</c:if>
			<c:if test="${review.rvGrade == 5 }">평점 : ★★★★★</c:if><c:if test="${review.rvGrade == 6 }">평점 : ★★★★★★</c:if><c:if test="${review.rvGrade == 7 }">평점 : ★★★★★★★★</c:if>
			<c:if test="${review.rvGrade == 8 }">평점 : ★★★★★★★★★</c:if><c:if test="${review.rvGrade == 9 }">평점 : ★</c:if><c:if test="${review.rvGrade == 10 }">평점 : ★★★★★★★★★★</c:if></th>
		</tr>
		<tr>
			<th>번호 : ${review.rvNum }</th><th>작성자 : ${review.id }</th><th>작성일 : ${review.rvDate }</th><th>조회수 : ${review.rvReadCount }</th><th>추천 : ${review.rvLike }</th>
		</tr>
		<tr>
			<th colspan="2">리뷰제목 :</th><th colspan="3">${review.rvTitle }</th>
		</tr>
	</table>
</div>
</body>
</html>