<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel = " stylesheet" hret = " ./resources/css/bootstrap.main.css" />
<meta charset="EUC-KR">
<title>도서 아이디 오류</title>
</head>
<body>
<div class = "container py-4">
	<%@ include file = "menu.jsp" %>
	<div class ="p-5 mb-4 bg-body-teriary rounded-3">
		<div class ="comtainer-fluid py-5">
			<h1 class ="alert alert-danger">해당 도서는 존재하지 않습니다.</h1>
		</div>
	</div>
	
	<div class ="row ailgn-items-md-stretch">
		<div class = "col-md-12">
			<div class = "h-100 p-5">
				<p> <%=request.getRequestURL()%>?<%=request.getQueryString() %>
				<P> <a href= "book.jsp" class= "btn btn-secondary">도서목록 &raquo;</a>
			</div>
		</div>
	</div>
	<%@ include file = "footer.jsp" %>
</div>
</body>
</html>