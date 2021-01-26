<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
<%
	String cartId = session.getId();	
%>
<title>장바구니</title>
</head>
<body>
	<jsp:include page= "menu.jsp" />
	<div class = "jumbotron">
		<div class="container">
			<h1 class="display-3" style="text-align: center;">My Recipe</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=
					cartId%>" class="btn btn-outline-danger">삭제하기</a></td>
					<td align ="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-outline-success">
					주문하기</a></td>
					
				</tr>
			</table>
		</div>
		
		<div style="padding-top:50px">
			<table class="table table-hover">
			<tr>
				<th>이름</th>
				<th>재료비</th>
				<th>수량</th>
				<th>합계</th>
				<th>정보</th>
				<th>비고</th>
				
			</tr>
			
			<%
				int sum =0;
				ArrayList<Ramen> cartList = (ArrayList<Ramen>)
				session.getAttribute("cartlist");
				if(cartList ==null)
					cartList = new ArrayList<Ramen>();
				
				for(int i = 0; i <cartList.size(); i++){
					Ramen ramen = cartList.get(i);
					int total = ramen.getUnitPrice()*ramen.
					getQuantity();
					sum +=total;
				%>
					
			<tr>
				<td><%=ramen.getRname()%></td>
				<td><%=ramen.getUnitPrice()%> 원</td>
				<td><%=ramen.getQuantity()%> 인분</td>
				<td><%=total%></td>
				<%
					String path ="";
				if(ramen.getCategory().equals("매운라면")) path = "hot_raman_info";
				else if(ramen.getCategory().equals("자장라면")) path = "black_raman_info";
				else path = "etc_ramen_info";
				%>
				<td><a href="./<%=path%>.jsp?id=<%=ramen.getRamenId()%>" class="badge badge-info">보러가기</a></td>
				<td><a href="./removeCart.jsp?id=<%=ramen.getRamenId()%>" class="badge badge-danger">삭제</a></td>		
			</tr>
	<%
				}
	%>
			<tr>
				<th></th>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=sum%></th>
				<th></th>
				
			</tr>
			</table>
		
			<a href="./main.jsp" class="btn btn-outline-secondary">&laquo;다른 레시피 보기</a>
		
		</div>
		<hr>		
		</div>
		<jsp:include page="footer.jsp"/>
	
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
</body>
</html>