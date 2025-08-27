package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class userControllerA {
	   private static boolean isSuccess;
	   private static Connection con = null;
	   private static Statement stmt = null;
	   private static ResultSet rs = null;

	   public userControllerA() {
	   }

	   public static List<UserModelA> getById(String userID) {
	      int convertedID = Integer.parseInt(userID);
	      ArrayList<UserModelA> user = new ArrayList();

	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "select * from usersa where userId='" + convertedID + "'";
	         rs = stmt.executeQuery(sql);

	         while(rs.next()) {
	        	    int userId = rs.getInt(1);
		            String firstName = rs.getString(2);
		            String lastName = rs.getString(3);
		            String phoneNumber = rs.getString(4);
		            String email = rs.getString(5);
		            String password = rs.getString(6);
		            Timestamp createdAt = rs.getTimestamp(7);
		            
	            UserModelA us = new UserModelA(userId, firstName, lastName, phoneNumber, email, password, createdAt);
	            user.add(us);
	         }
	      } catch (Exception var12) {
	         var12.printStackTrace();
	      }

	      return user;
	   }

	   public static List<UserModelA> getAllUsers() {
	      ArrayList<UserModelA> users = new ArrayList();

	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "select * from usersa";
	         rs = stmt.executeQuery(sql);

	         while(rs.next()) {
	            
	        	 int userId = rs.getInt(1);
		            String firstName = rs.getString(2);
		            String lastName = rs.getString(3);
		            String phoneNumber = rs.getString(4);
		            String email = rs.getString(5);
		            String password = rs.getString(6);
		            Timestamp createdAt = rs.getTimestamp(7);
	            UserModelA us = new UserModelA(userId, firstName, lastName, phoneNumber, email, password, createdAt);
	            users.add(us);
	         }
	      } catch (Exception var10) {
	         var10.printStackTrace();
	      }

	      return users;
	   }

	   public static boolean updateUser(String userId, String firstName, String lastName, String phoneNumber, String email, String password, String createdAt) {
	      try {
	         con = DBConnection.getConnection();
	         stmt = con.createStatement();
	         String sql = "update usersa set firstName='" + firstName + "', lastName='" + lastName + "', phoneNumber='" + phoneNumber + "', email='" + email + "', password='" + password + "'where userId='" + userId + "'";
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
	         String sql = "delete from usersa where userId='" + convID + "'";
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

