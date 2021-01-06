<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "db_connection.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "insert into board(b_id,b_name,b_title) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, title);
		pstmt.executeUpdate();
	} catch(SQLException ex){
		System.out.println("SQLException : "+ ex.getMessage());
	} finally {
		if(pstmt != null){
			pstmt.close();
		} 
		if(conn != null){
			conn.close();
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 값 넘겨받기</title>
</head>
<body>

<h3>저장 완료</h3>
</body>
</html>