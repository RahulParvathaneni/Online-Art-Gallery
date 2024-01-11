<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>


<link type="text/css" rel="stylesheet" href="css/style.css">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Art For Homes</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/font-awesome.min.css" rel="stylesheet" >
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
  <link href="css/login.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz@9..144&display=swap" rel="stylesheet">
	<script src="js/bootstrap.bundle.min.js"></script>
<style>

</style>
</head>


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
            <li><a class="dropdown-item" href="product"> Product</a></li>
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


      
<body>  
 <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<p style="text-align: right;font-size: 15pt">Hi ${cname}</p> <br>

<h3 align="center"><u>Update Profile</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${cus.name}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${cus.gender}
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"  value="${cus.dateofbirth}"   />
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${cus.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${cus.password}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required value="${cus.location}"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" required value="${cus.contact}" /></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>

</div>
</div>
</div>
</body>

</html>