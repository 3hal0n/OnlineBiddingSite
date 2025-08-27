package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class sellerControllerA {
	   private static boolean isSuccess;
	   private static Connection con = null;
	   private static Statement stmt = null;
	   private static ResultSet rs = null;

	   public sellerControllerA() {
	   }

	   public static List<sellerModelA> getById(String userID) {
	      int convertedID = Integer.parseInt(userID);
	      ArrayList<sellerModelA> seller = new ArrayList();

	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "select * from seller where userId='" + convertedID + "'";
	         rs = stmt.executeQuery(sql);

	         while(rs.next()) {
	            String firstName = rs.getString(1);
	            String lastName = rs.getString(2);
	            String phoneNumber = rs.getString(3);
	            String email = rs.getString(4);
	            String password = rs.getString(5);
	            Timestamp createdAt = rs.getTimestamp(6);
	            int userId = rs.getInt(7);
	            sellerModelA sell = new sellerModelA(firstName, lastName, phoneNumber, email, password, createdAt, userId);
	            seller.add(sell);
	         }
	      } catch (Exception var12) {
	         var12.printStackTrace();
	      }

	      return seller;
	   }

	   public static List<sellerModelA> getAllSellers() {
	      ArrayList<sellerModelA> sellers = new ArrayList();

	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "select * from seller";
	         rs = stmt.executeQuery(sql);

	         while(rs.next()) {
	            String firstName = rs.getString(1);
	            String lastName = rs.getString(2);
	            String phoneNumber = rs.getString(3);
	            String email = rs.getString(4);
	            String password = rs.getString(5);
	            Timestamp createdAt = rs.getTimestamp(6);
	            int userId = rs.getInt(7);
	            sellerModelA sell = new sellerModelA(firstName, lastName, phoneNumber, email, password, createdAt, userId);
	            sellers.add(sell);
	         }
	      } catch (Exception var10) {
	         var10.printStackTrace();
	      }

	      return sellers;
	   }

	   public static boolean updateSeller(String firstName, String lastName, String phoneNumber, String email, String password, String createdAt, String userId) {
	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "update seller set firstName='" + firstName + "', lastName='" + lastName + "', phoneNumber='" + phoneNumber + "', email='" + email + "', password='" + password + "', createdAt='" + createdAt + "'where userId='" + userId + "'";
	         System.out.println("Executing SQL: " + sql);
	         int rs = stmt.executeUpdate(sql);
	         if (rs > 0) {
	            isSuccess = true;
	         } else {
	            isSuccess = false;
	         }
	      } catch (Exception var21) {
	         var21.printStackTrace();
	         isSuccess = false;
	      } finally {
	         if (stmt != null) {
	            try {
	               stmt.close();
	            } catch (Exception var20) {
	               var20.printStackTrace();
	            }
	         }

	         if (con != null) {
	            try {
	               con.close();
	            } catch (Exception var19) {
	               var19.printStackTrace();
	            }
	         }

	      }

	      return isSuccess;
	   }

	   public static boolean deleteData(String userId) {
	      int convID = Integer.parseInt(userId);

	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "delete from seller where userId='" + convID + "'";
	         int rs = stmt.executeUpdate(sql);
	         if (rs > 0) {
	            isSuccess = true;
	         } else {
	            isSuccess = false;
	         }
	      } catch (Exception var4) {
	         var4.printStackTrace();
	      }

	      return isSuccess;
	   }
	}

