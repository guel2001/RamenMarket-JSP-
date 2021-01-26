<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
<title>로그인</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3" style = "text-align:center;">Login</h2>
		</div>
	</div>
	<div class="container" align="center">
	<div class="form-signin-hedding"><h3>Please sign in</h3>
	<%
		String error = request.getParameter("error");
		if(error !=null){
			out.println("<div class='alert alert-danger'>");
			out.println("아이디와 비밀번호를 확인해 주세요");
			out.println("</div>");
		}
	%>
		<form class="form-signin" action="j_security_check" method="post">
			<div class="form-group">
				<label for="inputUserName" class="sr-only">User Name</label>
				<input type="text" class="form-control" placeholder="ID" 
				name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" class="form-control" 
					placeholder="password" name='j_password' required>
				</div>
				<button class="btn btn btn-lg btn-info btn-block"
					type="submit">로그인</button>
				</form>
	</div>
</div>

	 <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>
</html>