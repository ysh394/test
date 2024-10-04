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
<!-- 관리자 페이지 -->
	<div id="managerWrap">
	
		<header id="managerHeader" class="dFlex">
			<h2>관리자</h2>
		</header>
		<!-- header#managerHeader -->
		
		<main id="managerMain" class="dFlex">
		
			<!-- 세로 GNB -->
			<div id="managerGNB">
				<ul>
						
						<li><a href="/manager_graph">방문자 수</a></li>
						
						<li><a href="/manager_member">회원정보</a></li>
						
						<li><a href="/manager_views">조회수</a></li>
						
						<li><a href="/manager_comment">웹툰관리</a></li>
						
						<li><a href="/manager_revenue" style="color: #000;">매출</a></li>
						
											<li class="managerUl">
						<a href="/manager_upload">관리/업로드</a>
					</li>
					</ul>
			</div>
			
			<!-- 매출 -->
			<div id="managerViews">
				<h2>매출</h2>
				<img src="img/매출.png" alt="Graph">
			</div>
		
		</main>
		
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    