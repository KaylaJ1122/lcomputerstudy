<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 값 넘겨받기</title>
</head>
<body>
<%@ include file="db_connection.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String idx = request.getParameter("b_idx");
	String title = request.getParameter("edit_title");
	String content = request.getParameter("edit_content");
	String hit = request.getParameter("edit_hit");
	String date = request.getParameter("edit_date");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "UPDATE board2 SET b_idx = ? , b_title = ?, b_content=?, b_hit=?, b_date=? where b_idx = ?";
		
		pstmt =conn.prepareStatement(sql);
		
		pstmt.setString(1, idx);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, hit);
		pstmt.setString(5, date);
		pstmt.setString(6, idx);
		
		pstmt.executeUpdate();
%>
		<h3>수정 완료</h3>
<%
	} catch(SQLException ex) {
		System.out.println("SQLException : " + ex.getMessage());
	} finally {
		if(pstmt != null) {
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>
<a href="boardlist.jsp">돌아가기</a>
</body>
</html>