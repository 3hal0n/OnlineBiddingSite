
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <!--   <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <title>Update Auction</title>
    <link rel="stylesheet" href="styleUpdateAuction.css">
</head>
<body>
    <div class="form-container">
        <h2>Update Auction</h2>
        
        <% 
        	String aucID1 = request.getParameter("aucID");
        	String title1 = request.getParameter("title");
        	String duration1 = request.getParameter("duration");
        	String description1 = request.getParameter("description");
        	String startPrice1 = request.getParameter("startPrice");
        %>
        
        <form action="auctionUpdate" method="post">
        	
        	<label for="auction-id">Auction ID:</label>
        	<input type="text" name="id" value="<%= aucID1 %>" readonly>
        	
            <label for="item-title">Item Title:</label>
            <input type="text" id="item-title" name="item_title" value="<%= title1 %>" required>

            <label for="item-duration">Item Duration (in days):</label>
            <input type="number" id="item-duration" name="item_duration" value="<%= duration1 %>" required>

            <label for="item-description">Item Description:</label>
            <textarea id="item-description" name="item_description" rows="4" required> <%= description1 %></textarea>

            <label for="starting-bid">Starting Bid Price:</label>
            <input type="number" id="starting-bid" name="starting_bid" value="<%= startPrice1 %>" required>

            <input type="submit" class="create-auction-btn" name="submit" value="Update Auction">
        </form>
    </div>
</body>
</html>
	