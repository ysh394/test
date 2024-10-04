<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>공지사항 목록</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
	<jsp:include page="../reference/header.jsp" />
	
		
		<main id="noticelistMain" class="dFlex">
			<div id="noticeArea">
				<div id="noticeHeader" class="dFlex">
				<h1>공지사항</h1>
				<input type="text" placeholder="제목/내용으로 검색할 수 있습니다.">
				</div>
				<hr>
			<!-- div#noticeHeader -->
				<div id="noticeMain">
				<table>
					<tbody>
						<tr id="noticeTitle" >
							<th></th>
							<td>제목</td>
							<td>작성일</td>
						</tr>
						
					  
					   <c:forEach var="noticeList" items="${mtdnoticeList}">
						<tr>
							<th>${noticeList.contents}</th>
							<td class="noticeTitleName">${noticeList.title}
							<input type="hidden" class="titleVal" value="${noticeList.seq}"></td>
							<td class="noticeTitleTM">${noticeList.writeday}</td>
						</tr>
						<input type="hidden" class="titleVal" value="${noticeList.seq}">
					   </c:forEach>
	
						
					</tbody>
				</table>
				</div>
			<!-- div#noticeMain -->
			<div id="pagenum">
				<ul class="dFlex">
					<li>&lt;</li>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
					<li>6</li>
					<li>7</li>
					<li>8</li>
					<li>9</li>
					<li>&gt;</li>
				</ul>
			</div>
			<a href="/noticeWrite">관리자용 간이 글쓰기창</a>
			</div>
			<!-- div#noticeArea -->
			<aside id="side">
			
			</aside>
		
		</main>
		<jsp:include page="../reference/footer.jsp" />
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    