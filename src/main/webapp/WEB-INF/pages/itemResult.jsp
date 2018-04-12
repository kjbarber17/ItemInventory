<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body><h2>User Registration Result</h2>
<table>
        <tr>
            <td>Owner First name</td>
            <td>${i.ownerFirstName}</td>
        </tr>
        <tr>
            <td>Owner Last name</td>
            <td>${i.ownerLastName}</td>
        </tr>
        <tr>
            <td>Item Name</td>
            <td>${i.itemName}</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>${i.price}</td>
        </tr>
        <tr>
            <td>Sale Price</td>
            <td>${i.salePrice}</td>
        </tr>
        <tr>
            <td>Item Description</td>
            <td>${i.itemDescription}</td>
        </tr>
        <tr>
            <td>Buyer First name</td>
            <td>${i.buyerFirstName}</td>
        </tr>
        <tr>
            <td>Buyer Last name</td>
            <td>${i.buyerLastName}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Items</a>
</body>
</html>