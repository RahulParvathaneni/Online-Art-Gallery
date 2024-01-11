<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Art For Homes</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet" >
	<link href="../css/font-awesome.min.css" rel="stylesheet" >
	<link href="../css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
   
</head>
<%@ include file="sellerloginafter.jsp" %>

 <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/100.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">  
<body>



<h3 align=center><u>Add Product</u></h3>

<br>

<form action="insertproduct" method="post" enctype="multipart/form-data">

<table align=center>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required="required">
<option value="">---Select---</option>
<option value="Mobile">picture</option>
<option value="Laptop">Laptop</option>
<option value="Watch">Watch</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Name</label></td>
<td><input type="text" name="name" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Description</label></td>
<td>
<textarea name="description"></textarea>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Cost</label></td>
<td><input type="number" name="cost" required="required" step="0.01" /></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Link(Optional)</label></td>
<td><input type="text" name="productlink"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Image</label></td>
<td><input type="file" name="productimage" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form>
    
    
</body>
</div>
</div>
</div>
</html>
