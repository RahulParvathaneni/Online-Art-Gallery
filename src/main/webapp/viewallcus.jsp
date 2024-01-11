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
 
<h3 align="center"><u>View All Customers</u></h3> 
 
<table align=center  border=2>  
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
<a href='<c:url value="view?id=${cus.id}"></c:url>'>View</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>