<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" type="text/css" href="assets/css/viewUsers.css">
<meta charset="UTF-8">
<title>All users</title>
</head>
<body>
<h2>All Users Table</h2>
<table>
	<tr>
		<th>User ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Phone Number</th>
		<th>Email</th>
		<th>Password</th>
		<th>Created At</th>
		<th>Action</th>
	</tr>

	<c:forEach var="users" items="${allUsers}">
	<tr>
		<td>${users.userId}</td>
		<td>${users.firstName}</td>
		<td>${users.lastName}</td>
		<td>${users.phoneNumber}</td>
		<td>${users.email}</td>
		<td>${users.password}</td>
		<td>${users.createdAt}</td>
		<td>
    <a href="userUpdate.jsp?userId=${users.userId}&firstName=${users.firstName}&lastName=${users.lastName}&phoneNumber=${users.phoneNumber}&email=${users.email}&password=${users.password}">
        <button type="button">Update</button>
    </a>
    <form action="userDeleteServletA" method="post">
    <input type="hidden" name="userId" value="${users.userId}" />
     <button type="submit">Delete</button>
    </form>
</td>
		
		
	</tr>
	</c:forEach> 
</table>

</body>
</html>
    