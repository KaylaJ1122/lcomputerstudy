<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
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
<%@ include file="db_connection.jsp" %>
	<h1>게시글 상세페이지</h1>
	<table>
	<%
		String id = request.getParameter("b_id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "select * from board where b_id=?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			
			String b_id = rs.getString("b_id");
			String b_name = rs.getString("b_name");
			String b_title = rs.getString("b_title");
		
	%>
	
	
	<tr>
		<td>아이디</td>
		<td><%=b_id %></td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><%=b_name %></td>		
	</tr>
	
	<tr>
		<td>내용</td>
		<td><%=b_title %></td>
	</tr>
	
	<tr style = "height:50px;">
		<td style = "border:none;">
			<a href="userBoardEdit.jsp?b_id=<%=b_id%>" style="width:70%; font-weight:700; background-color:#818181; color:#fff;">수정</a>
		</td>
		<td style ="border:none;">
			<a style="width:70%; font-weight:700; background-color:red; color:#fff;">삭제</a>
		</td>
	</tr>
	
	<%
		}
	%>
	
	</table>

</body>
</html>