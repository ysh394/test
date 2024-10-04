<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="joinAgree">
	
		<header id="header">
			<a href="/index">
				<img src="/img/logo.png" alt="NAVER">
			</a>
		</header>
		<!-- header#header -->
		
		<main id="main">
			<div id="chkAllArea">
				<label>
					<input type="checkbox" class="chkAgree" id="chkAll">
					<span>전체 동의하기</span>
				</label>
				<span>
					실명 인증된 아이디로 가입, 위치기반서비스 이용약관(선택), 
					이벤트・혜택 정보 수신(선택) 동의를 포함합니다.
				</span>
			</div>
			<!-- div#chkAllArea -->
			
			<div class="agreeDiv">
				<label id="reqLabel1">
					<input type="checkbox" class="chkAgree agreeChk reqChk" id="reqChk1">
					<span class="grnNd">[필수]</span> 
					<span class="agrTitle">클로버 이용약관</span>	
				</label>
				<iframe src="/joinAgree/joinAgreement01.html" style="height: 110px"></iframe>
			</div>
			<!-- div.agreeDiv [필수] 네이버 이용약관 -->
			
			<div class="agreeDiv">
				<label id="reqLabel2">
					<input type="checkbox" class="chkAgree agreeChk reqChk" id="reqChk2">
					<span class="grnNd">[필수]</span> 
					<span class="agrTitle">개인정보 수집 및 이용</span>	
				</label>
				<iframe src="/joinAgree/joinAgreement02.html" style="height: 110px"></iframe>
			</div>
			<!-- div.agreeDiv [필수] 개인정보 수집 및 이용 -->
			
			<div class="agreeDiv">
				<label>
					<input type="checkbox" class="chkAgree agreeChk">
					<span class="gryCho">[선택]</span> 
					<span class="agrTitle">실명 인증된 아이디로 가입</span>	
				</label>
				<iframe src="/joinAgree/joinAgreement03.html" style="height: 90px"></iframe>
			</div>
			<!-- div.agreeDiv [선택] 실명 인증된 아이디로 가입 -->
			
			<div class="agreeDiv">
				<label>
					<input type="checkbox" class="chkAgree agreeChk">
					<span class="gryCho">[선택]</span> 
					<span class="agrTitle">위치기반서비스 이용약관</span>	
				</label>
				<iframe src="/joinAgree/joinAgreement04.html" style="height: 110px"></iframe>
			</div>
			<!-- div.agreeDiv [선택] 위치기반서비스 이용약관 -->
			
			<div class="agreeDiv">
				<label>
					<input type="checkbox" class="chkAgree agreeChk" id="otherChk">
					<span class="gryCho">[선택]</span> 
					<span class="agrTitle">개인정보 수집 및 이용</span>	
				</label>
				<label id="joinEventAgr">
					<input type="checkbox" class="agreeChk" id="otherSubChk">
					<span>이벤트 · 혜택 정보 수신</span> 
				</label>
				<div id="notAgrMsg">
					클로버 혜택 정보를 받으시려면 '개인정보 수집 및 이용'에 동의해 주세요.
				</div>
			</div>
			<!-- div.agreeDiv [선택] 개인정보 수집 및 용 -->
		</main>
		<!-- main#main -->
		
	</div>
	<!-- div#wrap -->
	
	<footer id="joinAgreeFooter">
		<button class="chkNext" id="chkNextGray">다음</button>
		<button class="chkNext" id="chkNextGrn">다음</button>
	</footer>
	<!-- footer#joinAgreeFooter -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    