<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="reviewWrete.rv" align="center">
		<form action="reviewWrite.rv" name="rvForm" id="rvForm">
		<input type="hidden" name="rvNum" value="${rvNum }">
		<input type="hidden" name="rvLike" value="${rvLike }">
		<input type="hidden" name="rvReadCount" value="${rvReadCount }">
			<table border="1">
				<caption>리뷰작성</caption>
				<tr>
					<th>제목</th>
					<td><input type="text" name="rvTitle" required="required"
						autofocus="autofocus" size="60"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${id }</td>
				</tr>
				<tr>
					<th>영화제목</th>
					<td><select name="mvTitle" required="required">
						<option value="스파이더맨 노 웨이 홈">스파이더맨 노 웨이 홈</option>
						<option value="극장판 주술회전 0">극장판 주술회전 0</option>
						<option value="더 배트맨">더 배트맨</option>
						<option value="씽2게더">씽2게더</option>
						<option value="이상한 나라의 수학자">이상한 나라의 수학자</option>
						<option value="문폴">문폴</option>
					</select></td>
				</tr>
				<tr>
					<th>평점</th>
					<td><select name="rvGrade" required="required">
						<option value="1">★</option>
						<option value="2">★★</option>
						<option value="3">★★★</option>
						<option value="4">★★★★</option>
						<option value="5">★★★★★</option>
					</select></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="5" cols="60" name="rvContent" required="required"></textarea></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="작성" /></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>