<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>주문 완료</title>
</head>
<body>
<%

	String shipping_cartId="";
	String shipping_name="";
	String shipping_shippingPhone="";
	String shipping_country="";
	String shipping_zipCode="";
	String shipping_addressName="";

	Cookie[] cookies = request.getCookies();
	
	if(cookies !=null){
		for(int i = 0; i<cookies.length;i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_shippingPhone"))
				shipping_shippingPhone = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}

%>
<jsp:include page="menu.jsp" />
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">주문 완료</h1>
		</div>
	</div>
	
	
	<div class="container">
		<h2 class="alert alerat-danger">Thank you for order.</h2>
		<p> 주문은 1 ~ 2일 후에 배송될 예정입니다!
		<p> 주문번호 : <% out.println(shipping_cartId); %>
	</div>
	<div class="container">
		<p> <a href="./main.jsp" class="btn btn-outline-secondary">&laquo; 상품 목록</a>
	</div>
	

	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
</body>
</html>

<%
	session.invalidate();
	
	for(int i = 0; i <cookies.length;i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_shippingPhone"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}
	
	

%>
