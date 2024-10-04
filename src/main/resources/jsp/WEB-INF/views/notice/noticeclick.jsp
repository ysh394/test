<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>공지사항 상세</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
<div id="noticeWrap2">
	<jsp:include page="../reference/header.jsp" />
<div id="notiwrap">
       <div id="noticewrap">
            <div class="not">
                <h2>공지사항</h2>
            </div>
            <hr>
            <div class="not2">
           
                <h2>${mtdnoticeclick.title}</h2>
                <span>${mtdnoticeclick.contents} ㅣ ${mtdnoticeclick.writeday}</span>
            </div>
            <hr>
            <div class="not3">
                <p class="fontW">
                    ${mtdnoticeclick.substance}
                </p>
            
            </div>
            <hr>
            <div class="not4">
                   <c:forEach var="noticetrd" items="${mtdnoticetrd}">
                <div class="notii">
                <div class="contentsntc">
                        <span class="label">이전</span>
                        <p class="font2">${noticetrd.contents}</p>
                        <a href="?seq=${noticetrd.seq}">${noticetrd.title}</a>
                </div>
                    
                    <p>${noticetrd.writeday}</p>
                   
                </div>
                <hr>
                   </c:forEach>
                   
               
            </div>
            <div class="mokrok">
                
                <a href="/noticeList">☰ 목록</a>
            </div>
          </div>
    </div>
          <jsp:include page="../reference/footer.jsp" />
</div>

	<!-- div#notiwrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    