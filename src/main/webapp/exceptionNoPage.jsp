<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel = " stylesheet" hret = " ./resources/css/bootstrap.main.css" />
<meta charset="EUC-KR">
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "comtainer">
			<h2 class = "alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class = "container">
	<p><%=request.getRequestURL() %></p>
	<p> <a href = "books.jsp" class = "btn btn-secondary"> 도서 목록&raquo;</a>
	</div>
</body>
</html>