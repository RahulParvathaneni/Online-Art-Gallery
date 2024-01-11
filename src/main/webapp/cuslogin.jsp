<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/login.css">

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
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<h1 align="right"></h1>

<br>

<ul>

<li><a href="cuslogin"><i class="fa fa-sign-in"></i>Login</a></li>
  <li><a href="cusreg"><i class="fa fa-user-plus"></i>Register</a></li>
  <li><a href="product"><i class="fa fa-shopping-bag"></i>Products</a></li>
    <li><a href="contactus"><i class="fa fa-envelope"></i>Contact Us</a></li>
  <li><a href="aboutmain"><i class="fa fa-info-circle"></i> About</a></li>
  <li ><a  href="/"><i class="fa fa-home"></i>Home</a></li>


</ul>
<div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
<body>



<br>

<span class="blink">
<h3 align="center", style="color:red">${message}</h3>
</span>
<h3 align=center><u>Login</u></h3>

<br>


<form method="post" action="checkcuslogin">

<table align=center>


<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>



<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Login" class="button"></td>
</tr>

</table>

</form>
 
<br>

<h3 align="center">
New Registration ? <a href="cusreg">Click Here</a>
<a href="forgotpwd" class="redirect-button"><p class="forgot-text">Forgot Password ?</p></a>
</h3>
         
      
                
               

</body>
 </div>
    </div>
</div>
</html>