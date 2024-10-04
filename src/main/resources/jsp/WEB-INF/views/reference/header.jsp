<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
		<hr class="position Hr1">
		<hr class="position Hr2">
		
		<header id="header">

		<div id="topLeft" class="dFlex">
			<div>
			<a href="/index"><img src="../img/logo.png" alt="이미지"></a>
			<h1>웹툰</h1>
			</div>

			<div id="LogInOut">
				<a href="/myInfo/myInfoPage?uid=${uid }"><span id="userName">${uid }</span></a>
				<button id="userLogOut">로그아웃</button>
				<button id="userLogIn">로그인</button>
			</div>
		</div>
		<!-- 		div#topLeft -->

		<div id="gnb">

			<div id="gnbWid">
				<a href="/index"><span>홈</span></a>
				<a href="/webtoon"><span>웹툰</span> </a>
				<a href="/myPage/mypageMain"><span>마이페이지</span></a>

			</div>
			<!-- 			div#gnbWid -->
	
		</div>
		<!-- div#gnb -->

	</header>
	<!-- 	header#header	 -->
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	
</body>
</html>
