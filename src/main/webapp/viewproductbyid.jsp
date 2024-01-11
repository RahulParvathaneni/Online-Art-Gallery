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
<style>
        .navbar{
            background-color: black;
            border-radius: 30px;
            
        }
        .navbar ul{
            overflow: auto;
        }
        .navbar li{
            float:left;
            list-style: none; 
            margin: 13px 20px;
            
        }
        .navbar li a{
            padding: 3px 3px;
            text-decoration: none;
            color: white;
        }
        .navbar li a:hover{
            color: red
        }
        .search{
            float: right;
            color: white;
            padding: 12px 75px;
        }
        .navbar input{
            border: 2px solid black;
            border-radius: 14px;
            padding: 3px 17px;
            width: 129px;
        }
        .button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

    </style>

</head>
<%@ include file="sellerloginafter.jsp" %>
 <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/13.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-md-block">  
<body>


 
    <form:form method="post" action="displayproduct">
    <table align="center">
    
    <tr>
    <td>Select ID:</td>
    <td>
    <select name="pid" required>
    <option value="">---Select---</option>
    <c:forEach items="${productlist}" var="product">
<option value="${product.id}">${product.id}</option>
</c:forEach>
</select>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <input type="submit" value="View" class="button">
    </td>
    </tr>
    
    </table>
    </form:form>
   
</body>
</div>
</div>
</div>
</html>
