<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>금요웹툰</title>
<link rel="stylesheet" href="/style/style.css?v">
	<style>
		#fri {
			color: #0d0;
			border-bottom: 4px solid #0d0;
		}
		#gnbWid>a:nth-child(2)>span {
	background-color: #00dc64;
	color: #fff;
}
		
	</style>
</head>
<body>
<hr class="position Hr3">
	<div id="webtoonWrap">
		<jsp:include page="../reference/header.jsp" />
		<nav id="gnb">
			<ul class="dFlex" id="gnbDay">
				<li id="dayAll">요일전체</li>
				<li id="mon" value="1">월</li>
				<li id="tue" value="2">화</li>
				<li id="wed" value="3">수</li>
				<li id="thu" value="4">목</li>
				<li id="fri" value="5">금</li>
				<li id="sat" value="6">토</li>
				<li id="sun" value="7">일</li>
			</ul>
		</nav>

		<!-- nav#gnb 끝 -->
		<div class="dFlex">
		<main id="webtoonMain" class="DayMon">
			<div id="webtoonMainTop">
				<h2>금요일 추천 웹툰</h2>
				<section id="newWebtoon" class="dFlex">
					<c:forEach var="webtoonFriRecom" items="${mtdWebtoonFriRecom}">
					<article>
					<a href="/webtoonList?title=${webtoonFriRecom.title }">
						<div class="imgArea imgOver">
							<img src="/mainImg/${webtoonFriRecom.title}/${webtoonFriRecom.systemFile}" alt="이미지">
							<input type="hidden" value="${webtoonFriRecom.title}" class="hide">
						</div>
						<h3>${webtoonFriRecom.title}</h3>
						<h4>${webtoonFriRecom.writer}</h4>
						<span>${webtoonFriRecom.content}</span>
						</a>
					</article>
				</c:forEach>

				</section>

			</div>
			<!-- webtoonMainTop -->


			<div id="dayAllWebtoon">
				<div id="dayAllHeader" class="dFlex">
					<h2>금요일 전체 웹툰</h2>
					<ul class="dFlex">
						<li>인기순</li>
						<li>·</li>
						<li>업데이트순</li>
						<li>·</li>
						<li>조회순</li>
						<li>·</li>
						<li>별점순</li>
					</ul>
				</div>
				<!-- dayAllHeader -->


			</div>
			<!-- dayAllWebtoon -->
			<div id="mainWebtoon">

			<div id="mondayWebtoon">
				<c:forEach var="webtoonFri" items="${mtdWebtoonFri}">
				<label>
				<a href="/webtoonList?title=${webtoon.title }">
					<div class="thumImg imgOver">
					<img src="/mainImg/${webtoonFri.title}/${webtoonFri.systemFile}"
									alt="이미지1">
					<input type="hidden" value="${webtoonFri.title}" class="hide">
					</div> 
					<span>${webtoonFri.title}</span>
					</a>
				</label> 
			</c:forEach>
				</div>
			</div>
			<!-- div#mainWebtoon -->
			
		</main>
		<aside>
			<jsp:include page="../reference/notice.jsp" />
		</aside>
		</div>
		<jsp:include page="../reference/footer.jsp" />
		<!-- div#wrap -->
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>
