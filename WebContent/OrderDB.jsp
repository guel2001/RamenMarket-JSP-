<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>레시피 DB</title>

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>




</head>
<body>
<jsp:include page="menu2.jsp" />



<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">Order DB</h1>
		</div>
	</div>
	 <div class="container">
	 	<div class="row" align="center">
	 	<%@ include file = "dbconn.jsp" %>
	 	
	 	<table width="100%" border = "2">
	 	<thead>
	 	<tr class = "table-secondary" style = "text-align:center;">
	 		<th>주문번호</th>
	 		<th>주문자</th>
	 		<th>연락처</th>
	 		<th>국가명</th>
	 		<th>우편번호</th>
	 		<th>주소</th>
	 		
	 	</tr></thead>
	 	<%
	 		ResultSet rs =null;
		 	PreparedStatement pstmt = null;
		 	
		 	try{
		 		String sql = "select * from orderinfo";
		 		pstmt = conn.prepareStatement(sql);
		 		rs = pstmt.executeQuery();
		 		
		 		while(rs.next()){
		 			String s_cartId = rs.getString("s_cartId");
		 			String s_name = rs.getString("s_name");
		 			String s_shippingPhone = rs.getString("s_shippingPhone");
		 			String s_country =rs.getString("s_country");
		 			String s_zipCode = rs.getString("s_zipCode");
		 			String s_addressName = rs.getString("s_addressName");
		 		
	 	
	 	%>
	 	<tr style = "text-align:center;">
	 		<td><%=s_cartId %></td>
	 		<td><%=s_name %></td>
	 		<td><%=s_shippingPhone %></td>
	 		<td><%=s_country %></td>	 		
	 		<td><%=s_zipCode %></td>
	 		<td><%=s_addressName %></td>
	 		
	 	</tr>
	 	<%
		 		}
		 	}catch(SQLException ex){
		 		out.println("orderinfo 테이블 호출 실패 <br>");
		 		out.println("SQLException: " + ex.getMessage());
		 	}finally{
		 		
		 	if(rs != null)
	 				rs.close();
	 		if(pstmt !=null)
	 				pstmt.close();
	 		if(conn != null)
	 				conn.close();
	 	}
	 
	 	
	 
	 	%>	</table>
	 	
	 	</div>
	 	<hr></div>

<jsp:include page="footer.jsp" />
	 <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>
</html>