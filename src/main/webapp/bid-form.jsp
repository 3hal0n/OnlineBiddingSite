<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bid Haven - Bid Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href='https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap' rel='stylesheet'>
    <link rel="stylesheet" href="css/bid.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    
    <script>
        //Countdown timer 
        function startCountdown(duration, display) {
            let timer = duration, minutes, seconds;
            const countdownInterval = setInterval(function () {
                minutes = Math.floor(timer / 60);
                seconds = timer % 60;
                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                display.textContent = minutes + ":" + seconds;

                //Alert when timer reaches zero
                if (--timer < 0) {
                    clearInterval(countdownInterval);
                    alert("Time is up! Please submit your bid.");
                }
            }, 1000);
        }
        window.onload = function () {
            const tenMinutes = 60 * 10; 
            const display = document.querySelector('#countdown'); 
            startCountdown(tenMinutes, display);
        };

        function validateForm() {
            const name = document.getElementById("bidder-name").value.trim();
            const email = document.getElementById("bidder-email").value.trim();
            const amount = document.getElementById("bid-amount").value;
            const item = document.getElementById("bid-item").value.trim();
            const date = document.getElementById("bid-date").value;

            //Validation checks
            if (name === "") {
                alert("Bidder Name is required");
                return false;
            }
            if (email === "" || !validateEmail(email)) {
                alert("Please enter a valid email address");
                return false;
            }
            if (amount <= 0) {
                alert("Bid Amount must be greater than 0");
                return false;
            }
            if (item === "") {
                alert("Bid Item is required");
                return false;
            }
            if (date === "") {
                alert("Bid Date is required");
                return false;
            }
            return true;
        }

        //Email validation
        function validateEmail(email) {
            const re = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            return re.test(String(email).toLowerCase());
        }
    </script>
</head>
<body>
    <header class="header">
        <div class="logo">
            <h1>Bid <span>Haven</span></h1>
        </div>
        <div class="nav-links">
            <ul>
                <li><a href="home.jsp">HOME</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Product</a></li>
                <li><a href="#">About Us</a></li>
            </ul>
        </div>
        <a href="/placeBidd/bid_list" class="btn">Profile</a>
    </header>

    <div class="body1">
        <div class="container1">
            <h2 class="mt-4 bidding-title">Bidding Form</h2>

            <form action="<%=request.getAttribute("bidInfo") == null ? "bid_insert" : "bid_update"%>" method="post" onsubmit="return validateForm()">
                <input type="hidden" name="id" value="${bidInfo != null ? bidInfo.bidId : ''}" />

                <div class="form-group">
                    <label for="bidder-name">Bidder Name:</label>
                    <input type="text" class="form-control" id="bidder-name" name="bidder-name" value="${bidInfo != null ? bidInfo.bidderName : ''}" required>
                </div>

                <div class="form-group">
                    <label for="bidder-email">Bidder Email:</label>
                    <input type="email" class="form-control" id="bidder-email" name="bidder-email" value="${bidInfo != null ? bidInfo.bidderEmail : ''}" required>
                </div>

                <div class="form-group">
                    <label for="bid-amount">Bid Amount:</label>
                    <input type="number" class="form-control" id="bid-amount" name="bid-amount" value="${bidInfo != null ? bidInfo.bidAmount : ''}" required>
                </div>

                <div class="form-group">
                    <label for="bid-item">Bid Item:</label>
                    <input type="text" class="form-control" id="bid-item" name="bid-item" value="${bidInfo != null ? bidInfo.bidItem : ''}" required>
                </div>

                <div class="form-group">
                    <label for="bid-date">Bid Date:</label>
                    <input type="date" class="form-control" id="bid-date" name="bid-date" value="${bidInfo != null ? bidInfo.bidDate : ''}" required>
                </div>

                
                <div class="countdown-container">
                    <h3>Countdown Timer:</h3>
                    <p id="countdown">10:00</p>
                </div>

                <button type="submit" class="btn btn-primary">${bidInfo != null ? 'Update' : 'Submit'}</button>
                <a href="bid_list" class="btn btn-secondary">Cancel</a>
            </form>
            <img src="css/image/bid.png" alt="Bid Image" class="side-image right">
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Staff</h4>
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
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
