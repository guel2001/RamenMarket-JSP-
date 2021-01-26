<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel = "stylesheet"
	href = "./resources/css/bootstrap.min.css"/>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>라면 등록</title>
	
	</head>
	
<body>

<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message">

<jsp:include page="menu2.jsp" />
	
	<div class ="jumbotron">
		<div class ="container">
			<h1 class = "display-3" style="text-align: center;"><fmt:message key="title"/></h1>
		</div>
	</div>

	 <div class="container">
		 <div class="text-right">
			 <a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
			 
		 </div>
		 
	 	<form name="newRamen" action="./processAddRamen.jsp" 
	 	class="form-horizontal" method="post" enctype="multipart/form-data">
	 		
	 		
	 		<div class="form-group row">
	 			<label class="col-sm-2"><fmt:message key="ramenId"/></label>
	 			<div class="col-sm-3">
	 				<input type="text" id="ramenId" name="ramenId" class="form-control">
	 			</div>
		 	</div>
		 	
	 	<div class="form-group row">
	 		<label class="col-sm-2"><fmt:message key="Rname"/></label>
	 		<div class="col-sm-3">
	 			<input type="text" id="name" name="name" class="form-control">
	 			</div>
	 		</div>
	 		
	 		
	
		  
		  
	 		<div class="form-group row">
	 		<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
	 		<div class="col-sm-3">
	 			<input type="text" id="unitPrice" name="unitPrice" class="form-control">
	 			</div>
	 		</div>
	

		  
	 		
	 		<div class="form-group row">
	 		<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
	 		<div class="col-sm-3">
	 			<input type="text" id = "manufacturer" name="manufacturer" class="form-control">
	 			</div>
	 		</div>
	 		

	 		
	 		<div class="form-group row">
	 		<label class="col-sm-2"><fmt:message key="Material"/></label>
	 		<div class="col-sm-3">
	 			<textarea id = "material" name="material" cols="200" rows="3" 
	 			class="form-control"></textarea>
	 			</div>
	 		</div>
	 
			<div class="form-group row">
	 		<label class="col-sm-2"><fmt:message key="description"/></label>
	 		<div class="col-sm-5">
	 			<textarea id = "description" name="description" cols="800" rows="10" 
	 			class="form-control"></textarea>
	 			</div>
	 		</div>
	 		<div class="form-group row">
	 				<label class="col-sm-2"><fmt:message key="Image"/></label>
	 				<div class="col-sm-5">
	 					<input type="file" name="ramenImage" class="form-control">파일명은 20자내로 해주세요.
	 				</div>
	 			</div>
	 		<div class="form-group row">
           <label class=" col-sm-2 custom-control custom-radio"><fmt:message key="SpicyDegree"/></label>
		    <select class="col-sm-2 custom-select " id="SpicyDegree" name="SpicyDegree">
		      <option value="1">1</option>
		      <option value="2">2</option>
		      <option value="3">3</option>
		      <option value="4">4</option>
		      <option value="5">5</option>
		    </select>
		  </div>
		  
	 		
	 		<div class="form-group row">
			<label class=" col-sm-2 custom-control custom-radio"><fmt:message key="category"/></label>
		    <select class="col-sm-5 custom-select " id="category" name="category">
		      <option selected="" value=""><fmt:message key="selectinfo"/></option>
		      <option value="매운 라면"><fmt:message key="category_Hot"/></option>
		      <option value="자장 라면"><fmt:message key="category_Black"/></option>
		      <option value="그외 라면"><fmt:message key="category_Etc"/></option>
		    </select>
		  </div>
		  
		  
	 	
		  
		  
	 			
	 		<div class="form-group row">
	 			<div class="col-sm-offset-2 col-sm-10">
	 				<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddRamen()" >
	 		</div>
	 		</div>
	 	</form>
	 	</div>
		</fmt:bundle>

<hr>
<jsp:include page="footer.jsp" />
	<script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/js/custom.js"></script>
    
	</body>
	</html>