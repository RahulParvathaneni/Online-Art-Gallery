<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 
 
<h3 align="center"><u>View All Sellers</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td>  
<td>EMAIL ID</td>
<td>LOCATION</td> 
<td>CONTACT NO</td> 
<td>ACTION</td>
</tr> 
 
<c:forEach items="${seldata}"  var="sel"> 
<tr> 
<td><c:out value="${sel.id}" /></td> 
<td><c:out value="${sel.name}" /></td>  
<td><c:out value="${sel.email}" /></td> 
<td><c:out value="${sel.location}" /></td> 
<td><c:out value="${sel.contact}" /></td> 
<td>
<a href='<c:url value="views?id=${sel.id}"></c:url>'>View</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>