package Bidding;

import java.sql.Timestamp;

public class sellerModelA {
	   private String firstName;
	   private String lastName;
	   private String phoneNumber;
	   private String email;
	   private String password;
	   private Timestamp createdAt;
	   private int userId;

	   public sellerModelA(String firstName, String lastName, String phoneNumber, String email, String password, Timestamp createdAt, int userId) {
	      this.firstName = firstName;
	      this.lastName = lastName;
	      this.phoneNumber = phoneNumber;
	      this.email = email;
	      this.password = password;
	      this.createdAt = createdAt;
	      this.userId = userId;
	   }

	   public String getFirstName() {
	      return this.firstName;
	   }

	   public void setFirstName(String firstName) {
	      this.firstName = firstName;
	   }

	   public String getLastName() {
	      return this.lastName;
	   }

	   public void setLastName(String lastName) {
	      this.lastName = lastName;
	   }

	   public String getPhoneNumber() {
	      return this.phoneNumber;
	   }

	   public void setPhoneNumber(String phoneNumber) {
	      this.phoneNumber = phoneNumber;
	   }

	   public String getEmail() {
	      return this.email;
	   }

	   public void setEmail(String email) {
	      this.email = email;
	   }

	   public String getPassword() {
	      return this.password;
	   }

	   public void setPassword(String password) {
	      this.password = password;
	   }

	   public Timestamp getCreatedAt() {
	      return this.createdAt;
	   }

	   public void setCreatedAt(Timestamp createdAt) {
	      this.createdAt = createdAt;
	   }

	   public int getUserId() {
	      return this.userId;
	   }

	   public void setUserId(int userId) {
	      this.userId = userId;
	   }
	}
