<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제</title>
</head>
<body>
<%@ include file="db_connection.jsp" %>

<%
	String id = request.getParameter("b_id");
	System.out.println(id);
	
	PreparedStatement pstmt = null;
	
	String query = "delete from board where u_idx=?";
	pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	pstmt.executeUpdate();
%>
	<h2>삭제 완료</h2>
<script>
setTimeout(function (){
	window.location.href = "userBoardlist.jsp";
})
</script>
</body>
</html>