<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>내 정보</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="infoHead"></div>
	<div id="wrap" class="myInfoPage">
		
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
		
			<h2>회원정보 수정</h2>
			
			<form action="/myInfo/mtdMod" id="mtdMod"></form>
			
			<section>
				<div id="unamePrn">
					<span>이름</span>
					<input type="text" id="unameMod" name="unameMod" 
						value="${mtdMyInfo.uname}" form="mtdMod">
					<p>
						※ 한글, 영문 대/소문자를 사용해 주세요. (특수기호, 공백 사용 불가)
					</p>
				</div>
				<!-- div#unamePrn -->
			
				<div id="memIDPrn">
					<span>아이디</span>
					<input type="text" name="memID" value="${mtdMyInfo.memID}" 
						readonly form="mtdMod">
					<p>
						※ 아이디는 수정이 불가합니다.
					</p>						
				</div>
				<!-- div#memIDPrn -->
				
				<div id="memPWPrn">
					<span>비밀번호</span>
					<form action="/myInfo/memPWMod">
						<input type="hidden" name="memPW" value="${mtdMyInfo.memPW}">
						<input type="hidden" name="memID" value="${mtdMyInfo.memID}">
						<button id="pwModBtn">변경하기</button>
					</form>
				</div>
				<!-- div#memPWPrn -->
				
				<div id="emailPrn">
					<span>이메일</span>
					<input type="text" id="emailMod" name="emailMod" 
						value="${mtdMyInfo.email}" form="mtdMod">
				</div>
				<!-- div#emailPrn -->
				
				<div id="birthPrn">
					<span>생일</span>
						<input type="text" id="birthMod" name="birthMod" 
							value="${mtdMyInfo.birth}" form="mtdMod">
					<p>
						※ 생년월일은 8자리 숫자로 입력해 주세요.
					</p>
				</div>
				<!-- div#birthPrn -->
				
				<div id="genderPrn">
					<span>성별</span>	
					<input type="hidden" value="${mtdMyInfo.gender}" id="myGender">
					<label class="genderSel">
						<input type="radio" name="genderMod" id="man"
							checked value="남자" form="mtdMod">
						<span>남자</span>
					</label>			
					<label class="genderSel">
						<input type="radio" name="genderMod" id="woman"
							value="여자" form="mtdMod">
						<span>여자</span>
					</label>
				</div>
				<!-- div#genderPrn -->
				
				<div id="regionPrn">
					<span>국적</span>	
					<input type="hidden" value="${mtdMyInfo.region}" id="myRegion">		
					<label class="regionSel">
						<input type="radio" name="regionMod" id="inRegion" 
							checked value="내국인" form="mtdMod">
						<span>내국인</span>
					</label>
					<label class="regionSel">
						<input type="radio" name="regionMod" id="outRegion" 
							value="외국인" form="mtdMod">
						<span>외국인</span>
					</label>	
				</div>
				<!-- div#regionPrn -->
				
				<div id="phonePrn">
					<span>휴대전화번호</span>
					<input type="hidden" value="${mtdMyInfo.agency}" id="myAgency">
					<select name="agencyMod" id="agencyMod" form="mtdMod">
						<option value="SKT" id="myAgSKT1" selected>SKT</option>
						<option value="KT" id="myAgKT1">KT</option>
						<option value="LG U+" id="myAgLG1">LG U+</option>
						<option value="SKT 알뜰폰" id="myAgSKT2">SKT 알뜰폰</option>
						<option value="KT 알뜰폰" id="myAgKT2">KT 알뜰폰</option>
						<option value="LG U+ 알뜰폰" id="myAgLG2">LG U+ 알뜰폰</option>
					</select>
					<input type="text" id="phoneMod" name="phoneMod" 
						value="${mtdMyInfo.phone}" form="mtdMod">
					<p>
						※ 휴대전화번호는 숫자만 입력해 주세요.
					</p>
				</div>
				<!-- div#phonePrn -->
			</section>
			
		</main>
		<!-- main#main -->
		
		<footer id="footer">
			<button type="button" id="modBtn" form="mtdMod">수정하기</button>	
			<button type="button" id="delBtn" form="mtdDel">회원탈퇴</button>
			<input type="hidden" name="memID" value="${mtdMyInfo.memID}" form="mtdDel">
		</footer>
		<!-- footer#footer -->
		
		<form action="/myInfo/mtdDel" id="mtdDel"></form>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    