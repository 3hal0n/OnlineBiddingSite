<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" type="text/css" href="assets/css/viewUsers.css">
<meta charset="UTF-8">
<title>All sellers</title>
</head>
<body>
<h2>All Sellers Table</h2>
<table>
	<tr>
		<th>firstName</th>
		<th>lastName</th>
		<th>phoneNumber</th>
		<th>email</th>
		<th>password</th>
		<th>createdAt</th>
		<th>userId</th>
		<th>Action</th>
	</tr>

	<c:forEach var="sellers" items="${allSellers}">
	<tr>
		<td>${sellers.firstName}</td>
		<td>${sellers.lastName}</td>
		<td>${sellers.phoneNumber}</td>
		<td>${sellers.email}</td>
		<td>${sellers.password}</td>
		<td>${sellers.createdAt}</td>
		<td>${sellers.userId}</td>
		<td>
		 <a href="sellerUpdate.jsp?firstName=${sellers.firstName}&lastName=${sellers.lastName}&phoneNumber=${sellers.phoneNumber}&email=${sellers.email}&password=${sellers.password}&createdAt=${sellers.createdAt}&userId=${sellers.userId}">
        <button type="button">Update</button>
    </a>
    <form action="sellerDeleteServletA" method="post">
    <input type="hidden" name="userId" value="${sellers.userId}" />
     <button type="submit">Delete</button> </td>
    </form>
		
	</tr>
	</c:forEach> 
</table>

</body>
</html>
    