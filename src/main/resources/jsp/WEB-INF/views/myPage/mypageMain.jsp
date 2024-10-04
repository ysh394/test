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
		#mypageHeader>ul#mypageGNBul>li:first-child {
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
			<input type="hidden" value="${sID }" id="hidSID">
		</header>
		<!-- header#mypageHeader -->
		<hr>
		
		
		<main id="mypageMain" class="dFlex">
		
			<!-- 관심웹툰 -->
			<div id="mypageFBWebtoon">
				<h2>관심웹툰</h2>
				<hr>
				<ul id="mypageMainUl" class="dFlex">
					<li>이미지</li>
					<li>작품명</li>
					<li>업데이트일</li>
				</ul>
				<hr>
				
				<!-- 웹툰 리스트 -->
				<c:forEach var="mtdMypageFav" items="${mtdMypageFav}">
				<div class="mypageContent dFlex">
					<img src="/mainImg/${mtdMypageFav.title}/${mtdMypageFav.imgName}" alt="#">
					
					<span class="mypageTW">
						<span class="mypageTitle">${mtdMypageFav.title}</span>
						<br>
						<span href="/webtoonList?title=${mtdMypageFav.title}" class="mypageWriter">${mtdMypageFav.writer}</span>
					</span>
					<!-- 웹툰 View페이지로 이동 -->
					
					<span class="mypageDate">${mtdMypageFav.updateTM}</span>
				</div>
				
				</c:forEach>

			
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