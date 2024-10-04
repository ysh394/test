<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<body>
<!-- 관리자-회원정보 페이지 -->
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
						
						<li ><a href="/manager_comment" style="color: #000;">웹툰관리</a></li>
						
						<li><a href="/manager_revenue">매출</a></li>
						
						<li class="managerUl">
						<a href="/manager_upload">관리/업로드</a>
					</li>
					</ul>
				</div>
				
			<!-- 댓글 리스트 -->
			<div id="commentList">
			
				<h2>등록된 웹툰</h2>
				
				<div id="commentInfo">
					<ul class="commentUL dFlex">
						<li>번호</li>
						<li>웹툰 명</li>
						<li>작가</li>
						<li>등록일</li>
						<li>관리</li>
					</ul>

<!-- 접속 -->
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
		String sql = "select * from toonAll order by num desc";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int comNum = rs.getInt("num");
			String title = rs.getString("title");
			String memID = rs.getString("writer");
			String regTM = rs.getTimestamp("uploadTM").toString().substring(0, 10);
			
%>					
								
					<ul class="commentDBul dFlex">
						<li><%=comNum %></li>
						<li><%=title %></li>
						<li><%=memID %></li>
						<li><%=regTM %></li>
						<li>
							<button>삭제</button>
						</li>
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
					
				</div>
				<!-- div#memberInfo -->
				
			</div>
			</main>

	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    