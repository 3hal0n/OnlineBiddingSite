package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AuctionDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
    public static boolean insertDetails(String ItemTitle, String ItemDuration, String ItemDescription, String StartingBidPrice) {
        
        isSuccess = false;
       
        try {
      
            con = DBConnection.getConnection();
            stmt =con.createStatement();
            
            String sql = "INSERT INTO auction (Auction_ID, Item_Title, Duration, Description, Start_Bid_Price) VALUES (0,'"+ItemTitle+"','"+ItemDuration+"','"+ItemDescription+"','"+StartingBidPrice+"')";
            int rs = stmt.executeUpdate(sql);
            
            if(rs > 0) {
            	isSuccess = true;
            }else {
            	isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return isSuccess;
    }
    
    
    public static List<Integer> getAuctionIDs() {
	    
	    List<Integer> auctionIDs = new ArrayList<>();
	    
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT Auction_ID FROM auction ORDER BY Auction_ID ASC";
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int aucID = rs.getInt("Auction_ID");
	            auctionIDs.add(aucID);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return auctionIDs;
	}

	
	public static List<Auctions> getAuctionDetails(int id) {
		
		//int convertedID = Integer.parseInt(id);
		
		ArrayList<Auctions> auction = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = " SELECT * FROM auction WHERE Auction_ID = '"+id+"' "; 
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int Auction_ID = rs.getInt(1);
				String ItemTitle = rs.getString(2);
				String ItemDuration = rs.getString(3);
				String ItemDescription = rs.getString(4);
				String StratingBidPrice = rs.getString(5);
				
				Auctions auc = new Auctions(Auction_ID, ItemTitle, ItemDuration, ItemDescription, StratingBidPrice);
				
				auction.add(auc);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return auction;
	}
	
	public static List<Auctions> getAllAuctionDetails() {
		
	    List<Auctions> allAuctions = new ArrayList<>();
	    
	    // Get all the PIDs
	    List<Integer> auctionIDs = getAuctionIDs();
	    
	    // For each PID, get the booking details
	    for (int id : auctionIDs) {
	        List<Auctions> auctionForID = getAuctionDetails(id);
	        allAuctions.addAll(auctionForID); // Add all booking details to the main list
	    }
	    
	    return allAuctions;
	}
	
	public static boolean deleteCustomer(int id) {
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM auction WHERE Auction_ID='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateAuctionDetails(String aucID, String title, String duration, String description, String startPrice) {
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = " UPDATE auction SET Item_Title='"+title+"', Duration='"+duration+"', Description='"+description+"', Start_Bid_Price='"+startPrice+ "'WHERE Auction_ID='"+aucID+"' ";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
