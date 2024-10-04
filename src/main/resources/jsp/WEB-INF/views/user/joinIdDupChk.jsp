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
	<div id="wrap" class="joinIdDupChk">
		
		<h1>ID 중복체크</h1>
		<hr>
		
		<form action="/user/idDupChkProc" id="idChkForm">
			<input type="text" name="chkID" required autofocus id="chkID"
				placeholder="ID 입력 후 중복체크 버튼 클릭" value="${chkID}">
			<p>
				※ 아이디는 5~20자의 영문 소문자, 숫자와 <br>
				&nbsp;&nbsp;&nbsp;특수기호(_), (-)만 사용 가능합니다.		
			</p>		
			<button id="dupChkBtn" type="button">중복체크</button>
		</form>
		
		<div id="chkResArea">
			<p id="chkResMsg">${resMsg}</p>
		</div>
		
		<hr>
		
		<div id="popBtnArea">
			<button id="idUseBtn" value="${chkUseBtn}">사용하기</button>
		</div>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    