package Bidding;

public class productsModel {
	private int Auction_ID;
	private String Item_Title;
	private String Duration;
	private String Description;
	private String Start_Bid_Price;
	private String Category;
	public productsModel(int auction_ID, String item_Title, String duration, String description, String start_Bid_Price,
			String category) {
		super();
		Auction_ID = auction_ID;
		Item_Title = item_Title;
		Duration = duration;
		Description = description;
		Start_Bid_Price = start_Bid_Price;
		Category = category;
	}
	public int getAuction_ID() {
		return Auction_ID;
	}
	public void setAuction_ID(int auction_ID) {
		Auction_ID = auction_ID;
	}
	public String getItem_Title() {
		return Item_Title;
	}
	public void setItem_Title(String item_Title) {
		Item_Title = item_Title;
	}
	public String getDuration() {
		return Duration;
	}
	public void setDuration(String duration) {
		Duration = duration;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getStart_Bid_Price() {
		return Start_Bid_Price;
	}
	public void setStart_Bid_Price(String start_Bid_Price) {
		Start_Bid_Price = start_Bid_Price;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	
	
}

