<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to AntiqueHouse</title>
    <!-- Bootstrap -->
	   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin: auto;
  }
  
  
 </style>
 

  </head>
<%@ include  file="header.jsp" %>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/coins1.jpg" alt="BC 2000">
    </div>

    <div class="item">
      <img src="resources/images/stone1.jpg" alt="BC 1200">
    </div>

    <div class="item">
      <img src="resources/images/gallery1.jpg" alt="BC 4000">
    </div>

    <div class="item">
      <img src="resources/images/Toys.jpg" alt="BC 3500">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<body>



<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <img src="resources/images/Toys.jpg"class="img-circle" alt="BC 3500" width="200" height="100"> 
        <h3>Toys</h3>
      <p>The 3500 years old toy made of pure Bronze</p>
      <p>Price = Rs 3500/- </p>
    </div>
    
    <div class="col-sm-4">
    <img src="resources/images/gallery1.jpg"class="img-circle" alt="BC 3500" width="200" height="100"> 
      <h3>Magic Gallery</h3>
      <p>The magic gallery that glows by night. Made of rare element</p>
      <p>Price = Rs 4900/</p>
    </div>
    
    <div class="col-sm-4">
    <img src="resources/images/stone1.jpg"class="img-circle" alt="BC 3500" width="200" height="100">
      <h3>Stone</h3>
      <p>The rare stone made of Bronze and Gold</p>
      <p>Price = Rs 14900/</p>
    </div>
        </div>
          </div>
   

</div>

</body>



<%@ include file="footer.jsp" %>