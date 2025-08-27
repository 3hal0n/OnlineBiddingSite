<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Auction Products</title>
    <link rel="stylesheet" href="css/AuctionProducts.css">
    
   
</head>
<body>
    <h2 style="text-align:center;">All Auction Products</h2>
    <input type="text" id="searchInput" placeholder="Search for products..." onkeyup="filterProducts()">

    <div class="product-container" id="productContainer">
        <c:forEach var="products" items="${allProducts}">
            <div class="product-card">

                <img class="product-image" src="<%=request.getContextPath()%>/assets/images/${products.category.toLowerCase()}.jpg" alt="${products.category} image" onerror="this.onerror=null;this.src='<%=request.getContextPath()%>/assets/images/default.jpg';">
                
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

    <script>
        function filterProducts() {
            var input = document.getElementById('searchInput');
            var filter = input.value.toLowerCase(); 
            var productContainer = document.getElementById('productContainer');
            var productCards = productContainer.getElementsByClassName('product-card');

            for (var i = 0; i < productCards.length; i++) {
                var title = productCards[i].getElementsByClassName('product-title')[0].innerText.toLowerCase();
                var description = productCards[i].getElementsByClassName('product-description')[0].innerText.toLowerCase();
                var category = productCards[i].getElementsByClassName('product-category')[0]?.innerText?.toLowerCase() || '';
                
                if (title.indexOf(filter) > -1 || description.indexOf(filter) > -1 || category.indexOf(filter) > -1) {
                    productCards[i].style.display = ""; 
                } else {
                    productCards[i].style.display = "none"; 
                }
            }
        }
    </script>
</body>
</html>




    