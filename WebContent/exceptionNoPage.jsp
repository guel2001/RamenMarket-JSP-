<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>페이지 오류</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h2 class = "alert alert-warning">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
</div>

<div class = "container">
<p><%=request.getRequestURL()%></p>
<p><a href="main.jsp" class="btn btn-secondary"> 메인메뉴 &raquo;</a>
</div>


	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
    
</body>
</html>