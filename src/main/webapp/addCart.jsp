<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = " dto.Book" %>
<%@ page import = " dao.BookRepository" %>

<%
	String id = request.getPatameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("book.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	
	Book book = dao.getBookById(id);
	if (book == null) {
		response.sendRedirect("exceptionNoBookId.jsp");
	}
	
	ArrayList<Book> goodsList=dao.getAllBooks();
	Book goods = new Book();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getBookId().equals(id)){
			break;
		}
	}
	
	ArrayList<Book> list = (ArrayList<Book>) session.getArribute("cartlist");
	if (list==null){
		list = new ArrayList<Book>();
		session.setAttribute("carlist" , list);
	}
	
	int cnt = 0;
	Book goodsQnt = new Book();
	for ( int i=0; i < list.size(); i++){
		goodsQnt = list.get(i);
		if (goodsQnt.getBookId().equals(id)) {
			cnt++;
			int orderQuantity(orderQuantity);
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if (cnt == 0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("book.jsp?id=" + id);
%>
	
	
	
	
	
	
	