<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<body>
<%@ include file="db_connection.jsp" %>
	<h1>게시판 정보 수정</h1>
	<%
		String idx = request.getParameter("b_idx");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from board2 where b_idx=?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, idx);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String b_idx = rs.getString("b_idx");
			String b_title = rs.getString("b_title");
			String b_content = rs.getString("b_content");
			String b_hit = rs.getString("b_hit");
			String b_date = rs.getString("b_date");
	%>
		<form action="boardeditProcess.jsp" name="board2" method="post">
			<input type="hidden" name="b_idx" value="<%=b_idx%>">
			<p> 게시판 타이틀 : <input type="text" name="edit_title" value="<%=b_title%>"></p>
			<p> 게시판 내용 : <input type="text" name="edit_content" value="<%=b_content%>"></p>
			<p> 게시판 조회수 : <input type="text" name="edit_hit" value="<%=b_hit%>"></p>
			<p> 게시판 날짜 : <input type="text" name="edit_date" value="<%=b_date%>"></p>
			<p> <input type="submit" value="수정완료"></p>
		</form>
	<%
		}
	%>
	
</body>
</html>