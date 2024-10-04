<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>${mtdToonMain.title}</title>
	<link rel="stylesheet" href="/style/style.css?v">
	<style>


#gnbWid>a:nth-child(2)>span {
	background-color: #00dc64;
	color: #fff;
}

</style>
</head>
<body>
	<hr class="position Hr3">
	<div id="wrap">
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

			<div class="dFlex">
		
		
			<div id="webViewLeft">
		
				<div id="imgTxt" class="dFlex">
		
		
					<div id="imgArea">
						<img src="/mainImg/${mtdToonMain.title}/${mtdToonMain.systemFile}" alt="이미지">
					</div>
		
					<div id="textArea">
						<h1>${mtdToonMain.title}</h1>
						<h3>${mtdToonMain.writer}</h3>
						<p>${mtdToonMain.content }</p>
						<input type="hidden" id="listDayVal" value="${mtdToonMain.dayTM }">
					</div>
		
			</div>
		
		<div id="btnArea">
		<input type="hidden" value="${chk}" id="FavBtnVal">
		<button id="FavBtn" onclick="location.href='/favProc?title=${mtdToonMain.title }&writer=${mtdToonMain.writer}&img=${mtdToonMain.systemFile}'">╊ 관심</button>
		<button id="FavBtnRE" onclick="location.href='/favREProc?title=${mtdToonMain.title }&writer=${mtdToonMain.writer}&img=${mtdToonMain.systemFile}'">√ 관심</button>
		<input type="hidden" id="favTitle" value="${mtdToonMain.title }">
		<input type="hidden" id="favWriter" value="${mtdToonMain.writer }">
		<input type="hidden" id="favImg" value="${mtdToonMain.systemFile}">
		<button id="firstView">첫화보기 - 1화</button>
		<input type="hidden" id="firstViewTitle" value="${mtdWebtoonViewFirst.title }">
		<input type="hidden" id="firstViewNum" value="${mtdWebtoonViewFirst.num }">
		<input type="hidden" id="firstViewEpisode" value="${mtdWebtoonViewFirst.episode}">
		<button id="airDrop">공유하기</button>		
		</div>
		
		<c:forEach var="webtoonlist" items="${mtdWebtoonList}">
		<div class="numStory">
				
			<hr>
			<img class="iconImg" src="/webtoon/${webtoonlist.day }/${webtoonlist.title}/${webtoonlist.sysName}" alt="이미지">
												
			<div>
				<h3 >${webtoonlist.num }화</h3>
				<input type="hidden" id ="listNum" value="${webtoonlist.num }">
				<span>★${webtoonlist.starCnt} ${webtoonlist.regTM }</span>
				<input type="hidden"  class="titleVal" value="${webtoonlist.title}">
				<input type="hidden"  class="numVal" value="${webtoonlist.num}">
				<input type="hidden"  class="epiVal" value="${webtoonlist.episode}">
			</div>						
				
		</div>

		
		</c:forEach>
						
	</div>
<!-- 		div#webViewLeft -->



				

				
				
	<div id="rightArea">
	
		<div id="event">
			<h1>이벤트</h1>
		</div>
		
		<div id="notic">
			<jsp:include page="reference/notice.jsp" />
		</div>
		
		
				
	</div>

	</div>
				<jsp:include page="reference/footer.jsp" />
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    