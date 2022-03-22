<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="reviewMain" align="center">
		<form action="reviewWrite.rv" name="rvForm" id="rvForm">
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
					<td>${movieTitle}</td>
				</tr>
				<tr>
					<th>평점</th>
					<td><select name="rvDrade">
						<option value="1">★</option>
						<option value="2">★★</option>
						<option value="3">★★★</option>
						<option value="4">★★★★</option>
						<option value="5">★★★★★</option>
					</select></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="5" cols="60" name="rvContent"></textarea></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="작성" /></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>