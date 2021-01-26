<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 작은 라면</title>

<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>

<style>
#abc{
width : 500px;
height: 300px;

}


</style>


</head>
<body>
<jsp:include page="menu.jsp" />



<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">List of Recipes</h1>
		</div>
	</div>

	
	 <div class="container">
	 	<div class="row" align="center">
	 	<%@ include file = "dbconn.jsp" %>
	 	<%
	 		PreparedStatement pstmt = null;
	 		ResultSet rs =null;
	 		String sql = "select * from ramen";
	 		pstmt = conn.prepareStatement(sql);
	 		rs = pstmt.executeQuery();
	 		while(rs.next()){
	 			if(rs.getString("r_category").equals("그외 라면")){
	 	%>

	 	<div class="col-md-4">
	 		<img src="./resources/images/<%=rs.getString("r_filename")%>" id = "abc" style="width : 100%; border-radius : 15px;
    border : 3px solid black;">
	 		<h3><%=rs.getString("r_name")%></h3>
	 		<p><%=rs.getString("r_manufacturer") %>
	 		<p><%=rs.getString("r_unitPrice") %>원
	 		<p><%
	 	
	 		if( rs.getString("r_spicyDegree").equals("1")){out.println("★☆☆☆☆");}
	 		else if(rs.getString("r_spicyDegree").equals("2")){out.println("★★☆☆☆");}
	 		else if(rs.getString("r_spicyDegree").equals("3")){out.println("★★★☆☆");}
	 		else if(rs.getString("r_spicyDegree").equals("4")){out.println("★★★★☆");}
	 		else{ out.println("★★★★★");}
	 		%>
	 		<p><a href="./etc_ramen_info.jsp?id=<%=rs.getString("r_id") %>"
	 		class="btn btn-danger" role="button">상세정보 &raquo; </a>
	 	</div>
	 	<%
	 		}
	 		}
	 	%>
	 	<%
	 	if(rs != null)
	 			rs.close();
	 	if(pstmt !=null)
	 				pstmt.close();
	 	if(conn != null)
	 				conn.close();
	 	%>
	 	</div>
	 	<hr></div>

<jsp:include page="footer.jsp" />
	 <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>
</html>