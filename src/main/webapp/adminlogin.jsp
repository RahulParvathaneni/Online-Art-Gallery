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
<%@ include file="navbar.jsp" %>
</head>



       
<body>
<div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">
<span class="blink">
<h3 align=center  style="color:red">${message}</h3> 
</span>

<h3 align=center><u>Admin Login</u></h3>

<br>


<form method="post" action="checkadminlogin">

<table align=center>


<tr>
<td><label>Username</label></td>
<td><input type="text" name="uname" required/></td>
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
</div>
    </div>
    </div>
 </body>
 
</html>