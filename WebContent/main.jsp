<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 작은 라면</title>

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.css"/>




</head>
<body>
<jsp:include page="menu.jsp" />


	<div class ="jumbotron">
		<div class ="container">
			<div class="row">
  				<div class="col-md-12"><h1 style="text-align: center;font-size : 70px" >Enjoy Your Ramen !!</h1></div>
			</div>
		<div class="row">
  			<div class="col-md-4"><img src="./resources/images/ramen_main.jpg"style="width : 100% ">
  				<button type="button" class="btn btn-danger disabled" style="display: block; margin: 0 auto;"
  				onclick="location.href = 'hot_ramen.jsp'">매운 라면류</button></div>
  
  		<div class="col-md-4"><img src="./resources/images/zazang_main.png"style="width : 100% ">
  				<button type="button" class="btn btn-secondary disabled" style="display: block; margin: 0 auto;"
  				onclick="location.href = 'black_ramen.jsp'">짜장 라면류</button></div>
  
  		<div class="col-md-4"><img src="./resources/images/etc_ramen_main.jpg"style="width : 100% ">
  				<button type="button" class="btn btn-info disabled" style="display: block; margin: 0 auto;"
  				onclick="location.href = 'etc_ramen.jsp'">그외 라면류</button></div>
		</div>
		</div>
		
	</div>
	





<hr>
<jsp:include page="footer.jsp" />
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
</body>
</html>