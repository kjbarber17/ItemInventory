<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>All Items</title>
</head>
<body>
<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Owner First Name</td>
				<td>${item.ownerFirstName}</td>
			</tr>
			<tr>
				<td>Owner Last name</td>
				<td>${item.ownerLastName}</td>
			</tr>
			<tr>
				<td>Item Name</td>
				<td>${item.itemName}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>${item.price}</td>
			</tr>
			<tr>
				<td>Sale Price</td>
				<td>${item.salePrice}</td>
			</tr>
			<tr>
				<td>Item Description</td>
				<td>${item.itemDescription}</td>
			</tr>
			<tr>
				<td>Buyer First Name</td>
				<td>${item.buyerFirstName}</td>
			</tr>
			<tr>
				<td>Buyer Last Name</td>
				<td>${item.buyerLastName}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new item</a>

</body>
</html>