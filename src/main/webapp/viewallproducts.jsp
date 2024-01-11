<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 

<body> 
 <!-- Font Awesome Icon Library -->

 
<br> 
 
<h3 align="center"><u>View All Customers</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>artNAME</td> 
<td>location</td>  
<td>artistname</td> 
<td>artprice</td> 
<td>imglink</td>  

</tr> 
 
<c:forEach items="${empdata}"  var="emp"> 
<tr> 
<td><c:out value="${emp.id}" /></td> 
<td><c:out value="${emp.artname}" /></td> 
<td><c:out value="${emp.location}" /></td> 
<td><c:out value="${emp.artistname}" /></td> 
<td><c:out value="${emp.artprice}" /></td> 
<td><c:out value="${emp.imglink}" /></td> 


</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>