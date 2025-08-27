<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidding System - Registration Form</title>
    <link rel="stylesheet" href="styles_hf.css">
    <link rel="stylesheet" href="admin.css">

    <script>
        function validateForm() {
            
            var firstName = document.getElementById("firstName").value;
            var lastName = document.getElementById("lastName").value;
            var phoneNumber = document.getElementById("phoneNumber").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;

            // validating email
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            // phone number digits only
            var phonePattern = /^[0-9]{10}$/;

            // Check if any field is empty
            if (firstName === "" || lastName === "" || phoneNumber === "" || email === "" || password === "") {
                alert("All fields are required.");
                return false;
            }

            
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // 10 digits
            if (!phonePattern.test(phoneNumber)) {
                alert("Please enter a valid 10-digit phone number.");
                return false;
            }

            // less than 6 characters
            if (password.length < 6) {
                alert("Password should be at least 6 characters long");
                return false;
            }

           
            return true;
        }
    </script>
</head>
<body>
    <header class="header">
        <nav class="nav-menu">
            <a href="index.html">Home</a> 
            <a href="about.html">About Us</a> 
            <a href="ContactUs.jsp">Contact Us</a>
            <% HttpSession session1 = request.getSession(false); 
                if (session1 != null && session1.getAttribute("user") != null) { %>
                <a href="Profile.jsp">Profile</a>
            <% } %>
        </nav>
        <div class="user-actions">
            <a href="signup.jsp">Signup</a>
            <% HttpSession session2 = request.getSession(false); 
                if (session2 != null && session2.getAttribute("user") != null) { %>
                <a href="LogoutServlet" class="auth-btn">Logout</a>
            <% } else { %>
                <a href="login.jsp" class="auth-btn">Login</a>
                <a href="sellerlogin.jsp" class="auth-btn">Seller Login</a>
            <% } %>
        </div>
    </header>

    <main class="main-content">
        <div class="container">
            <% HttpSession session5 = request.getSession(false); 
                if (session5 != null && session5.getAttribute("user") != null) { %>
                You have already logged in. Please <a href="LogoutServlet">logout</a>.
            <% } else { %>
                <br><br><br>
                <h1>Registration Form</h1>
                <br>
                <form action="RegisterServlet" method="post" onsubmit="return validateForm();">
                    <div class="form-group">
                        <label for="firstName">First Name:</label>
                        <input type="text" id="firstName" name="firstName" required>
                    </div>

                    <div class="form-group">
                        <label for="lastName">Last Name:</label>
                        <input type="text" id="lastName" name="lastName" required>
                    </div>

                    <div class="form-group">
                        <label for="phoneNumber">Phone Number:</label>
                        <input type="text" id="phoneNumber" name="phoneNumber" required>
                    </div>
					<br>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
					<br>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <br>

                    <button type="submit" class="submit-btn">Register</button>
                </form> 
            <% } %>
        </div>
    </main>

    <footer>
        <div class="container">
            <p> Bidding at its finest. Follow us on:
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
            </p>
        </div>
    </footer>
</body>
</html>
