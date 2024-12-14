<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.net.YRLEncoder" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.
	getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.
	getParameter("name"), "utf-8"));
	Cookie shippingDate = new Cookie("shipping_shippingDate", URLEncoder.
	ensode(request.getParameter("shippingDate"), "utf-8"));
	Cookie country = new Cookie("shipping_country", URLEncoder.
	ensode(request.getParameter("country"), "utf-8"));
	Cookie zipCode = new Cookie("shipping_zipCode", URLEncoder.encode(request.
	getParameter("zipCode"), "utf-8"));
	Cookie adressName = new Cookie("shipping_adressName", URLEncoder.encode(request.
	getParameter("adressName"), "utf-8"));
	
	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24 * 60 * 60);
	zipcode.setMaxAge(24 * 60 * 60);
	country.setMaxAge(24 * 60 * 60);
	adressName.setMaxAge(24 * 60 * 60);
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(ccountry);
	response.addCookie(zipCode);
	response.addCookie(adressName);
	
	response.senRedirect("orderConfirmation.jsp");
%>
	