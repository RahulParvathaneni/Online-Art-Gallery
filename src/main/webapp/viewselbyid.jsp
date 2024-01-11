<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 


<%@ include file="adminnavbar.jsp" %>

ID : ${sel.id}<br>
Name : ${sel.name}<br>
Email : ${sel.email}<br>
Location : ${sel.location}<br>
Contact No : ${sel.contact}<br>
Status : ${sel.active}

</body>
</html>