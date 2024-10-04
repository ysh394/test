<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>공지사항 글쓰기</title>
	<link rel="stylesheet" href="./style/style.css?v">
</head>
<body>
	<div id="wraping">
	
	<form action="/noticeProc" id="form1" method="post" 
	enctype="multipart/form-data">
        <div class="no1">
            <h2>공지 글쓰기</h2>
            <div class="reg">
                <button class="dddd1">임시등록 | 0</button>
                <button class="plz">등록</button>
            </div>
        </div>
        <hr>
        <div class="no2">
            <input type="text" name="title" placeholder="제목을 입력하세요.">
        </div>
        <div class="no3">
            <input type="file">
            
            <select name="contents" id="ntcProc">
            <option>컨텐츠 공지</option>
            <option>서비스 공지</option>
            </select>
           
        </div>
        <div class="no4">
            <textarea id="ntW" name="substance" cols="30" rows="10" placeholder="내용을 입력하세요."></textarea>
        </div>
	</form>
    </div>
	<!-- div#wraping -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    