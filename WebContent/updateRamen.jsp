<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
<script type="text/javascript" src="./resources/js/validation.js"></script>

<title>레시피 수정</title>
	
	</head>
	
<body>


<jsp:include page="menu2.jsp" />
	<%@ include file="dbconn.jsp" %>
	<%
		    String ramenId = request.getParameter("id");
	
	 		PreparedStatement pstmt = null;
	 		ResultSet rs =null;
	 		
	 		String sql = "select * from ramen where r_id = ?";
	 		pstmt = conn.prepareStatement(sql);
	 		pstmt.setString(1,ramenId);
	 		rs = pstmt.executeQuery();
	 		if(rs.next()){
	 			
	 	%>
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;">Modify</h1>
		</div>
	</div>
	
	 <div class="container">
	
	 	<form name="newRamen" action="./processUpdateRamen.jsp" 
	 	class="form-horizontal" method="post" enctype="multipart/form-data">
	 		
	 		
	 		<div class="form-group row">
	 			<label class="col-sm-2">라면코드</label>
	 			<div class="col-sm-3">
	 				<input type="text" id="ramenId" name="ramenId" class="form-control" value='<%=rs.getString("r_id") %>' readonly>
	 			</div>
		 	</div>
		 	
	 	<div class="form-group row">
	 		<label class="col-sm-2">이름</label>
	 		<div class="col-sm-3">
	 			<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("r_name")%>">
	 			</div>
	 		</div>
	 		
	 		
	 		<div class="form-group row">
	 		<label class="col-sm-2">재료비</label>
	 		<div class="col-sm-3">
	 			<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getInt("r_unitPrice") %>">
	 			</div>
	 		</div>
	

		  
	 		
	 		<div class="form-group row">
	 		<label class="col-sm-2">쓰인 라면</label>
	 		<div class="col-sm-3">
	 			<input type="text" id = "manufacturer" name="manufacturer" class="form-control" value="<%=rs.getString("r_manufacturer") %>">
	 			</div>
	 		</div>
	 		

	 		
	 		<div class="form-group row">
	 		<label class="col-sm-2">재료</label>
	 		<div class="col-sm-3">
	 			<textarea id = "material" name="material" cols="200" rows="3" 
	 			class="form-control"> <%=rs.getString("r_material") %></textarea>
	 			</div>
	 		</div>
	 
			<div class="form-group row">
	 		<label class="col-sm-2">설명</label>
	 		<div class="col-sm-5">
	 			<textarea id = "description" name="description" cols="800" rows="10" 
	 			class="form-control"><%=rs.getString("r_description")%></textarea>
	 			</div>
	 		</div>
	 		<div class="form-group row">
	 				<label class="col-sm-2">이미지</label>
	 				<div class="col-sm-5">
	 					<input type="file" name="ramenImage" class="form-control">
	 				</div>
	 			</div>
	 		<div class="form-group row">
           <label class=" col-sm-2 custom-control custom-radio">매운 정도</label>
		    <select class="col-sm-2 custom-select " id="SpicyDegree" name="SpicyDegree">
		      <option value="1">1</option>
		      <option value="2">2</option>
		      <option value="3">3</option>
		      <option value="4">4</option>
		      <option value="5">5</option>
		    </select>
		  </div>
		  
	 		
	 		<div class="form-group row">
			<label class=" col-sm-2 custom-control custom-radio">카테고리</label>
		    <select class="col-sm-5 custom-select " id="category" name="category">
		      <option selected="" value="">라면의 카테고리를 지정하세요.</option>
		      <option value="매운 라면">매운라면</option>
		      <option value="자장 라면">짜장 라면</option>
		      <option value="그외 라면">그외 라면</option>
		    </select>
		  </div>
		  
		  
	 	
		  
		  
	 			
	 		<div class="form-group row">
	 			<div class="col-sm-offset-2 col-sm-10">
	 				<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddRamen()" >
	 		</div>
	 		</div>
	 	</form>
	 	</div>
		
		
	
<%
	 }
	if(rs!=null)
		rs.close();
	if(pstmt !=null) 
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