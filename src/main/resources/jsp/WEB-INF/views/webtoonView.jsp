<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>${mtdWebtoonView.title} - ${mtdWebtoonView.episode}</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>

	<div id="wrap">
		<div id="remocon" class="dFlex">

			<div id="rmcLeft">
			<input type="hidden" id="viewNum" value="${mtdWebtoonView.num}">
				&lt; <span id="back">${mtdWebtoonView.title}</span> | <span id="epNum">${mtdWebtoonView.episode}</span>
			</div>

			<div id="rmcRight">
				<ul>
					
					<li id="BeforeBtn"><a href="/webtoonView?title=${mtdBefore.title}&num=${mtdBefore.num}&episode=${mtdBefore.episode}">◀ 이전화</a></li>
					<li>|</li>
					<li><a href="/webtoonList?title=${mtdWebtoonView.title}">≡ 목록</a></li>
					<li>|</li>
					<li id="NextBtn"><a href="/webtoonView?title=${mtdNext.title}&num=${mtdNext.num}&episode=${mtdNext.episode}">다음화 ▶</a></li>
				</ul>
				<input type="hidden" value="${mtdBefore.num}" id="remBefore">
				<input type="hidden" value="${mtdNext.num}" id="remNext">
			</div>

		</div>
		<!-- 		div#remocon -->
		<div id="webViewMain">
			<img src="/webtoon/${mtdWebtoonView.day}/${mtdWebtoonView.title}/${mtdWebtoonView.sysName}" alt="이미지">
		
		</div>

		<div id="content" class="dFlex">

			<div>
				<p>v</p>
				<b>관심웹툰</b>
				<p>누적수</p>
			</div>

			<div class="sty">
				<span>♡</span> <b>좋아요</b>
				<p>누적수</p>
			</div>

			

			<div>
				<b>공유하기</b>
			</div>

		</div>
		<!-- div#content -->

		<div id="tagChk" class="dFlex">

			<div id="tag">
				<span>tag#</span> <span>tag#</span> <span>tag#</span>
			</div>

			<div id="chk">
				<span>책갈피</span>
			</div>

		</div>

		<hr id="hr">

		<div id="benerTh">

			<div id="bener">
				<img src="?" alt="benerImg">
			</div>

			<div id="th" class="dFlex">

		<c:forEach var="cid" items="${mtdEpCnt}">
- 			<a href="/webtoonView?title=${cid.title}&num=${cid.num}&episode=${cid.episode}">
				<div id="thList">
					<img src="/webtoon/${cid.day}/${cid.title}/${cid.sysName}" alt="">
					<p>${cid.episode}</p>
				</div>
					
 			</a> 
		</c:forEach>

			</div>



		</div>
		<!-- div#benerTh -->


		<div id="bener">

			<img src="" alt="">

			<div id="txtArea">
				<b>text dsafasfas</b> <span>text dsafasd</span> <span>brand</span>
			</div>

		</div>
		<!-- div#bener -->


		<div id="writer">
			<span class="line">작가</span> 
			<span>${mtdWebtoonView.writer}</span> / 
			<span class="line">그림</span>
			<span></span>

			<p>${mtdWebtoonView.content}</p>
			<hr>
		</div>
		<!-- 			div#writer		 -->


		<div id="reviews">

			<span>의견쓰기 ${mtdReviewCnt}</span>
					<div id="noLoginTxt">
						댓글을 작성하려면 <span>로그인</span> 해주세요.
						</div>

			<div id="reviewWrap">


				<form action="#" id="review">
				
					<div id="textArea">

						<b id="uid">${uid}</b>
						
						
						
						<textarea name="cmment" id="textArea" cols="75" rows="3"
						placeholder="주제에 무관한 댓글이나 악플을 달지 마세요" maxlength="250"></textarea>

						<span id="count">0</span> 
						<span>/250</span>

					</div>
				<!-- 			div#textArea -->

					<div id="btnArea1">
						<button type="button" id="reviewBtn">등록</button>
					</div>
				<!-- 				div#btnArea -->
					
				</form>
				<!-- 				div#btnArea -->


				<div id="bestRivew">
					<span id="best">BEST댓글</span> 
					<span id="whole">전체댓글</span>
				</div>
				<!-- 		div#bestRivew -->


				<c:forEach var="cid" items="${mtdReviewList}">			
				<div class="revText">
					<b>${cid.memid}</b> 
					<span>${cid.comment}</span>
					<p>${cid.regTM}</p>
					<span id="reviewClo">x</span>
					<input type="hidden" id="delNum" value="${cid.num }">
					<hr>
				</div>
			</c:forEach>


			</div>
			<!-- div#reviews -->


		</div>
		<!-- div#reviewWrap -->





	</div>
	<!-- div#wrap -->




	<div id="popup">

		<h1>공유하기</h1>
		<span id="close">&times;</span>

		<div id="iCon" class="dFlex">
			<div>
				<img src="" alt="">
				<p>블로그</p>
			</div>
			
			<div>
				<img src="" alt="">
				<p>카페</p>
			</div>
			
			<div>
				<img src="" alt="">
				<p>페이스북</p>
			</div>
			
			<div>
				<img src="" alt="">
				<p>카카오톡</p>
			</div>
			
			
		</div>


	</div>


<div id="modalWrap">
<div id="modal">

		<h1>10</h1>
		
		<span id="modalClo">&times;</span>
		
		<div id="star">
			<span class="col"></span>			
			<span class="col"></span>
			<span class="col"></span>
			<input type="hidden" name="star" class="star" value="10">
										
		</div>
		
		<span id="info">원을 클릭하세요.</span>
		
		<div id="btnArea">
		<button id="starBtn">확인</button>
		<button>취소</button>
		</div>

	</div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    