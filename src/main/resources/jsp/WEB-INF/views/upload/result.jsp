<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</head>
<body>
	<div id="wrap">
	<div id="resultWrap">
	<form action="/uploadChk">
		<h1>업로드 데이터</h1>
		<p><span>제목 : </span><input type="text" name="title" value="${map.title}" id="update"></p>

		
	<script>
		alert("업로드 완료!");
		let update	= $("#update").val();
		location.href="/webtoonList?title="+update;
	</script>
		<div id="uploadChkBtn">
			<button id="uploadChk">게시하기</button>
		</div>
	</form>
	</div>


		
		
	</div>
	<!-- div#wrap -->
</body>
</html>    