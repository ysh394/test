<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
<!-- 관리자-관리/업로드 페이지 -->
	<div id="managerWrap">
	
		<header id="managerHeader" class="dFlex">
			<h2><a href="/manager.jsp">관리자</a></h2>
		</header>
		<!-- header#managerHeader -->
		
		<main id="managerMain" class="dFlex">
		
			<!-- 세로 GNB -->
			<div id="managerGNB">
				<ul>
					<li class="selected managerUl">
						<a href="/manager_graph">방문자 수</a>
					</li>
					<li class="managerUl">
						<a href="/manager_member">회원정보</a>
					</li>
					<li class="managerUl">
						<a href="/manager_views">조회수</a>
					</li>
					<li class="managerUl">
						<a href="/manager_comment">웹툰관리</a>
					</li>
					<li class="managerUl">
						<a href="/manager_revenue">매출</a>
					</li>	
					<li class="managerUl">
						<a href="/manager_upload"><b>관리/업로드</b></a>
					</li>	
					
				</ul>
			</div>
			<div id="uploadArea">
				<button onclick="location.href='/newToon'">신규 웹툰 업로드</button>
				<button onclick="location.href='/upload'">웹툰 회차 업로드</button>
			</div>
	
		</main>
		
		
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    