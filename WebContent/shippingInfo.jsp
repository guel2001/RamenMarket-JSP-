<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
	<script type="text/javascript" src="./resources/js/validation.js"></script>
	
<title>배송 정보</title>
</head>
<body>

<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message">

<jsp:include page="menu.jsp" />
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;"><fmt:message key="title2"/></h1>
		</div>
	</div>
		 <div class="container">
		 <div class="text-right">
			 <a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
			 
		 </div>
		 </div>
	
	<div class="container">
		<form name="order" action="./processShippingInfo.jsp"class="form-horizontal"
		method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>"/>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name"/></label>
				<div class = "col-sm-3">
					<input name="name" id = "name" type="text" class="form-control"/>
					</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="phone"/></label>
				<div class="col-sm-3">
					<input name="shippingPhone" id = "shippingPhone" type="text" class="form-control" />(xxx-xxxx-xxxx)
					</div>
				</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="country"/></label>
				<div class="col-sm-3">
					<input name="country" id = "country" type="text" class="form-control"/>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="zipcode"/></label>
					<div class="col-sm-3">
						<input name="zipCode" id = "Zipcode" type="text" class="form-control"/>
						</div>
				</div>
				
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="address"/></label>
				<div class="col-sm-5">
					<input name="addressName" id = "addressName" type="text" class="form-control" />
					</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
					class="btn btn-secondary" role="button"><fmt:message key="back"/></a>
					<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckInfo()"/>
					<a href="./checkoutCancelled.jsp" class="btn btn-secondary" role="button"><fmt:message key="cancel"/></a>
					</div>
				</div>
		</form>
	</div>
	</fmt:bundle>
	<hr>
	<jsp:include page="footer.jsp" />
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
</body>
</html>