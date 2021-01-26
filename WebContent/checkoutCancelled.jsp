<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>주문 취소</title>
</head>
<body>
<jsp:include page="menu.jsp" />
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">Order Cancelled</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
	</div>
	<div class="container">
		<p><a href="./main.jsp" class="btn btn-outline-secondary">&laquo;메인으로</a>
	</div>
	
	
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>
</html>