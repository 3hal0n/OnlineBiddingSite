package Bidding;

public class Bidding {
    
    private int bidId;
    private String bidderName;
    private String bidderEmail;
    private double bidAmount;
    private String bidItem;
    private String bidDate;
    private String bidOutcome; 

    // Constructor
    public Bidding(int bidId, String bidderName, String bidderEmail, double bidAmount, String bidItem, String bidDate, String bidOutcome) {
        this.bidId = bidId;
        this.bidderName = bidderName;
        this.bidderEmail = bidderEmail;
        this.bidAmount = bidAmount;
        this.bidItem = bidItem;
        this.bidDate = bidDate;
        this.bidOutcome = bidOutcome;
    }

    // Constructor without bidId
    public Bidding(String bidderName, String bidderEmail, double bidAmount, String bidItem, String bidDate, String bidOutcome) {
        this.bidderName = bidderName;
        this.bidderEmail = bidderEmail;
        this.bidAmount = bidAmount;
        this.bidItem = bidItem;
        this.bidDate = bidDate;
        this.bidOutcome = bidOutcome;
    }

    // Getters
    public int getBidId() {
        return bidId;
    }

    public String getBidderName() {
        return bidderName;
    }

    public String getBidderEmail() {
        return bidderEmail;
    }

    public double getBidAmount() {
        return bidAmount;
    }

    public String getBidItem() {
        return bidItem;
    }

    public String getBidDate() {
        return bidDate;
    }

    public String getBidOutcome() {
        return bidOutcome;
    }

    // Setters (if needed)
    public void setBidId(int bidId) {
        this.bidId = bidId;
    }

    public void setBidderName(String bidderName) {
        this.bidderName = bidderName;
    }

    public void setBidderEmail(String bidderEmail) {
        this.bidderEmail = bidderEmail;
    }

    public void setBidAmount(double bidAmount) {
        this.bidAmount = bidAmount;
    }

    public void setBidItem(String bidItem) {
        this.bidItem = bidItem;
    }

    public void setBidDate(String bidDate) {
        this.bidDate = bidDate;
    }

    public void setBidOutcome(String bidOutcome) {
        this.bidOutcome = bidOutcome;
    }
}
