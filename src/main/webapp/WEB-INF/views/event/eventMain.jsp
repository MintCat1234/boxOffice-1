<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div id="eventMain" align="center">
<table >
	<tr>
		<th>이벤트 번호</th>
		<th>이벤트명 </th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:if test="${empty list }">
		<tr><th colspan="5">진행중인 이벤트가 없습니다.</th></tr>
	</c:if>
	<c:if test="${not empty list }">
		<c:forEach var="event" items="${list }">
			<tr>
				<td>${event.evNum }</td>
				<td>${event.evTitle }</td>
				<td>${event.id }</td>
				<td>${event.evDate }</td>
				<td>${event.evReadCount }</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
</div>
<br>
<div id="pagebar" align="center">
	<c:if test="${startPage > PAGE_PER_BLOCK }">
		<button onclick="location.href='eventMain.ev?pageNum=${startPage-1}'">이전</button>
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<c:if test="${currentPage== i }">
			<button onclick="location.href='eventMain.ev?pageNum=${i}'" disabled="disabled">${i}</button>
		</c:if>
		<c:if test="${currentPage!= i }">
			<button onclick="location.href='eventMain.ev?pageNum=${i}'">${i}</button>
		</c:if>
	</c:forEach>
	<!-- 보여줄 것이 남아있다 -->
	<c:if test="${endPage < totalPage }">
		<button onclick="location.href='eventMain.ev?pageNum=${endPage+1}'">다음</button>
	</c:if>
<!-- num=0 처음 쓴글 -->
</div>
</body>
</html>