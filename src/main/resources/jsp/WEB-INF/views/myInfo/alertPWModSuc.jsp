<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		
 <body>
	<div>
		<span id="memIDPrnVal">${memID}</span>
	</div>			
</body>   
<script>
	let msg = "비밀번호 수정이 완료되었습니다.";
	alert(msg);
	let uid = $("#memIDPrnVal").html();
	location.href = "/myInfo/myInfoPage?uid="+uid;
</script>  