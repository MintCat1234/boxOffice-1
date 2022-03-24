<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/top.css?update" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">
	<div class="hd">
		<div class="ticket"><a href="#">예매</a></div>
		<div class="menu"><a href="#">영화정보</a>
			<ul class="menu2">
				<li><a href="#">예정</a></li>
				<li><a href="#">상영</a></li>
				<li><a href="#">종료</a></li>
			</ul>
		</div>
		<div class="menu"><a href="#">게시판</a>
			<ul class="menu2">
				<li><a href="reviewMain.rv">리뷰</a></li>
			</ul>
		</div>
		<div class="logo"><a href="main.do"><img alt="로고" src="images/logo/boxoffice.png" height="65px" width="65px"></a></div>
		<div class="menu">BoxOffice</div>
		<div class="signin">
			<c:if test="${empty id }">
				<a href="signInForm.do">로그인</a>
			</c:if>
			<c:if test="${not empty id }">
				<div style="color: #F95700;">"${id }"님
					<ul class="si">
						<li><a href="myPage.si">마이페이지</a></li>
						<li><a href="logout.si">로그아웃</a></li>
					</ul>
				</div>
			</c:if>
			<c:if test="${id eq 'master' }">
				<div style="color: #F95700;">관리자 님
					<ul class="si">
						<li><a href="#">???</a></li>
						<li><a href="#">???</a></li>
						<li><a href="#">???</a></li>
					</ul>
				</div>
			</c:if>	
		</div>
	</div>
</div>
</body>
</html>