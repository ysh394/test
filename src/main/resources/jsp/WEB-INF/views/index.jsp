<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>클로버 웹툰</title>
<link rel="stylesheet" href="/style/style.css?v">
	<style>
	
		#gnbWid>a:nth-child(1)>span {
				background-color: #00dc64;
				color: #fff;
		}
	</style>
</head>
  <body>
            <div id="wrap">

                <jsp:include page="reference/header.jsp" />




                <nav class="dFlex">
                    <ul class="웹툰전체보기">
                        <li class="bold dayOfWeek"></li>
                        <li id="인기순">인기순</li>
                        <li>·</li>
                        <li id="업데이트순">업데이트순</li>
                        <li>·</li>
                        <li id="조회순">조회순</li>
                        <li>·</li>
                        <li id="별점순">별점순</li>
                    </ul>
                    <span class="tuesdaywebtoon"><span class="dayOfWeek"></span> 전체보기 ></span>

                </nav>



                <main class="dFlex">
                    <div class="MainTop1">
                        <img src="./img/MainTop1.png" alt="img1" />
                        <h4>아카데미가 망했다</h4>
                        <p>BIN / GG / ROHRAN</p>
                    </div>
                    <div class="MainTop1">
                        <img src="./img/MainTop2.png" alt="img2" />
                        <h4>김부장</h4>
                        <p>박만사, 남자의 이야기 / 정종택</p>
                    </div>
                    <div class="MainTop1">
                        <img src="./img/MainTop3.png" alt="img3" />
                        <h4>좋아? 죽어!</h4>
                        <p>김용키, 박만사 / 죠</p>
                    </div>
                    <div class="MainTop1">
                        <img src="./img/MainTop4.png" alt="img4" />
                        <h4>2024 근황검진</h4>
                        <p>네이버웹툰 작가</p>
                    </div>
                    <div class="MainTop1">
                        <img src="./img/MainTop5.png" alt="img5" />
                        <h4>내가 키운 S급들</h4>
                        <p>seri / 비완 / 근서</p>
                    </div>

                </main>
                <!-- 이달의 신작 -->
                <div id="container">
                    <div id="container2">
                        <div class="one dFlex">
                            <h2>이달의 신작</h2>
                            <span>신작웹툰 더보기 ></span>
                        </div>
                        <div id="two" class="dFlex">
                            <div id="img1">
                                <div class="imgArea">
                                    <img src="/imageFolder/이달의신작1.png" alt="이미지1">
                                </div>
                                <br>
                                <span id="one">러브 로스팅</span>
                                <br>
                                <span>이순기/이예린</span>
                                <br>
                                <span id="two">파릇파릇한 20대 캠퍼스 커플의 순수하고 원초 <br>
                                    적인 연애, 원숙하지만 여러 이해관계가 얽힌 3...</span>
                                <br>
                                <a href="#">#로맨스</a>
                                <a href="#">#인소감성</a>
                                <a href="#">#병맛</a>
                                <!-- ㅇ  -->


                            </div>
                            <div id="img1">
                                <div class="imgArea">
                                    <img src="/imageFolder/이달의신작2.png" alt="이미지2">
                                </div>
                                <br>
                                <span id="one">황후의 짐승간택</span>
                                <br>
                                <span>LICO/꿀밤비</span>
                                <br>
                                <span id="two">수인 제국의 유일한 인간 황후인 세피아, 황제 데 <br>
                                    미오스와 건조한 결혼 생활을 지속하던 중, 황...</span>
                                <br>
                                <a href="#">#로맨스</a>
                                <a href="#">#인소감성</a>
                                <a href="#">#병맛</a>
                            </div>
                            <div id="img1">
                                <div class="imgArea">
                                    <img src="/imageFolder/이달의신작3.png" alt="이미지3">
                                </div>
                                <br>
                                <span id="one">구야는 신입</span>
                                <br>
                                <span>구야</span>
                                <br>
                                <span id="two">평생 학생일 줄 알았던 내가 어느새 직장인이 되 <br>
                                    어버렸다. 직장인이 된 기쁨도 잠시... 이제는...</span>
                                <br>
                                <a href="#">#로맨스</a>
                                <a href="#">#인소감성</a>
                                <a href="#">#병맛</a>
                            </div>

                        </div>
                        <!-- div.two -->
                        <!-- 이달의 신작 종료 -->

                        <!-- 따끈따끈 업데이트 매일+  시작 -->
                        <div class="update1 dFlex">
                            <h2>따끈따끈 업데이트 매일+</h2>
                            <span>매일+웹툰 더보기></span>
                        </div>
                        <div class="dFlex">
                            <div class="update2">
                                <div class="imageArea">
                                    <img src="/imageFolder2/따끈따끈1.png" alt="이미지">
                                </div>
                                <span class="one">우연일까?</span><br>
                                <p>남지은/김인호</p>
                            </div>
                            <div class="update2">
                                <div class="imageArea">
                                    <img src="/imageFolder2/따끈따끈2.png" alt="이미지">
                                </div>
                                <span class="one">게임의 법칙</span><br>
                                <p>유티스트</p>
                            </div>
                            <div class="update2">
                                <div class="imageArea">
                                    <img src="/imageFolder2/따끈따끈3.png" alt="이미지">
                                </div>
                                <span class="one">시크릿 플레이어</span><br>
                                <p>냠냠이/나지하지/산지직송</p>
                            </div>
                            <div class="update2">
                                <div class="imageArea">
                                    <img src="/imageFolder2/따끈따끈4.png" alt="이미지">
                                </div>
                                <span class="one">저주가 저주가 아닌 ...</span><br>
                                <p>가향/제과제뼈</p>
                            </div>
                            <div class="update2">
                                <div class="imageArea">
                                    <img src="/imageFolder2/따끈따끈5.png" alt="이미지">
                                </div>
                                <span class="one">전생했더니 신입사원</span><br>
                                <p>뭉쥐/예환/대나무집</p>
                            </div>


                        </div>
                        <!-- div.dFlex -->
                        <!-- 따끈따끈 업데이트 매일+ 종료 -->
                    </div>
                    <!-- div#container2 -->
                    <!-- 실시간 인기웹툰 시작 -->
                    <div id="livebest">
                        <div class="first dFlex">
                            <h3>실시간 인기웹툰</h3>
                            <ul class="dFlex">
                                <li>전체</li>
                                <li>·</li>
                                <li>여성</li>
                                <li>·</li>
                                <li>남성</li>
                            </ul>
                        </div>
                        <hr>
                        <div class="second dFlex">
                            <div class="imagArea">
                                <img src="/imageFolder3/실시간1.png" alt="이미지1">
                            </div>
                            <span>1</span>
                            <div class="sil">
                                <a href="#">충족</a>
                                <br>
                                <p>수냥냥/이젤/서아랑</p>
                            </div>
                        </div>
                        <div class="second dFlex">
                            <div class="imagArea">
                                <img src="/imageFolder3/실시간2.png" alt="이미지2">
                            </div>
                            <span>2</span>
                            <div class="sil">
                                <a href="#">19년지기의 하룻밤</a>
                                <br>
                                <p>지움/모카나/쩐퀸</p>
                            </div>
                        </div>
                        <div class="second dFlex">
                            <div class="imagArea">
                                <img src="/imageFolder3/실시간3.png" alt="이미지3">
                            </div>
                            <span>3</span>
                            <div class="sil">
                                <a href="#">2024근황검진</a>
                                <br>
                                <p>네이버웹툰 작가</p>
                            </div>
                        </div>
                        <div class="second dFlex">
                            <div class="imagArea">
                                <img src="/imageFolder3/실시간4.png" alt="이미지4">
                            </div>
                            <span>4</span>
                            <div class="sil">
                                <a href="#">우리 안 사귀어!!</a>
                                <br>
                                <p>이경민/송준혁</p>
                            </div>
                        </div>
                        <div class="second dFlex">
                            <div class="imagArea">
                                <img src="/imageFolder3/실시간5.png" alt="이미지5">
                            </div>
                            <span>5</span>
                            <div class="sil">
                                <a href="#">회귀 대마도사의 근접 마법 무쌍</a>
                                <br>
                                <p>마유미 소/Fuyuki23</p>
                            </div>
                        </div>

                        <!-- 공지사항 시작 -->
                        <jsp:include page="reference/notice.jsp" />
                        <!-- 공지사항 종료 -->
                    </div>
                    <!-- div#livebest -->
                    <!-- 실시간 인기웹툰 종료 -->
                </div>
                <!-- div#container -->





                <jsp:include page="reference/footer.jsp" />
            </div>





            <!-- div#wrap -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script src="/script/script.js"></script>
        </body>
</html>
