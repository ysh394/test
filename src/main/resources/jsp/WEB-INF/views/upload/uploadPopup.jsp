<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="upPopWrap">
		<h1>제목 중복확인</h1>
		<hr />
		
		<form action="titleChk" id="titleChk">
		<input type="text" name ="chkTitle" placeholder="제목 입력 후 중복확인 클릭"
		value="${chkTitle}" id="chkTitle"/>
		<button id="btnChk1" type="button">중복확인</button>
		</form>
		
		<div id="chkResArea">
		<p id="resMsg">${resMsg}</p>
		</div>
		
		<hr />
		
		<div id="popBtnArea" class="btnArea">
			<button id="btnGo" value="${btnChk}">사용하기</button>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    