<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import ="java.sql.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>

<title>라면 편집</title>	
<style>

#abc{
width : 500px;
height: 300px;

}

<%
	String edit = request.getParameter("edit");
%>
	

</style>
<script type="text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 레시피를 삭제합니다.") == true)
			location.href ="./deleteRamen.jsp?id=" +id;
		else
			return;
	}
</script>
</head>	
<body>


<jsp:include page="menu2.jsp" />
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">Ramen Edit</h1>
		</div>
	</div>
		   <p style="text-align: center;"><a href="./addRamen.jsp"class="btn btn-outline-info" role="button"  style="width : 150px;" >레시피 등록 </a>
		    <%
	 	
	 		if(edit.equals("update")){	
	 		%>
			<a href="./editRamen.jsp?edit=delete"class="btn btn-outline-danger" role="button"  style="width : 150px;" >레시피  삭제</a>
				<%
	 		}else if(edit.equals("delete")){
	 		
	 	%>
			<a href="./editRamen.jsp?edit=update"class="btn btn-outline-success" role="button"  style="width : 150px;" >레시피  수정</a></p>
			<%} %>
	 <div class="container">
		<div class="row" align="center">
		
			 <%@include file ="dbconn.jsp" %>
			 <%
			 	PreparedStatement pstmt =null;
			 	ResultSet rs = null;
			 	
			 	String sql = "select * from ramen";
			 	pstmt = conn.prepareStatement(sql);
			 	rs = pstmt.executeQuery();
			 	while(rs.next()){
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
	 		
	 		<%
	 	
	 		if(edit.equals("update")){	
	 		%>
	 		<p><a href="./updateRamen.jsp?id=<%=rs.getString("r_id") %>" class="btn btn-danger" role="button">수정 &raquo; </a>
	 	
	 	<%
	 		}else if(edit.equals("delete")){
	 		
	 	%>
	 	<p><a href="#" onclick="deleteConfirm('<%=rs.getString("r_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
	 	
	 	
       <%
			 	}%></div><%}
	 	if(rs != null)
	 			rs.close();
	 	if(pstmt !=null)
	 				pstmt.close();
	 	if(conn != null)
	 				conn.close();
	 	%></div>
<hr></div>
<jsp:include page="footer.jsp" />
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
    
	</body>
	</html>