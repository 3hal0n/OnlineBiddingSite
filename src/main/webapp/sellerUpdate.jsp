<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" type="text/css" href="assets/css/viewUsers.css">
<meta charset="UTF-8">
<title>Update seller Details</title>
</head>
<body><h1><b>Update Seller</b></h1>
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String phoneNumber=request.getParameter("phoneNumber");
String email=request.getParameter("email");
String password=request.getParameter("password");
String createdAt=request.getParameter("createdAt");
String userId=request.getParameter("userId");
%>
<form action="updateSellerServletA" method="post">
<table>
		
		<tr>
		<td>First name:</td>
		<td><input type="text" name="firstName" value="<%=firstName%>" required></td>
		</tr>
		<tr>
		<td>Last name:</td>
		<td><input type="text" name="lastName" value="<%=lastName%>" required></td>
		</tr>
		<tr>
		<td>Phone Number:</td>
		<td><input type="text" name="phoneNumber" value="<%=phoneNumber%>" required></td>
		</tr>
		<tr>
		<td>Email:</td>
		<td><input type="text" name="email" value="<%=email%>" required></td>
		</tr>
		<tr>
		<td>password:</td>
		<td><input type="text" name="password" value="<%=password%>" required></td>
		</tr>
		<tr>
		<td>createdAt:</td>
		<td><input type="text" name="createdAt" value="<%=createdAt%>" readonly></td>
		</tr>
		<tr>
		<td>userId:</td>
		<td><input type="text" name="userId" value="<%=userId%>" readonly></td>
		</tr>
		
		
		<tr><td colspan="2"><input type="submit" value="Submit"></td>
		</tr>
	</table>
</form>

</body>
</html>