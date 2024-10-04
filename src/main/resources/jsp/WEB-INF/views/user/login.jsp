<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="login">
		<header id="header">
			<a href="/index">
				<img src="/img/logo.png" alt="NAVER">
			</a>
		</header>
		<!-- header#header -->
		
		<main id="loginMain"> 
			<nav id="loginGnb">
				<ul id="loginMainMenu" class="dFlex">
					<li class="mainLi"><a href="#">ID 로그인</a></li>
					<li class="mainLi"><a href="#">일회용 번호</a></li>
					<li class="mainLi"><a href="#">QR코드</a></li>
				</ul>
			</nav>
			<!-- nav#loginGnb -->
			
			<form action="/user/loginProc" id="loginForm">	
				<div id="loginForm">
					<div id="uidInsArea">
						<input type="text" placeholder="아이디" required id="uid" name="uid">
						<span id="uidCloseIcon">&times;</span>
					</div>
					<div id="upwInsArea">
						<input type="password" placeholder="비밀번호" required id="upw" name="upw">
						<span id="upwCloseIcon">&times;</span>
					</div>
				</div>
				<div id="loginMgrArea" class="dFlex">
					<label>
						<img src="/img/loginStillOff.png" alt="로그인상태유지" id="logStilImg">
						<span>로그인 상태 유지</span>
					</label>
					<div id="ipSecurity">
						<img src="/img/LoginIPOff.png" alt="IP_Off" id="secImg">
					</div>
				</div>
				<div id="alertMsgID" class="alertMsg">
					<span>아이디</span>를 입력해 주세요.
				</div>
				<div id="alertMsgPW" class="alertMsg">
					<span>비밀번호</span>를 입력해 주세요.
				</div>
				<div id="btnArea">
					<button type="submit" id="loginBtn">로그인</button>
				</div>
			</form>
			<!-- form#loginForm -->
			
			<nav id="loginLnb">
				<ul id="loginLnbMenu" class="dFlex">
					<li class="loginLnbLi"><a href="#">비밀번호 찾기</a></li>
					<li class="loginLnbLi">|</li>
					<li class="loginLnbLi"><a href="#">아이디 찾기</a></li>
					<li class="loginLnbLi">|</li>
					<li class="loginLnbLi"><a href="/user/joinAgree">회원가입</a></li>
				</ul>
			</nav>
			<!-- nav#loginLnb -->
			
			<div id="loginAddArea">
				<img src="/img/loginAdd.png" alt="광고">
			</div>
			<!-- div#loginAddArea -->
		</main>
		<!-- main#loginMain -->
		
		<footer id="footer">
			<nav id="footerLnb">
				<ul id="footerLnbMenu" class="dFlex">
					<li class="footerLnbLi"><a href="#">이용약관</a></li>
					<li class="footerLnbLi">|</li>
					<li class="footerLnbLi"><a href="#">개인정보처리방침</a></li>
					<li class="footerLnbLi">|</li>
					<li class="footerLnbLi"><a href="#">책임의 한계와 법적고지</a></li>
					<li class="footerLnbLi">|</li>
					<li class="footerLnbLi"><a href="#">회원정보 고객센터</a></li>
				</ul>
			</nav>
			<!-- nav#footerLnb -->
			<div id="footerCopy" class="dFlex">
				<a href="/index">
					<img src="/img/logo.png" alt="NAVER">
				</a>
				<span>Copyright</span>
				<span>&copy; CLOVER Corp.</span>
				<span>All Rights Reserved.</span>
			</div>
			<!-- div#footerCopy -->
		</footer>
		<!-- footer#footer -->
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    
