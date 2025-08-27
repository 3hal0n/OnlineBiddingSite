package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class productsController {
	//Connect DB
		private static boolean isSuccess;
		private static Connection con= null;
		private static Statement stmt= null;
		private static ResultSet rs=null;

	//GetbyCat
		public static List<productsModel> getByCat (String category){
			
			ArrayList <productsModel> product =new ArrayList<>();
			try {
				//DBconnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				//Query
				String sql="select * from auctiona where category='"+category+"'";
				rs=stmt.executeQuery(sql);
				while(rs.next()) {
					int Auction_ID=rs.getInt(1);
					 String Item_Title=rs.getString(2);
					 String Duration=rs.getString(3);
					 String Description=rs.getString(4);
					 String Start_Bid_Price=rs.getString(5);
					 String Category=rs.getString(6);
					
					productsModel pd=new productsModel(Auction_ID,Item_Title, Duration, Description, Start_Bid_Price , Category);
					product.add(pd);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return product;
		}
		//GetAll Data
		public static List<productsModel> getAllProducts (){
			ArrayList <productsModel> products =new ArrayList<>();
			try {
				//DBconnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				//Query
				String sql="select * from auctiona";
				rs=stmt.executeQuery(sql);
				while(rs.next()) {
					int Auction_ID=rs.getInt(1);
					 String Item_Title=rs.getString(2);
					 String Duration=rs.getString(3);
					 String Description=rs.getString(4);
					 String Start_Bid_Price=rs.getString(5);
					 String Category=rs.getString(6);
					
					productsModel pds=new productsModel(Auction_ID,Item_Title, Duration, Description, Start_Bid_Price , Category);
					products.add(pds);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return products;
		}
}