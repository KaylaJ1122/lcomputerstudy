<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<%@ include file="db_connection.jsp" %>
	<h1>게시글 정보 수정</h1>
	<%
		String id = request.getParameter("b_idx");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from board where b_idx=?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, id);
		
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String b_idx = rs.getString("b_idx");
			String b_id = rs.getString("b_id");
			String b_name = rs.getString("b_name");
			String b_title = rs.getString("b_title");
		
	%>
		<form action="userBoardEdit.jsp" name="board" method="post">
			<input type="hidden" name="b_idx" value="<%=b_idx %>">
			<p>아이디 : <input type="text" name="edit_id" value="<%=b_id %>"></p>
			<p>이름 : <input type="text" name="edit_name" value="<%=b_name %>"></p>
			<p>내용 : <input type="text" name="edit_title" value="<%=b_title %>"></p>
			<p> <input type="submit" value="수정완료"></p>
		</form>
		<%
		}
		%>
</body>
</html>