<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles_hf.css">
<link rel="stylesheet" href="login.css">
<meta charset="UTF-8">
<title>Auction Form</title>
<style>
    /* Green theme styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #eafaf1;
        margin: 0;
        padding: 0;
    }

    .header {
        background-color: #4CAF50;
        color: white;
        padding: 20px;
        text-align: center;
    }

    .nav-menu a {
        color: white;
        padding: 14px 20px;
        text-decoration: none;
        text-align: center;
    }

    .nav-menu a:hover {
        background-color: #45a049;
        color: white;
    }

    .form-container {
        width: 50%;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        color: #4CAF50;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        color: #333;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    .form-group input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
    }

    .form-group input[type="submit"]:hover {
        background-color: #45a049;
    }

    .footer {
        text-align: center;
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        position: fixed;
        width: 100%;
        bottom: 0;
    }
</style>
</head>
<body>
	<header class="header">
    <div class="logo">
        <img src="images/logo.png" alt="Ceylon Care Logo">
        <h1>Bidding System</h1>
    </div>
    <nav class="nav-menu">
        <a href="index.html">Home</a> 
        <a href="about.html">About Us</a> 
        <a href="ContactUs.jsp">Contact Us</a>
        <%
            HttpSession session1 = request.getSession(false); // Do not create new session
            if (session1 != null && session1.getAttribute("user") != null) {
        %>
        <a href="Profile.jsp">Profile</a>
        <%
            }  
        %>
    </nav>
    <div class="user-actions">
        <a href="signup.jsp">Signup</a>
        <%
            HttpSession session2 = request.getSession(false); // Do not create new session
            if (session2 != null && session2.getAttribute("user") != null) {
        %>
            <a href="LogoutServlet" class="auth-btn">Logout</a>
        <%
            } else {
        %>
            <a href="login.jsp" class="auth-btn">Login</a>
        <%
            }
        %>
    </div>
</header>

<div class="form-container">
    <h2>Auction Item Form</h2>
    <form action="InsertServlet" method="post">
        <div class="form-group">
            <label for="itemTitle">Item Title:</label>
            <input type="text" id="itemTitle" name="Item_Title" required>
        </div>
        <div class="form-group">
            <label for="duration">Duration (in days):</label>
            <input type="text" id="duration" name="Duration" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea id="description" name="Description" rows="4" cols="50" required></textarea>
        </div>
        <div class="form-group">
            <label for="startBid">Start Bid Price:</label>
            <input type="text" id="startBid" name="Start_Bid_Price" required>
        </div>
        <div class="form-group" style="text-align: center;">
            <input type="submit" value="Submit Auction">
        </div>
    </form>
</div>

<footer class="footer">
    <p>138. Angoda</p>
    <p>&copy; 2024 Bidding System. All rights reserved. | <a href="privacy.html" style="color: white;">Privacy Policy</a> | <a href="terms.html" style="color: white;">Terms of Service</a></p>
</footer>
</body>
</html>
