<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내용 상세</title>
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
	a {
		text-decoration:none;
		color:#000;
		font-weight:700;
		border:none;
		cursor:pointer;
		padding:10px;
		display:inline-block;
	}
</style>

<body>
<%@ include file = "db_connection.jsp" %>
<h1> 타이틀 상세내용</h1>
<table>
<%
	String title = request.getParameter("b_title");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String query = "select * from board2 where b_title=?";
	pstmt = conn.prepareStatement(query);
	pstmt.setString(1, title);
	
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String b_idx = rs.getString("b_idx");
		String b_title = rs.getString("b_title");
		String b_content = rs.getString("b_content");
		String b_hit = rs.getString("b_hit");
		String b_date = rs.getString("b_date");
	
%>
	<tr>
		<td> 게시판 번호 </td>
		<td><%=b_idx %></td>
	</tr>
	
	<tr>
		<td> 게시판 타이틀 </td>
		<td><%=b_title %></td>
	</tr>
	
	<tr>
		<td> 게시판 내용 </td>
		<td><%=b_idx %></td>
	</tr>
	
	<tr>
		<td> 게시판 조회수 </td>
		<td><%=b_hit %></td>
	</tr>
	
	<tr>
		<td> 게시판 날짜 </td>
		<td><%=b_date %></td>
	</tr>
	
	<tr style="height:50px;">
		<td style="border:none;">
			<a href="boardEdit.jsp?b_idx=<%=b_idx %>" style="width:70%; font-weight:700;background-color:#818181;color:#fff;">수정</a>
		</td>
		
		<td style="border:none;">
			<a style="width:70%; font-weight:700; background-color:red;color:#fff;">삭제</a>
		</td>
	</tr>
	<%
		}
	%>
	</table>
</body>
</html>