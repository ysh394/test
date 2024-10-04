<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
		<style>
	
		#gnbWid>a:nth-child(3)>span {
				background-color: #00dc64;
				color: #fff;
		}
		#mypageHeader>ul#mypageGNBul>li:last-child {
			color: #0d0;
			border-bottom: 4px solid #0d0;
		}
	</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../reference/header.jsp" />
<!-- 	2번째 GNB -->
		
		<header id="mypageHeader" class="dFlex">
			<ul id="mypageGNBul" class="dFlex">
				<li class="favoriteLi"><a href="../myPage/mypageMain">관심웹툰</a></li>
				<li class="recentLi"><a href="../myPage/recent">최근 본</a></li>
				<li class="bookmarkLi"><a href="../myPage/bookmark">책갈피</a></li>
			</ul>
		</header>
		<!-- header#mypageHeader -->
		<hr>
		
		
		<main id="mypageMain" class="dFlex">
		
			<!-- 관심웹툰 -->
			<div id="mypageFBWebtoon">
				<div id="mypageTitle" class="dFlex">
					<h2>최근 본</h2>
					<p>PC, 모바일 웹, 앱에서 감상한 웹툰 및 베스트 도전 작품들입니다. </p>
				</div>
				<hr>
				<ul id="mypageMainUl" class="dFlex">
					<li>이미지</li>
					<li>작품명</li>
					<li>업데이트일</li>
				</ul>
				<hr>
				
				<!-- 웹툰 리스트 -->
				<div class="mypageContent dFlex">
					<img src="/img/favoriteImg.png" alt="#">
					
					<span class="mypageTW">
						<span class="mypageTitle">구야는 신입</span>
						<br>
						<span href="#" class="mypageWriter">구야</span>
					</span>
					<!-- 웹툰 View페이지로 이동 -->
					
					<span class="mypageDate">yy-mm-dd</span>
				</div>
				
				
				<div class="mypageContent dFlex">
					<img src="/img/favoriteImg.png" alt="#">
					
					<span class="mypageTW">
						<span class="mypageTitle">구야는 신입</span>
						<br>
						<span href="#" class="mypageWriter">구야</span>
					</span>
					<!-- 웹툰 View페이지로 이동 -->
					
					<span class="mypageDate">yy-mm-dd</span>
				</div>	
			
			</div>
			<!-- !!! 공지사항 들어갈 부분 !!! -->
			<jsp:include page="../reference/notice.jsp" />
		</main>
		<!-- main#main -->
	
		<jsp:include page="../reference/footer.jsp" />
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    