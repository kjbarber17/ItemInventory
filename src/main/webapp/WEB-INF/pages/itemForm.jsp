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
<body>
<h2>Item Inventory Form</h2>
<mvc:form modelAttribute="item" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="ownerFirstName">Owner First Name</mvc:label></td>
	        <td><mvc:input path="ownerFirstName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="ownerLastName">Owner Last Name</mvc:label></td>
	        <td><mvc:input path="ownerLastName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="itemName">Item Name</mvc:label></td>
	        <td><mvc:input path="itemName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="price">Price</mvc:label></td>
	        <td><mvc:input path="price" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="salePrice">Sale Price</mvc:label></td>
	        <td><mvc:input path="salePrice" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="itemDescription">Item Description</mvc:label></td>
	        <td><mvc:textarea path="itemDescription" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="buyerFirstName">Buyer First Name</mvc:label></td>
	        <td><mvc:input path="buyerFirstName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="buyerLastName">Buyer Last Name</mvc:label></td>
	        <td><mvc:input path="buyerLastName" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Items</a>
</body>
</html>