<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
/* 마스크 뛰우기 */
#mask{  
    position:absolute;  
    z-index:9000;  
    background-color:#000;  
    display:none;  
    left:0;
    top:0;
} 
/* 팝업으로 뜨는 윈도우 css  */ 
.window{
    display: none;
    position:absolute;  
    left:50%;
    top:50px;
    margin-left: -500px;
    width:1000px;
    height:500px;
    background-color:#FFF;
    z-index:10000;  
    font-size : 20px;
    border-radius : 15px;
    border : 3px solid black;
 }
 
</style>

<script src="./resources/js/jquery-latest.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
    function wrapWindowByMask(){
 
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  
 
      
        $("#mask").css({"width":maskWidth,"height":maskHeight});  
 

            
        $("#mask").fadeTo("slow",0.3);    
 
     
       
        $(".window").fadeIn(450);
         
    }
 
    $(document).ready(function(){
     
        $(".open").click(function(e){
            e.preventDefault();
            wrapWindowByMask();
        });
 		 
    
        $(".window .close").click(function (e) {  
        
            e.preventDefault();  
            $("#mask, .window").hide();  
        });       
 
    
        $("#mask").click(function () {  
            $(this).hide();  
            $(".window").hide();  
 
        });     
        
       
    });
    
    
</script>
</head>
<body>

    <div id ="wrap"> 
        <div id = "container">  
            <div id="mask"></div>
            <div class="window">
                <p style="position : absolute; width:1000px;height:500px;text-align:center;vertical-align:middle;"><jsp:include page="info.jsp" /></p>
             
            </div>
          
        </div>
    </div>
    
    
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">MENU</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="main.jsp">Home
          <span class="sr-only">(current)</span>
        </a>
      </li> 
      
      <li class="nav-item">
        <a class="nav-link active" href="cart.jsp">My Recipe</a>
      </li>  
       
      <li class="nav-item">
        <a class="nav-link open" href="#">About</a>
      </li>
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Kinds</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="hot_ramen.jsp">매운 라면</a>
          <a class="dropdown-item" href="black_ramen.jsp">짜장 라면</a>
          <a class="dropdown-item" href="etc_ramen.jsp">그외 라면</a>
         
        </div>
      </li>
      
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
        <div class="dropdown-menu">
        	<a class="dropdown-item" href="./addRamen.jsp">Recipe Insert</a>
          <a class="dropdown-item" href="./editRamen.jsp?edit=update">Recipe Update</a>
          <a class="dropdown-item" href="./editRamen.jsp?edit=delete">Recipe Delete</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="RecipeDB.jsp">Recipe DB</a>
          <a class="dropdown-item" href="OrderDB.jsp">Order DB</a>
          
        
         
        </div>
      </li>
      </ul>
      

        
  
  </div>
   
</nav>

</body>
</html>