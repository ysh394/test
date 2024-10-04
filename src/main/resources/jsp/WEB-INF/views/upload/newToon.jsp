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
	<div id="wrap">
	<form action="/uploadgo" method="post"
	enctype="multipart/form-data">
	<div id="uploadWrap">
		<h1>신규 웹툰 등록</h1>
		<hr>
		<label>
			<span>title</span>
			<input type="text" id="title" name="title" placeholder="제목을 입력하세요.">
			<button id="titleChk" type="button">중복 검사</button>
			<span id="tleChk" ></span>
		</label>
		<label>
			<span>writer</span>
			<input type="text" name="writer" placeholder="작가이름을 입력하세요.">
		</label>
		<label>
			<span>content</span>
			<input type="text" name="content" placeholder="content 입력하세요.">
		</label>

		<label>
			<span>메인 이미지</span>
			<input type="file" name="fName">
		</label>
		<label>
		<span>업데이트 날</span>
		<select name="day" id="selectDay">
			<option value="">-요일-</option>
			<option value="mon">월</option>
			<option value="tue">화</option>
			<option value="wed">수</option>
			<option value="thu">목</option>
			<option value="fri">금</option>
			<option value="sat">토</option>
			<option value="sun">일</option>
		</select>
		</label>
		<div id="uploadTag">
		<h4>태그</h4>
			<span>로맨스</span>
			<span>판타지</span>
			<span>액션</span>
			<span>일상</span>
			<span>스릴러</span>
			<span>개그</span>
			<span>무협/사극</span>
			<span>드라마</span>
			
		</div>
		<div id="btnArea">
			<button>등록하기</button>
		</div>
		
	</div>
	<!-- #uploadWrap -->
	</form>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    