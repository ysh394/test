<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<style>
	div#memberPopUpwrap {
	    padding: 20px;
/* 	    border: 2px solid #aaa; */
	    border-radius: 6px;
	    margin: 20px auto;
	}
	
	main#memberPopUpMain {
		border: 1px solid #aaa;
		margin: 20px 0;
		border-radius: 7px;
		padding: 20px;
	}
	
	main>ul#popUpUL>li {
/* 		border: 1px solid #000; */
		text-align: right;
		font-weight: bold;
		padding: 7px;
		margin: 5px;
		border-radius: 5px;
		background-color: #00DC64;
		color: #fff;
		font-size: 20px;
	}
	
	main>ul#popUpDBUL>li {
		text-align: left;
		padding: 7px;
		margin: 4px;
		font-size: 20px;
		border-bottom:  1px solid #aaa;		
	}
	
</style>

<body>
	<div id="memberPopUpwrap">
		<h1>회원 상세 정보</h1>
		
		<main id="memberPopUpMain" class="dFlex">
			<ul id="popUpUL">
				<li>번호</li>
				<li>아이디</li>
				<li>비밀번호</li>
				<li>이메일</li>
				<li>이름</li>
				<li>생년월일</li>
				<li>통신사</li>
				<li>성별</li>
				<li>내국인/외국인</li>
				<li>전화번호</li>
				<li>등록 시간</li>
			</ul>
			
<%
	Connection 	conn = null;
	Statement 	stmt = null;
	ResultSet   rs 	 = null;
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url="jdbc:mysql://localhost:3306/teamProject?";
		url += "useSSL=false&";
		url += "useUnicode=true&";
		url += "characterEncoding=UTF8&";
		url += "serverTimezon=Asia/Seoul&";
		url += "allowPublicKeyRetrieval=true";
		String dbID = "root";
		String dbPW = "1234";
		conn = DriverManager.getConnection(url, dbID, dbPW);
		
		// out.print("Proj_Webtoon Connection OK!!");
		
		stmt = conn.createStatement();
		String sql = "select * from member order by num desc";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int num = rs.getInt("num");
			String memID = rs.getString("memID");
			String memPW = rs.getString("memPW");
			String email = rs.getString("email");
			String uname = rs.getString("uname");
			int birth = rs.getInt("birth");
			String agency = rs.getString("agency");
			String gender = rs.getString("gender");
			String region = rs.getString("region");
			String phone = rs.getString("phone");
			String regTM = rs.getTimestamp("regTM").toString().substring(0, 10);
			
%>

			<ul id="popUpDBUL">
				<li><%=num %></li>
				<li><%=memID %></li>
				<li><%=memPW %></li>
				<li><%=email %></li>
				<li><%=uname %></li>
				<li><%=birth %></li>
				<li><%=agency %></li>
				<li><%=gender %></li>
				<li><%=region %></li>
				<li><%=phone %></li>
				<li><%=regTM %></li>
			</ul>
			
			
<%	
		}    // 	End of While
		
	} catch (ClassNotFoundException e) {
		out.print(e.getMessage());
	} catch (SQLException e) {
		out.print(e.getMessage());
	} finally {
		
		try { if(conn != null) conn.close(); } catch(Exception e) { }
		
	}
%>
	
		
		</main>
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    