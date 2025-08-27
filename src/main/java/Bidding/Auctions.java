package Bidding;

public class Auctions {

	private int auctionID;
	private String itemTitle;
	private String itemDuration;
	private String itemDescription;
	private String startBidPrice;
	
	public Auctions(int auctionID, String itemTitle, String itemDuration, String itemDescription, String startBidPrice) {
		
		this.auctionID = auctionID;
		this.itemTitle = itemTitle;
		this.itemDuration = itemDuration;
		this.itemDescription = itemDescription;
		this.startBidPrice = startBidPrice;
	}

	public int getAuctionID() {
		return auctionID;
	}

	public String getItemTitle() {
		return itemTitle;
	}

	public String getItemDuration() {
		return itemDuration;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public String getStartBidPrice() {
		return startBidPrice;
	}
	
}
