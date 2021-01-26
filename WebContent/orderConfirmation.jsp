<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Ramen" %>
<%@ page import="dao.RamenRepository" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name ="";
	String shipping_shippingPhone="";
	String shipping_country="";
	String shipping_zipCode="";
	String shipping_addressName="";
	
	Cookie[] cookies = request.getCookies();
	
	
	if(cookies != null){
		for(int i = 0; i <cookies.length;i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_shippingPhone"))
				shipping_shippingPhone=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_country"))
				shipping_country=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_zipCode"))
				shipping_zipCode =URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_addressName"))
				shipping_addressName =URLDecoder.decode((thisCookie.getValue()),"utf-8");
			
			
		}
	}
%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
	
<title>주문 정보</title>
</head>


<body>

	<jsp:include page= "menu.jsp" />
	<div class = "jumbotron">
		<div class="container">
			<h1 class="display-3" style="text-align: center;">Order Info</h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>Order details</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br> 성명 : <%out.println(shipping_name); %><br>
				우편번호 : <% out.println(shipping_zipCode);%><br>
				주소 : <% out.println(shipping_addressName); %>(<%out.println(shipping_country); %>)<br>
				</div>
				<div class="col-4" align="right">
					<p> 연락처 : <% out.println(shipping_shippingPhone); %>
					</div>
		</div>
		
		<div>
			<table class="table table-hover">
			<tr>
				<th class="text-center">이름</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			<%
			
					int sum =0;
					ArrayList<Ramen> cartList = (ArrayList<Ramen>) session.
					getAttribute("cartlist");
					if(cartList == null)
							cartList = new ArrayList<Ramen>();
					for(int i = 0; i<cartList.size(); i++){
						Ramen ramen= cartList.get(i);
						int total=ramen.getUnitPrice()*ramen.getQuantity();
						sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=ramen.getRname()%></em></td>
				<td class="text-center"><%=ramen.getQuantity()%></td>	
				<td class="text-center"><%=ramen.getUnitPrice()%>원</td>			
				<td class="text-center"><%=total%>원</td>
			</tr>
			
			<%
					}
			%>
			<%
			PreparedStatement pstmt = null;
			
			String sql = "insert into orderinfo values(?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,shipping_cartId);
			pstmt.setString(2,shipping_name);
			pstmt.setString(3,shipping_shippingPhone);
			pstmt.setString(4,shipping_country);
			pstmt.setString(5,shipping_zipCode);
			pstmt.setString(6,shipping_addressName);
			pstmt.executeUpdate();
			%>
			
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sum %></strong></td>
			</tr>
			</table>
			
			
			<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>"
			class="btn btn-secondary" role="button">이전</a>
			<a href="./thankCustomer.jsp" class="btn btn-secondary" role="button">확인</a>
				</div>
	</div>


		<%
		if(pstmt != null)
			pstmt.close();
		if(conn !=null)
			conn.close();
		%>

<hr>
<jsp:include page="footer.jsp" />
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
</body>


</html>