<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction Item</title>
<link rel="stylesheet" href="styleAuctionDetails.css">

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
</head>
<body>
	
	<!-- <header>-->
       <!--  <div class="logo">-->
         <!--    <img src="./Images/logo.jpg" alt="Logo Image">-->
       <!--  </div>-->
    <!-- </header>-->
	
	<header class="header">
    
        
    <img src="assets/images/logo.jpeg">
                        
        
    
    <nav class="nav-menu">
        <a href="index.html">Home</a> 
        
        <a href="about.html">About Us</a> 
        <a href="ContactUs.jsp">Contact Us</a>
        
    </nav>
    <div class="user-actions">
        
        <!--<a href="sellerlogin.jsp">Seller login</a>-->
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
        	<a href="sellerlogin.jsp">Seller login</a>
            <a href="login.jsp" class="auth-btn">Login</a>
        <%
            }
        %>
    </div>
</header>
	<br><br><br><br>
	<div class="container">
        <div class="profile-section">
            <div class="profile-picture">
                <img src="./images/Seller.jpg" alt="Profile Picture">
            </div>
            <h2>Naduli Weerasinghe</h2>
            <p style="text-align : center;">Seller</p>
            <div class="rating">
                <span>★★★★★</span>
            </div>
            <div class="contact-info">
                <p>📞 +94 123598943</p>
                <p>📧 naduli@gmail.com</p>
            </div>
        </div>
     </div>
     <br><br>
     <div class="auction-section">
     <table>
     	
     	<thead>
			<tr>
				<th>Auction ID</th>
				<th>Item Title</th>
				<th>Duration</th>
				<th>Description</th>
				<th>Start bid price</th>
				<th>Buttons</th>
			</tr>
		</thead>
        
        <c:forEach var="auc" items="${auctionList}">
	
		<c:set var="Item_ID" value="${auc.auctionID}"/>
		<c:set var="Item_Title1" value="${auc.itemTitle}"/>
		<c:set var="Duration1" value="${auc.itemDuration}"/>
		<c:set var="Description1" value="${auc.itemDescription}"/>
		<c:set var="Start_Bid_Price1" value="${auc.startBidPrice}"/>
	
	 	<c:url value="UpdateAuction.jsp" var="aucUpdate">
       		 <c:param name="aucID" value="${Item_ID}"/>
       		 <c:param name="title" value="${Item_Title1}"/>
       		 <c:param name="duration" value="${Duration1}"/>
      		  <c:param name="description" value="${Description1}"/>
      		  <c:param name="startPrice" value="${Start_Bid_Price1}"/>
       </c:url>

		<tbody>
		<tr>
           <td>${auc.auctionID}</td>
           <td>${auc.itemTitle}</td>
           <td>${auc.itemDuration} days</td>
           <td>${auc.itemDescription}</td>
           <td>${auc.startBidPrice}</td>
        <td>
            <div class="buttons">
                <a href="${aucUpdate}">
            		<input type="submit" name="update" value="Update Item" class="btn_update_item">
            	</a>
                <form action="delete" method="post">
            		<input type="hidden" value="${auc.auctionID}" name="aucID">
            		<button class="btn_delete_item" type="submit">Delete Item</button>
            	</form>
            	
            </div>
         </td>
         </tr>
         
     
    
	
    </c:forEach>
    </tbody>
    </table>
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
	