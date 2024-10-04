<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>ID 중복체크</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="joinSuccess">
		
		<header id="header">
			<a href="/index">
				<img src="/img/logo.png" alt="NAVER">
			</a>
		</header>
		<!-- header#header -->
		
		<main id="joinSucMain">
			
			<div id="welDiv">
				<img src="/img/joinCheck.png" alt="회원가입 완료">
				<h2>회원가입 완료!</h2>
				<h1>${memID}님,<br>환영합니다!</h1>
			</div>
			<!-- div#welDiv -->
			
			<div id="joinSucBtnArea">
				<button id="goMainBtn" type="button">웹툰 메인가기</button>
				<button id="goUserLogin" type="button">로그인하러 가기</button>
			</div>
			<!-- div#joinSucBtnArea -->
			
		</main>
		<!-- main#joinSucMain -->
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    