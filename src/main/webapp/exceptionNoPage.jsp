<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel = " stylesheet" hret = " ./resources/css/bootstrap.main.css" />
<meta charset="EUC-KR">
<title>������ ����</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "comtainer">
			<h2 class = "alert alert-danger">��û�Ͻ� �������� ã�� �� �����ϴ�.</h2>
		</div>
	</div>
	<div class = "container">
	<p><%=request.getRequestURL() %></p>
	<p> <a href = "books.jsp" class = "btn btn-secondary"> ���� ���&raquo;</a>
	</div>
</body>
</html>