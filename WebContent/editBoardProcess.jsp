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
	String id = request.getParameter("b_id");
	String name = request.getParameter("b_name");
	String title = request.getParameter("b_title");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "UPDATE board SET b_id = ?, b_name = ?, b_title= ? where b_idx";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, title);
		pstmt.setString(4, idx);
		pstmt.executeUpdate();
%>
		<h3>수정완료</h3>
		
<%
	} catch(SQLException ex) {
		System.out.println("SQLException : " + ex.getMessage());
	} finally {
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>
<a href="userBoardlist.jsp">돌아가기</a>
</body>
</html>