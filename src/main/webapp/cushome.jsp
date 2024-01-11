<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>


<meta charset="utf-8">

	
    <link rel="stylesheet" href="css/registration.css">
	<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz@9..144&display=swap" rel="stylesheet">
	<script src="js/bootstrap.bundle.min.js"></script>
	
<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

</style>
</head>
<body>

<h1 align=center></h1>

<br>

<ul>
  <li><a href="cuslogin">Logout</a></li>
  <li><a href="updateprofile">Update Profile</a></li>
 
  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Blog
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="blog"> Blog</a></li>
            <li><a class="dropdown-item border-0" href="blog_detail"> Blog Detail</a></li>
          </ul>
        </li>
   <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Product
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="product1"> Product</a></li>
            <li><a class="dropdown-item border-0" href="product_detail"> Product Detail</a></li>
          </ul>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Pages
          </a>
          <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="cart"> Shopping Cart</a></li>
            <li><a class="dropdown-item border-0" href="checkout"> Checkout</a></li>
          </ul>
        </li>
  
  <li><a href="cushome">Home</a></li>

</ul>

<br>
<div>
 <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">

<h3 align="center">Hi, ${cname}</h3>
</div>
</div>
</div>
</div>

</body>
</html>