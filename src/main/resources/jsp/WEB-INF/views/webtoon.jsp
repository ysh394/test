<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>요일전체</title>
<link rel="stylesheet" href="/style/style.css?v">
<style>
#dayAll {
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
		<jsp:include page="reference/header.jsp" />
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

		<main id="webtoonMain" class="DayAll">
			<div id="webtoonMainTop">
				<h2>이달의 신규 웹툰</h2>
				<section id="newWebtoon" class="dFlex">
					<c:forEach var="webtoon" items="${mtdWebtoon}">
						<article>
						<a href="/webtoonList?title=${webtoon.title }">
							<div class="imgArea imgOver">
								<input type="hidden" value="${webtoon.title}" class="hide">
								<img src="/mainImg/${webtoon.title}/${webtoon.systemFile}"
									alt="이미지1">
							</div>
							<h3>${webtoon.title}</h3>
							<h4>${webtoon.writer}</h4>
							<span>${webtoon.content}</span>
						</a>

						</article>
					</c:forEach>




				</section>

			</div>
			<!-- webtoonMainTop -->


			<div id="dayAllWebtoon">
				<div id="dayAllHeader" class="dFlex">
					<h2>요일별 전체 웹툰</h2>
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
	

			</div>
			<!-- dayAllWebtoon -->
			<div id="mainWebtoon" class="dFlex">
				<ul>
				<li>월요웹툰</li>
				<c:forEach var="webtoonMon" items="${mtdWebtoonMon}">
					<li class="monWeb">
					<a href="/webtoonList?title=${webtoonMon.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonMon.title}/${webtoonMon.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonMon.title}" class="hide">
					<span>${webtoonMon.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
				</ul>
				<!-------------------->
				<ul>
				<li>화요웹툰</li>
				<c:forEach var="webtoonTue" items="${mtdWebtoonTue}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonTue.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonTue.title}/${webtoonTue.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonTue.title}" class="hide">
					<span>${webtoonTue.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
				</ul>
					<!-- 화요일 -->
				<ul>
				<li>수요웹툰</li>
				<c:forEach var="webtoonWed" items="${mtdWebtoonWed}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonWed.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonWed.title}/${webtoonWed.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonWed.title}" class="hide">
					<span>${webtoonWed.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
				</ul>
					<!-- 수요일 -->
				<ul>
				<li>목요웹툰</li>
				<c:forEach var="webtoonThu" items="${mtdWebtoonThu}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonThu.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonThu.title}/${webtoonThu.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonThu.title}" class="hide">
					<span>${webtoonThu.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
				</ul>
					<!-- 목요일 -->
				<ul>
				<li>금요웹툰</li>
				<c:forEach var="webtoonFri" items="${mtdWebtoonFri}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonFri.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonFri.title}/${webtoonFri.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonFri.title}" class="hide">
					<span>${webtoonFri.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
				</ul>
					<!-- 금요일 -->
					<ul>
				<li>토요웹툰</li>
				<c:forEach var="webtoonSat" items="${mtdWebtoonSat}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonSat.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonSat.title}/${webtoonSat.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonSat.title}" class="hide">
					<span>${webtoonSat.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
					</ul>
					<!-- 토요일 -->
					<ul>
					<li>일요웹툰</li>
				<c:forEach var="webtoonSun" items="${mtdWebtoonSun}">
					<li class="monWeb">
				<a href="/webtoonList?title=${webtoonSun.title }">
					<label>
					<span class="thumImg">
						<img src="/mainImg/${webtoonSun.title}/${webtoonSun.systemFile}"
									alt="이미지1">
					</span> 
					<input type="hidden" value="${webtoonSun.title}" class="hide">
					<span>${webtoonSun.title}</span>
					</label> 
					</a>
					</li>
				</c:forEach>
					</ul>
					<!-- 일요일 -->
				<!-- --------------------------- -->

			</div>
		</main>
		<!-- div#mainWebtoon -->


		<!-- 월요일 -->


		<footer id="dayWebtoon">
			<%-- <jsp:include page="reference/notice.jsp" /> --%>
		</footer>





		<jsp:include page="reference/footer.jsp" />
	</div>
	<!-- div#wrap -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>
