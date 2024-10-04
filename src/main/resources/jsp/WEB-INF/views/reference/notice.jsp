<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="noticeWrap">
		<div id="topArea" class="dFlex">
		<h3>공지사항</h3>
				<span id="moreNotice"><a href="/noticeList">더보기 ></a></span>
		</div>
		<!-- div#topArea -->
		<hr>
		<!-- div#topArea -->
		
		<div id="mainArea">
			<ul>
		
				<c:forEach var="noticepage" items="${mtdnoticepage}">
						<li>
							<a href="noticeclick?seq=${noticepage.seq}">· ${noticepage.title}</a>
						</li>
						
				</c:forEach>
		
			</ul>
		
		</div>
		<!-- div#mainArea -->
		
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    