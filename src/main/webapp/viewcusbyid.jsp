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

ID : ${cus.id}<br>
Name : ${cus.name}<br>
Gender : ${cus.gender}<br>
DateofBirth : ${cus.dateofbirth}<br>
Email : ${cus.email}<br>
Location : ${cus.location}<br>
Contact No : ${cus.contact}<br>
Status : ${cus.active}

</body>
</html>