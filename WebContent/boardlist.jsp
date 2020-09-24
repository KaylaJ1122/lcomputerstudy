<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<style>
	table {
		border-collapse:collapse;
	}
	table tr th {
		font-weight:700;
		
	}
	table tr td, table tr th {
		border:1px solid #818181;
		width:200px;
		text-align:center;
	}
</style>
<body>
<%@ include file = "db_connection.jsp" %>
<h1>게시판 목록</h1>
<table>
	<tr>
		<th>No</th>
		<th>타이틀</th>
		<th>내용</th>
		<th>조회수</th>
		<th>날짜</th>
	</tr>
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from board2";
		pstmt = conn.prepareStatement(query);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String b_idx = rs.getString("b_idx");
			String b_title = rs.getString("b_title");
			String b_content = rs.getString("b_content");
			String b_hit = rs.getString("b_hit");
			String b_date = rs.getString("b_date");
	%>
	<tr>
		<td><%=b_idx%></td>
		<td><a href="boardDetail.jsp?b_title=<%=b_title%>"><%=b_title %></a></td>
		<td><%=b_content%></td>
		<td><%=b_hit%></td>
		<td><%=b_date%></td>
	</tr>
	
		
	
	<%
		}
		rs.close();
		pstmt.close();
		conn.close();
	%>
		
</table>

</body>
</html>