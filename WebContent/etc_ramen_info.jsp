<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*"%>
<%@ page errorPage="exceptionNoRamenId.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 작은 라면</title>

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
	
<script type="text/javascript">

function addToCart(){
	if(confirm("나의 레시피에 추가하시겠습니까?")){
		document.addForm.submit();
		
	}else{
		document.addForm.reset();
	}
}

</script>


</head>
<body>
<jsp:include page="menu.jsp" />
	<%@ include file = "dbconn.jsp" %>
	 	<%

			String ramenId =request.getParameter("id");
	 		PreparedStatement pstmt = null;
	 		
	 		ResultSet rs =null;
	 		
	 		String sql = "select * from ramen where r_id = ?";
	 		pstmt = conn.prepareStatement(sql);
	 		pstmt.setString(1,ramenId);
	 		rs = pstmt.executeQuery();
	 		
	 		if(rs.next())
	 			{
	 	%>

	 
	 <div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;font-size: 5.75vw;"><%=rs.getString("r_name")%>'s Info</h1>
		</div>
	</div>
	
	 <div class="container">
	 	<div class="row">
	 		<div class="col-md-5">
	 		<img src="./resources/images/<%=rs.getString("r_filename") %>"style="width:100%; border-radius : 15px;
    border : 3px solid black;"/>
	 		</div>
		 	<div class="col-md-6">
	 			<h3><%=rs.getString("r_name")%></h3>
	 			<h4><%=rs.getString("r_unitPrice") %>원</h4>
	 			<p> <b>라면 코드  :  </b><span class="badge badge-pill badge-danger">	<%=rs.getString("r_id")%></span>
	 			<p> <b>쓰인 라면</b> : <%=rs.getString("r_manufacturer") %>
	 			<p> <b>매운 정도</b> : 
	 			
	 			<%
	 			if( rs.getString("r_spicyDegree").equals("1")){out.println("★☆☆☆☆");}
		 		else if(rs.getString("r_spicyDegree").equals("2")){out.println("★★☆☆☆");}
		 		else if(rs.getString("r_spicyDegree").equals("3")){out.println("★★★☆☆");}
		 		else if(rs.getString("r_spicyDegree").equals("4")){out.println("★★★★☆");}
		 		else{ out.println("★★★★★");}
	 			%>
	 			
 	 			<p> <b>분류</b> : <%=rs.getString("r_category") %>
	 			<p> <b>재료</b> : <%=rs.getString("R_material") %>
	 			 			
	 			<p><%=rs.getString("r_description") %>
	 			<p><form name="addForm" action="./addCart_etc.jsp?id=<%=rs.getString("r_id")%>" method="post">
	 			<p><a href = "#" class="btn btn-info" onclick="addToCart()">내 레시피에 담기 &raquo;</a> 
	 			<a href="./cart.jsp" class="btn btn-warning">나의 레시피 &raquo;</a>		
	 			<a href ="./etc_ramen.jsp" class ="btn btn-secondary">레시피 목록&raquo;</a>
	 		</form>
	 	</div>
	 	
	 	
	 
	 	</div>
	 	
	 	<hr></div>
 		<%
 		}else{
 			RequestDispatcher dispatcher = request.getRequestDispatcher("exceptionNoRamenId.jsp");

 	        dispatcher.forward(request, response);
 		}
	 	if(rs != null)
	 			rs.close();
	 	if(pstmt !=null)
	 				pstmt.close();
	 	if(conn != null)
	 				conn.close();
	 	%>

<jsp:include page="footer.jsp" />
	 <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>
</html>