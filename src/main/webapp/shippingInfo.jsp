<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel = "stylesheet" href ="./resources/css/bootstrap.min.css"/>
<title>��� ����</title>
</head>
<body>
<div class = "container py-4">
	<%@inculde file = "menu.jsp" %>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold">��� ����</h1>
				<p class = "col-md-8 fs-4">Shipping Info</p>
		</div>
	</div>
	
	<div class = "row align-items-md-stretch">
		<form action = "./processShippingInfo.jsp" method = "post">
			<input type = "hidden" name = "cartId" value = "<%=request.getParameter("cartId")%>">
			<div class = "mb-3 row">
				<label class = "col-sm-2">����</label>
				<div class = "col-sm3">
					<input type = "text" name = "name" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">�����</label>
				<div class = "col-sm-3">
					<input type = "text" name = "shippingDate" class = "form-control"> (yyyy/mm/dd)
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">������</label>
				<div class = "col-sm-3">
					<input type = "text" name = "contry" class = "form-control">
				</div>	
			</div>
			<div class = "mb-3 row">
			 <label class = "col-sm-2">�����ȣ</label>
				<div class = "col-sm-3">
					<input type = "text" name = "zipCode" class = "form-control">
				</div>	
			 </div>
			 <div class = "mb-3 row">
			 <label class = "col-sm-3">�ּ�</label>
				<div class = "col-sm-5">
					<input type = "text" name = "addressName" class = "form-control">
				</div>	
			 </div>
			 <div class = "mb-3 row">
				<div class = "col-sm-offset-2 col-sm-10">
					<a href = "./cart.jsp?cartId = <%request.getParameter("csrtId")%>"
					class = "btn btn-secondary" role = "button">����</a>
					<input type = "submit" class = "btn btn-primary" value = "���" />
					<a href = "./checkOutCancelled.jsp" class = "btn btn-secondary" role = "button">���</a>
				</div>
			 </div>
		</form>
	</div>
	<jsp:include page = "footer.jsp" />
</div>
</body>
</html>