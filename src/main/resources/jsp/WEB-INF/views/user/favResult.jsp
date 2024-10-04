<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
</head>
<body>
	<div id="wrap">
			<h1>관심목록 데이터</h1>
		<p><span>제목 : </span><input type="text" name="title" value="${title}" id="title"></p>
		<script>
		alert("관심등록 완료!");
		let title = $("#title").val();
		location.href="/webtoonList?title="+title;
		</script>
	</div>
	<!-- div#wrap -->
</body>
</html>    