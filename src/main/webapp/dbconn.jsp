<%@ page contenttype = "text/html; charset= utf-8" %>
<%@ page import = "java.spl.*" %>
<%
	Connection conn=null;
	
	try{
		String url = jdbc"mysql://localhost:3306/BookMarketDB";
		String uesr = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url, uesr, password);
		
	}catch (SQLExeption ex){
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.ptintln("SQLException: " + ex.getMessage());
	}
%>