<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>검색 결과</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<jsp:include page="reference/header.jsp" />
		 <div id="wrapsearch">
        <h2>'OOOOOO'에 대한 검색결과입니다.</h2>
        <ul>
        <li><a href="#">전체(1)</a></li>
            
        <li><a href="#">웹툰(1)</a></li>
           
        </ul>
        <hr>
        <div class="title">
            <p>웹툰</p>
            <span>총1</span>
        </div>
        <hr>
        <div class="imArea">
            <img src="#" alt="이미지">
            <div id="impArea">
                <h4>Title</h4>
                <span>writer</span>
                <p>
                    멋있어지고 싶은 그들의 이야기
                </p>
                <br>
                <a href="#">#드라마</a>
                <a href="#">#드라마&영화 원작웹툰</a>
                <a href="#">#완결드라마</a>
            </div>

        </div>
    </div>
    </div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    