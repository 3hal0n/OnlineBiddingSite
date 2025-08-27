<!DOCTYPE html>
<html lang="en">

  <head>

   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidding System - Login</title>
    <link rel="stylesheet" href="styles_hf.css">
	<link rel="stylesheet" href="admin.css">
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

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header">
    
        
                            <img src="assets/images/logo.jpeg">
                        
        
    
    <nav class="nav-menu">
        <a href="index.html">Home</a> 
        
        <a href="AboutUs.jsp">About Us</a> 
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
        
        <a href="sellerlogin.jsp">Seller login</a>
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
    <!-- Header Area End-->

    <!-- Main Banner Area Start-->
    <div class="main-banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="thumb">
                            <div class="inner-content">
                                <h4>We are Bid Haven</h4>
                                <span>Bidding at its finest</span>
                                <div class="main-border-button">
                                    <a href="viewAllProducts">Bid Now!</a>
                                </div>
                            </div>
                            <img src="assets/images/left-banner-image.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Electronics</h4>
                                            <span>Best Electronics</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Electronics</h4>
                                                <p>Bid on the latest gadgets and tech – unbeatable deals await!</p>
                                                <div class="main-border-button">
                                                    <a href="viewAllProducts">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/baner-right-image-1.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Fashion</h4>
                                            <span>Best Fashion</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Fashion</h4>
                                                <p>Style up for less – win designer fashion at a fraction of the cost!</p>
                                                <div class="main-border-button">
                                                    <a href="viewAllProducts">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/baner-right-image-02.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Fitness</h4>
                                            <span>Products for Fitness</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Fitness</h4>
                                                <p>Your fitness goals, your bid – score top gear at unbeatable prices!</p>
                                                <div class="main-border-button">
                                                    <a href="viewAllProducts">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/baner-right-image-3.jpeg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>Furniture</h4>
                                            <span>Comfortable Furniture</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>Furniture</h4>
                                                <p>Transform your space – bid now for stunning furniture at unbeatable prices!</p>
                                                <div class="main-border-button">
                                                    <a href="viewAllProducts">Discover More</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="assets/images/baner-right-image-4.jpeg">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Banner Area End-->

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .product-container {
            margin: 20px 0;
            display: block; /* Stack products vertically */
        }
        .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 10px auto; /* Center cards */
            padding: 15px;
            width: 80%; /* Adjust width as needed */
            max-width: 600px; /* Maximum width for larger screens */
            background-color: white;
            text-align: center;
        }
        .product-title {
            font-size: 20px;
            font-weight: bold;
            margin: 10px 0;
        }
        .product-description {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px; /* Add space below the description */
        }
        .product-action button {
            background-color: #F7B5CA;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .product-action button:hover {
            background-color: #f67e8d; /* Darker shade on hover */
        }
    </style>

   <h2 style="text-align:center;">All Auction Products</h2>
    <div class="product-container">
        <c:forEach var="products" items="${allProducts}">
            <div class="product-card">
                <div class="product-title">${products.item_Title}</div>
                <div class="product-description">${products.description}</div>
                <div>Duration: ${products.duration}</div>
                <div>Start Bid Price: ${products.start_Bid_Price}</div>
                <div>Category: ${products.category}</div>
                <div class="product-action">
                    <a href="<%=request.getContextPath()%>/bid_new">
                        <button>Place a Bid</button>
                    </a>
                </div>
            </div>
        </c:forEach>
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
                        <li><a href="Faq.jsp">FAQ's</a></li>
                        
                    </ul>
                </div>
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p> Biding at its finest. 
                        <a href="AgentLogin.jsp">Agent Login</a>
                        
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