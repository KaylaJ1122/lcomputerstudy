<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP로 회원가입 만들기</title>
</head>
<body>
	<h2> 회원가입 </h2>
	<form action = "join_process.jsp" name = "user" method = "post">
		<p> 아이디 : <input type = "text" name = "id"><input type = "button" value = "아이디 중복 검사"></p>
		<p> 비밀번호 : <input type = "password" name = "password"></p>
		<p> 이름 : <input type = "text" name = "name"></p>
		<p> 연락처 :  <input type ="text" maxlength ="4" size = "4" name = "tel1">
					<input type ="text" maxlength ="4" size = "4" name = "tel2">
					<input type ="text" maxlength ="4" size = "4" name = "tel3">
		</p>
		<p> 나이 : <input type = "text" name = "age"></p>
		<p> <input type = "submit" value = "가입하기"></p>	
		
	</form>

</body>
</html>