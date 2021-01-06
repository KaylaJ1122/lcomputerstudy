<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="db_connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	h1 {
			text-align:center;
		}
</style>
</head>
<body>
<h1>게시판 글쓰기</h1>

<form class="form-horizontal" action="boardjoin_process.jsp" method="post">
	<div class="form-group">
		<label for="exampleInputid" class="col-sm-2 control-label">아이디</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요">	
		</div>
		<div class="col-sm-2"></div>
	</div>
	
	<div class="form-group">
		<label for="exampleInputname" class="col-sm-2 control-label">이름</label>
		<div class="col-sm-8">
		<input type="text" class="form-control" name="name" placeholder="이름을 입력">
		</div>
	</div>
	
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">내용</label>
		<div class="col-sm-8">
			<textarea class="form-control" rows="3" name="title" placeholder="내용을 입력해주세요"></textarea>
		</div>
	</div>
	
	<div class="form-group">
    	<div class="col-sm-offset-2 col-sm-10">
      	<button type="submit" class="btn btn-default">등록</button>
    	</div>
  	</div>
</form>
</body>
</html>