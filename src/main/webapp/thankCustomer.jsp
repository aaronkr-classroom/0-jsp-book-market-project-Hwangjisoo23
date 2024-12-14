<%@ page contentType="text/html; charset=utf-8" %>
<%@ psge import = "java.net.URLDecode" %>
<html>
<head>
<link rel = " stylesheet" hret = " ./resources/css/bootstrap.min.css" />
<title>주문 완료</title>
</head>
<body>
<%
	Stirng shipping_cartId = "";
	Stirng shipping_name = "";
	Stirng shipping_shippingDate = "";
	Stirng shipping_country = "";
	Stirng shipping_aipCode = "";
	Stirng shipping_addressNmae = "";

	Cookie[] cookies = request.getCookies();
	
	if (cookies != null){
		for (int i = 0; i < cookies.length; i++){
		Cookie thisCookie = cookie[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			shipping_cartId=UPLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_shippingDate"))
			shipping_shippingDate=UPLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>

<div class = "container py-4">
	<%@ include file = "menu.jsp" %>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3"> 
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold">주문 완료</h1>
			<p class = "col-md-8 fs-4">Order Completed</p>
		</div>
	</div>
	
	<div class = "row align-item-md-strentch">
		<h2 class = "alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p>주문은<% out.println(shipping_shippingDate); %>에 배송될 예정입니다!
		<p>주문번호: <% out.println(shipping_cartId); %>
	</div>
	<div class = "container">
		<p> <a href = "books.jsp" class = "btn btn-secondary">&laquo;도서 목록</a>
	</div>
	<%@ include file = "footer.jsp" %>
</div>
</body>
</html>
<%
	session.invalidate();
	
	for (int i = 0; i < cookies.length; i++){
		Cookie thisCookie = cookie[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
			
		response.addCookie(thisCookie);
	}
%>