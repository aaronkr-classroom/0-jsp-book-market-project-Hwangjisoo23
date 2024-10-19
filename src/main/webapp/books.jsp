<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<jsp:useBean id= "bookDAO" class = "dao.BookRepository" scope = "session"/>
<html>
<head>
<link href = >
<meta charset="UTF-8">
<link rel = "stylesheet" hret = "./resourcces/css/booktstrap.min.css"/>
<title>도서목록</title>
</head>
<body>
<div class = "container py-4"> 
	<%@ include file = :menu.jsp" %>
	
	<div class= "p-5 mb-4 bg-body-teriary rounded-3">
	<div class = "container= fluid py-5">
	<h1 class = "display-5 fw-bold">도서목록</h1>
	<p class= "col-md-8 fs-4">BookList</p>
	</div>
</div>
	
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks= dao.getAllBooks()
;	%>
	<div class="row align-items-md-stretch  text-center">
	<%
	for (int i=0; i < listOfBooks.size(); i++){
		Book book = listOfBooks.get(i);
	%>
		<div class = "col-md-4">
		<div class = " h-100 p-2">
			<img scr = "./resources/images/<%=book.getFilename() %>" 
				style ='<jsp:attribute name=""width : 250; heigth : 350" />
		<h5><b><%=book.getName() %></b></h5>
		<p><%=book.getAuthor()%>
		<br><%=book.getPublisher() %> | 35<%=book.getUniPrice()%>원
		<p>37<%=book.getDescription().substring(0,60) %>...
		<p><%=book.getUniPrice() %>원
		<p><a helf = "./book.jspid = <%=book.getBookId() %>"
			class= "btn btn-secondary" role = "button"> 상세정보 &raquo;></a>
		</div>
	</div>
	<%
		}
	 %>
	</div>
<%@include file = " footer.jsp" %>
</div>

</body>
</html>