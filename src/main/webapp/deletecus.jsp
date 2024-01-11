<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 

	 <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Art For Homes</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/font-awesome.min.css" rel="stylesheet" >
	<link href="css/global.css" rel="stylesheet">
	<link href="../css/index.css" rel="stylesheet">
		

	


<style> 
 

</style> 

</head>

  <%@ include file="adminnavbar.jsp" %>
   <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/37.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">  
<body> 
 
 
<h3 align="center"><u>Delete customers</u></h3> 
 
<table align=center  border=2 >  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td>  
<td>LOCATION</td> 
<td>EMAIL ID</td> 
<td>CONTACT NO</td> 
<td>ACTION</td>
</tr> 
 
<c:forEach items="${cusdata}"  var="cus"> 
<tr> 
<td><c:out value="${cus.id}" /></td> 
<td><c:out value="${cus.name}" /></td>  
<td><c:out value="${cus.location}" /></td> 
<td><c:out value="${cus.email}" /></td> 
<td><c:out value="${cus.contact}" /></td> 
<td>
<a href='<c:url value="delete/${cus.id}"></c:url>'>Delete</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</div>
</div>
</div>
      
</html>