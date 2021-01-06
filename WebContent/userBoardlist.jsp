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
<%@ include file ="db_connection.jsp" %>
<h1>게시판 목록</h1>
<table>
	<tr>
		<th>ID</th>
		<th>이름</th>
		<th>내용</th>
	</tr>
	
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from board";
		pstmt = conn.prepareStatement(query);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String b_id = rs.getString("b_id");
			String b_name = rs.getString("b_name");
			String b_title = rs.getString("b_title");
	%>
	<tr>
		<td><a href="userBoardDetail.jsp?b_id=<%=b_id%>"><%=b_id %></a></td>
		<td><%=b_name %></td>
		<td><%=b_title %></td>
	</tr>
	
	<td style="border:none;">
		<a href="userBoardDelete.jsp?b_id=<%=b_id %>" style="width:70%l font-weight:700; background-color:red; color:#fff;">삭제</a>
	</td>
	<%
		}
		rs.close();
		pstmt.close();
		conn.close();
	%>
		
	
</table>
</body>
</html>