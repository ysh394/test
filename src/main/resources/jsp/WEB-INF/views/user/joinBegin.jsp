<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="joinBegin">

		<header id="header">
			<a href="/index"> 
				<img src="/img/logo.png" alt="NAVER">
			</a>
		</header>
		<!-- header#header -->

		<main id="main">
			<form action="/user/joinProc" id="joinProc">
				<div id="joinForm">		
					<div id="joinFormList">
						<div id="joinItemUid" class="dFlex">
							<img src="/img/joinID.png" alt="ID">
							<input type="text" placeholder="아이디" 
								required readonly id="memID" name="memID" maxlength="20">
							<button id="idDupChkBtn">ID 중복체크</button>
						</div>
						<!-- div#joinItemUid -->
						
						<div id="joinItemUpw" class="dFlex">
							<img src="/img/joinPW.png" alt="PW">
							<input type="password" placeholder="비밀번호" 
								required id="memPW" name="memPW" maxlength="16"> 
						</div>
						<!-- div#joinItemUpw -->
						
						<div id="joinItemMail" class="dFlex">
							<img src="/img/joinMail.png" alt="Mail">
							<input type="text" name="email" id="email"
								placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)"> 
						</div>
						<!-- div#joinItemMail -->
					</div>
					<!-- div#joinFormList -->
					
					<div class="errArea">
						<ul class="errMsg">
							<li class="errMsgLi" id="idErr">
								아이디: 필수 정보입니다.
							</li>
							<li class="errMsgLi pwErr" id="pwErr1">
								비밀번호: 필수 정보입니다.
							</li>
							<li class="errMsgLi pwErr" id="pwErr2">
								비밀번호: 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
							</li>
							<li class="errMsgLi" id="emailErr">
								이메일: 이메일 주소가 정확한지 확인해 주세요.
							</li>
						</ul>
					</div>
					<!-- div.errArea -->
					
					<div id="joinFormIns">
						<div id="joinItemUname" class="dFlex">
							<img src="/img/joinID.png" alt="name">
							<input type="text" placeholder="이름" required id="uname" name="uname">
						</div>
						<!-- div#joinItemUname -->
						
						<div id="joinItemBirth" class="dFlex">
							<img src="/img/joinBirth.png" alt="PW">
							<input type="text" placeholder="생년월일 8자리" 
							required id="birth" name="birth" maxlength="8"> 
						</div>
						<!-- div#joinItemBirth -->
						
						<div id="joinItemAgency" class="dFlex">
							<img src="/img/joinAgency.png" alt="Mail">
							<input type="text" id="agency" name="agency" 
								readonly required placeholder="통신사 선택"> 
							<span class="wideIcon">
								<img src="/img/joinWideDown.png" alt="Wide" id="agencyWide">
							</span>
							<ul id="telecom" class="dFlex">
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>SKT</span>
									</label>
								</li>
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>SKT알뜰폰</span>
									</label>
								</li>
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>KT</span>
									</label>
								</li>
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>KT 알뜰폰</span>
									</label>
								</li>
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>LG U+</span>
									</label>
								</li>
								<li class="telecomLi">
									<label>
										<input type="radio" name="agencyLi">
										<span>LG U+ 알뜰폰</span>
									</label>
								</li>
							</ul>
						</div>
						<!-- div#joinItemAgency -->
						
						<div id="joinItemGenReg" class="dFlex"> 
							<ul id="genderSel" class="dFlex">
								<li class="genderLi">
									<label class="selected">
										<input type="radio" name="gender" checked value="남자">
										<span>남자</span>
									</label>
								</li>
								<li class="genderLi">
									<label>
										<input type="radio" name="gender" value="여자">
										<span>여자</span>
									</label>
								</li>
							</ul>
							
							<ul id="regionSel" class="dFlex">
								<li class="regionLi">
									<label class="selected">
										<input type="radio" name="region" checked value="내국인">
										<span>내국인</span>
									</label>
								</li>
								<li class="regionLi">
									<label>
										<input type="radio" name="region" value="외국인">
										<span>외국인</span>
									</label>
								</li>
							</ul>
						</div>
						<!-- div#joinItemGenReg -->
						
						<div id="joinItemPhone" class="dFlex">
							<img src="/img/joinPhone.png" alt="phone">
							<input type="text" placeholder="휴대전화번호" required id="phone" name="phone">
						</div>
						<!-- div#joinItemPhone -->
					</div>
					<!-- div#joinFormIns -->	
					
					<div class="errArea">
						<ul class="errMsg">
							<li class="errMsgLi nameErr" id="nameErr1">
								이름: 필수 정보입니다.
							</li>
							<li class="errMsgLi nameErr" id="nameErr2">
								이름: 한글, 여문 대/소문자를 사용해 주세요. (특수기호, 공백 사용 불가)
							</li>
							<li class="errMsgLi birthErr" id="birthErr1">
								생년월일: 필수 정보입니다.
							</li>
							<li class="errMsgLi birthErr" id="birthErr2">
								생년월일: 생년월일은 8자리 숫자로 입력해 주세요.
							</li>
							<li class="errMsgLi" id="agencyErr">
								통신사: 이용하는 통신사를 선택해 주세요.
							</li>
							<li class="errMsgLi phoneErr" id="phoneErr1">
								휴대전화번호: 필수 정보입니다.
							</li>
							<li class="errMsgLi phoneErr" id="phoneErr2">
								휴대전화번호: 휴대전화번호가 정확한지 확인해 주세요.
							</li>
						</ul>
					</div>
					<!-- div.errArea -->			
				</div>
				<!-- div#joinForm -->
			</form>
			
			<div id="agreeArea">
				<div id="agrTitle">
					<label>
						<input type="checkbox" required id="chkAgrAll">
						<span id="green">[필수]</span>
						<span id="bold">인증 약관 전체동의</span>
					</label>
					<span class="wideIcon">
						<img src="/img/joinWideDown.png" alt="Wide" id="agreeWide">
					</span>
				</div>
				<div id="listArea">
					<ul id="agreeMenu" class="dFlex">
						<li class="agreeLi">
							<label>
								<input type="checkbox" class="agrNdChk">
								<span>개인정보 이용</span>
							</label>
						</li>
						<li class="agreeLi">
							<label>
								<input type="checkbox" class="agrNdChk">
								<span>고유식별정보 처리</span>
							</label>
						</li>
						<li class="agreeLi">
							<label>
								<input type="checkbox" class="agrNdChk">
								<span>통신사 이용약관</span>
							</label>
						</li>
						<li class="agreeLi">
							<label>
								<input type="checkbox" class="agrNdChk">
								<span>인증사 이용약관</span>
							</label>
						</li>
						<li class="agreeLi">
							<label>
								<input type="checkbox" class="agrNdChk">
								<span>클로버 개인정보수집</span>
							</label>
						</li>
					</ul>
				</div>
			</div>
			<!-- div#agreeArea -->
			<div class="errArea">
				<p>필수 약관에 모두 동의해 주세요.</p>
			</div>
			<!-- div.errArea -->	
		</main>
		<!-- main#main -->

		<footer id="footer">
			<button id="goJoinProc" form="joinProc">회원가입</button> 
		</footer>
		<!-- footer#footer -->

	</div>
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>
