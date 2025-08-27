package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HistoryControll {
    // Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert data function
    public static boolean insertdata(String Item_Title, String Duration, String Description, String Start_Bid_Price) {
        boolean isSuccess = false;

        try {
            // DB CONNECTION CALL
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL Query
            String sql = "insert into auction values(0,'" + Item_Title + "','" + Duration + "','" + Description + "','" + Start_Bid_Price + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
    //methanin yata show ekaaaaaaaaaaaaa
    // Get data by id
    public static List<HistoryModel> getById(String Id) {
        int convertedID = Integer.parseInt(Id);

        ArrayList<HistoryModel> History = new ArrayList<>();

        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "select * from auction where Auction_ID = '" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String Item_Title = rs.getString(2);
                String Duration = rs.getString(3);
                String Description = rs.getString(4);
                String Start_Bid_Price = rs.getString(5);

                HistoryModel bk = new HistoryModel(id, Item_Title, Duration, Description, Start_Bid_Price);
                History.add(bk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return History;
    }

    // Get all data method
    public static List<HistoryModel> getAllData() {
        ArrayList<HistoryModel> Historys = new ArrayList<>();

        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "select * from auction";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String Item_Title = rs.getString(2);
                String Duration = rs.getString(3);
                String Description = rs.getString(4);
                String Start_Bid_Price = rs.getString(5);

                HistoryModel bk = new HistoryModel(id, Item_Title, Duration, Description, Start_Bid_Price);
                Historys.add(bk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Historys;
    }
    
  //delete data 
  		public static boolean deletedata(String id) {
  			int convID = Integer.parseInt(id);
  			
  			try {
  				con = DBConnection.getConnection();
  	            stmt = con.createStatement();
  	            String sql ="delete from auction where Auction_ID = '"+convID+"'";
  	            int rs = stmt.executeUpdate(sql);
  	            
  	            if(rs>0) {
  	            	isSuccess = true;
  	            }else {
  	            	isSuccess = false;
  	            }
  			}
  			catch (Exception e) {
  	            e.printStackTrace();
  	        }
  			return isSuccess;
  		}
}



