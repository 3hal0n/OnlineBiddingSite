<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bid Haven - Bid Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/update.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style type="text/css">
       
        table {
            width: 75%;
            border-collapse: collapse;
            border-spacing: 0;
            margin: 10px auto; 
            margin-bottom: 200px;
        }

        th, td {
            padding: 10px;
            text-align: left;fu
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #F7B5CA;
            color: #fff; 
        }

       
        tbody tr:hover {
            background-color: #f2f2f2; 
        }

        
        .actions {
            text-align: center;
        }

        .actions a {
            display: inline-block;
            color: #5b9bd5; 
            margin: 0 5px;
            transition: color 0.3s ease; 
        }

        .actions a:hover {
            color: #4a89c1; 
        }

        /* Animation for table appearance */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        table {
            animation: fadeIn 0.5s ease; 
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="logo">
            <h1>
                Bid <span>Haven</span>
            </h1>
        </div>
        <div class="nav-links">
            <ul>
                <li><a href="#">HOME</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Product</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </div>
         <!--  <div class="search-container">
            <input type="text" placeholder="Search...">
            <button type="submit">Search</button>
        </div>
        !-->
        <a href="index.jsp" class="btn">checkout</a>
    </header>

    <span>
        <h2>Bid Details</h2>
        <a href="<%=request.getContextPath()%>/bid_new">
            <button style="margin-left: 210px; background-color: #F7B5CA; color: white; padding: 5px; font-size: 30px; border-radius: 5px; cursor: pointer;">
                Place a Bid
            </button>
        </a>
    </span>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Bidder Name</th>
            <th>Email Address</th>
            <th>Bid Amount</th>
            <th>Bid Item</th> 
            <th>Date</th>
           <!--  <th>Status</th>--> 
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listBids}" var="bid">
            <tr>
                <td>${bid.bidId}</td>
                <td>${bid.bidderName}</td>
                <td>${bid.bidderEmail}</td>
                <td>${bid.bidAmount}</td>
                <td>${bid.bidItem}</td> 
                <td>${bid.bidDate}</td>
                <!-- <td>${bid.bidOutcome}</td> -->
                <td class="actions">
                    <a href="bid_edit?id=${bid.bidId}">
                        <i class="fas fa-pen"></i>
                    </a>
                    <a href="bid_delete?id=${bid.bidId}">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Contact us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Contact Support</a></li>
                        <li><a href="#">Help Center</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Get The Apps</h4>
                    <ul>
                        <li><a href="#">iOS</a></li>
                        <li><a href="#">Android</a></li>
                        <li><a href="#">Roku</a></li>
                        <li><a href="#">Windows</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a> 
                        <a href="#"><i class="fab fa-twitter"></i></a> 
                        <a href="#"><i class="fab fa-instagram"></i></a> 
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>
