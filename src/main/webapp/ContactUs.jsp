<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidding System - Login</title>
    <link rel="stylesheet" href="styles_hf.css">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Bid Haven</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <!-- Custom Styles -->
    <style>
        /* Custom styles for nav buttons */
        .nav-menu a {
            background-color: #3498db; /* Change this to your preferred background color */
            color: #ffffff; /* Change this to your preferred font color */
            padding: 10px 20px;
            margin: 0 5px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }

        .nav-menu a:hover {
            background-color: #2980b9; /* Darker shade for hover effect */
            color: #f0f0f0; /* Change font color on hover if needed */
        }
    </style>
<title>Contact US</title>
<style>
    /* Green theme styles */
    body {
        font-family: Arial, sans-serif;
       
        margin: 0;
        padding: 0;
    }

    .header {
        
        padding: 20px;
        text-align: center;
    }

    .nav-menu a {
        
        padding: 14px 20px;
        text-decoration: none;
        text-align: center;
    }

    .nav-menu a:hover {
        
        
    }

    .form-container {
        width: 50%;
        margin: 50px auto;
        
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
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
    
        
                            <img src="assets/images/logo.jpeg">
                        
         
    
    <nav class="nav-menu">
        <a href="index.html">Home</a> 
        
        <a href="about.html">About Us</a> 
        <a href="ContactUs.jsp">Contact Us</a>
             <%
            HttpSession session1 = request.getSession(false); // Do not create new session
            if (session1 != null && session1.getAttribute("user") != null) {
                // User is logged in, show logout button
        %>
        <a href="Profile.jsp">Profile </a>
        <%
            }  
        %>
    </nav>
    <div class="user-actions">
        
        
        <a href="signup.jsp">Signup</a>
        
        <!-- Dynamic Login/Logout Button -->
        <%
            HttpSession session2 = request.getSession(false); // Do not create new session
            if (session2 != null && session2.getAttribute("user") != null) {
                // User is logged in, show logout button
        %>
            <a href="LogoutServlet" class="auth-btn">Logout</a>
        <%
            } else {
                // User is not logged in, show login button
        %>
            <a href="login.jsp" class="auth-btn">Login</a>
        <%
            }
        %>
    </div>
</header>
<br> <br> <br>
<div class="form-container">
    <h2>Contact Us</h2>
    <form action="InsertContactServlet" method="post">
        
        <div class="form-group">
            <label for="email">E mail</label>
            <input type="text" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="name">name :</label>
            <textarea id="text" name="name" rows="4" cols="50" required></textarea>
        </div>
        <div class="form-group">
            <label for="question">question :</label>
            <input type="text" id="question" name="question" required>
            
        </div>
        <div class="form-group" style="text-align: center;">
            <input type="submit" value="Submit Auction">
        </div>
    </form>
</div>

 <!-- Footer Start -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="assets/images/logo.jpeg" alt="Bid Haven logo">
                        </div>
                        <ul>
                            <li><a href="#">16501 colombo, Sri lanka</a></li>
                            <li><a href="#">bidhaven@company.com</a></li>
                            <li><a href="#">010-020-0340</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <h4>Bidding &amp; Categories</h4>
                    <ul>
                        <li><a href="#">Fashion</a></li>
                        <li><a href="#">Electronics</a></li>
                        <li><a href="#">Fitness</a></li>
                        <li><a href="#">Furniture</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Homepage</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Help &amp; Information</h4>
                    <ul>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">FAQ's</a></li>
                        
                    </ul>
                </div>
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p> Biding at its finest. 
                        
                        
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>
</body>
</html>
