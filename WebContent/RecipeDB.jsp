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
			<h1 class = "display-3" style="text-align: center;">Recipe DB</h1>
		</div>
	</div>
	 <div class="container">
	 	<div class="row" align="center">
	 	<%@ include file = "dbconn.jsp" %>
	 	
	 	<table width="100%" border = "2">
	 	<thead>
	 	<tr class = "table-secondary" style = "text-align:center;">
	 		<th>라면코드</th>
	 		<th>이름</th>
	 		<th>재료비</th>
	 		<th>카테고리</th>
	 		<th>설명</th>
	 		<th>쓰인 라면</th>
	 		<th>재료</th>
	 		<th>매운 정도</th>
	 		<th>파일 이름</th>
	 	</tr></thead>
	 	<%
	 		ResultSet rs =null;
		 	PreparedStatement pstmt = null;
		 	
		 	try{
		 		String sql = "select * from ramen";
		 		pstmt = conn.prepareStatement(sql);
		 		rs = pstmt.executeQuery();
		 		
		 		while(rs.next()){
		 			String r_id = rs.getString("r_id");
		 			String r_name = rs.getString("r_name");
		 			int r_unitPrice = rs.getInt("r_unitPrice");
		 			String r_category = rs.getString("r_category");
		 			String r_description = rs.getString("r_description");
		 			String r_manufacturer = rs.getString("r_manufacturer");
		 			String R_material = rs.getString("R_material");
		 			int R_spicyDegree = rs.getInt("R_spicyDegree");
		 			String r_filename = rs.getString("r_filename");
		 	
	 	
	 	%>
	 	<tr style = "text-align:center;">
	 		<td><%=r_id %></td>
	 		<td><%=r_name %></td>
	 		<td><%=r_unitPrice %></td>
	 		<td><%=r_category %></td>
	 		<td><%=r_description %></td>
	 		<td><%=r_manufacturer %></td>
	 		<td><%=R_material %></td>
	 		<td><%=R_spicyDegree %></td>
	 		<td><%=r_filename %></td>
	 	</tr>
	 	<%
		 		}
		 	}catch(SQLException ex){
		 		out.println("Ramen 테이블 호출 실패 <br>");
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