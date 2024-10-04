<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>비밀번호 변경하기</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
<div id="infoHead"></div>
	<div id="wrap" class="memPWMod">
		
		<header id="header">
			<div id="infoHeader" class="dFlex">
				<a href="/index">
					<img src="/img/logo2.png" alt="NAVER">
				</a>
				<h2>내정보</h2>
			</div>
		</header>
		<!-- header#header -->
		
		<main id="main">
			<h2>비밀번호 변경하기</h2>
		
		<section>
			<form action="/myInfo/memPWModProc" id="memPWModForm">
				<input type="hidden" name="memID" id="memID" value="${memID}">
				<label>
					<span>기존 비밀번호</span>
					<input type="text" name="memPW" required id="memPW">	
				</label>
				<label>
					<span>변경할 비밀번호</span>
					<input type="text" name="memPWMod" required id="memPWMod">		
					<span>
						※ 비밀번호는 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요. 		
					</span>
				</label>
				<div id="memPWModBtnArea">
					<button id="memPWModProcBtn" type="button">변경하기</button>
				</div>
			</form>
		</section>
		
		</main>
		<!-- main#main -->
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    