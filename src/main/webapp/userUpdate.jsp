<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" type="text/css" href="assets/css/viewUsers.css">
<meta charset="UTF-8">
<title>Update User Details</title>
</head>
<body><h1><b>Update User</b></h1>
<%
String userId=request.getParameter("userId");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String phoneNumber=request.getParameter("phoneNumber");
String email=request.getParameter("email");
String password=request.getParameter("password");
String createdAt=request.getParameter("createdAt");
%>
<form action="updateUserServletA" method="post">
<table>
		
		<tr>
		<td>User Id:</td>
		<td><input type="text" name="userId" value="<%=userId%>" readonly></td>
		</tr>
		<tr>
		<td>First Name:</td>
		<td><input type="text" name="firstName" value="<%=firstName%>" required></td>
		</tr>
		<tr>
		<td>Last Name:</td>
		<td><input type="text" name="lastName" value="<%=lastName%>" required></td>
		</tr>
		<tr>
		<td>Phone number:</td>
		<td><input type="text" name="phoneNumber" value="<%=phoneNumber%>" required></td>
		</tr>
		<tr>
		<td>Email:</td>
		<td><input type="text" name="email" value="<%=email%>" required></td>
		</tr>
		<tr>
		<td>Password:</td>
		<td><input type="text" name="password" value="<%=password%>" required></td>
		</tr>
		<tr>
		<td>Created At:</td>
		<td><input type="text" name="createdAt" value="<%=createdAt%>" readonly></td>
		</tr>
		
		
		<tr><td colspan="2"><input type="submit" value="Submit"></td>
		</tr>
	</table>
</form>

</body>
</html>