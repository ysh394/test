<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
			<h2><a href="/manager">관리자</a></h2>
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
						<a href="/manager_member"><b>회원정보</b></a>
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
						<a href="/manager_upload">관리/업로드</a>
					</li>

				</ul>
			</div>

						
			
			<!-- 회원정보 리스트 -->
			<div id="managerGraph">
				<h2>회원정보</h2>
				
				<div id="memberInfo">
					<ul class="ListUL dFlex">
						<li>이름</li>
						<li>아이디</li>
						<li>비밀번호</li>
						<li>이메일</li>
						<li>생년월일</li>
						<li>전화번호</li>
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
		String sql = "select * from member order by num desc";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			String uname = rs.getString("uname");
			String memID = rs.getString("memID");
			String memPW = rs.getString("memPW");
			String email = rs.getString("email");
			int birth = rs.getInt("birth");
			String phone = rs.getString("phone");
%>
					
					
					<!-- 회원정보 DB -->
					<ul class="DBul dFlex">
						<li><%=uname %></li>
						<li><%=memID %></li>
						<li><%=memPW %></li>
						<li><%=email %></li>
						<li><%=birth %></li>
						<li><%=phone %></li>
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
		
		<button type="button" id="viewDetails">상세 보기</button>
		
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
		<script>
	// 회원 목록 팝업창   
		const btnDom = document.querySelector("div#managerWrap>button#viewDetails");
        btnDom.addEventListener("click", fnPop);

        function fnPop() {
            let fName = "/manager_member_popUp";
            let alias = "";

            let w = 600; // 팝업창 폭
            let h = 550; // 팝업창 높이

            //let lPos = 200; // 왼쪽 시작 위치 left position
            let lPos = (screen.width - w) /2;
            // (모니터 전체 가로폭 -  팝업 가로폭) / 2

            //let tPos = 400; // 위쪽 시작 위치 top position
            let tPos = (screen.height - h) /2;
            // (모니터 전체 세로높이 -  팝업 세로높이) / 2

            let prop = "width=" + w + "px, "; 
            prop += "height="+ h +"px, ";
            prop += "left=" + lPos +"px, ";
            prop += "top=" + tPos +"px";
            window.open(fName, alias, prop);
        }
	</script>
</body>
</html>    