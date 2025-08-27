package Bidding;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BiddingDBUtil {

    private static final String INSERT_BID_SQL = "INSERT INTO bids (bidderName, bidderEmail, bidAmount, bidItem, bidDate, bidOutcome) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_BID_BY_ID_SQL = "SELECT * FROM bids WHERE bidId=?";
    private static final String SELECT_ALL_BIDS_SQL = "SELECT * FROM bids";
    private static final String UPDATE_BID_SQL = "UPDATE bids SET bidderName=?, bidderEmail=?, bidAmount=?, bidItem=?, bidDate=?, bidOutcome=? WHERE bidId=?";
    private static final String DELETE_BID_SQL = "DELETE FROM bids WHERE bidId=?";


    //Insert a new bid
    public void insertBid(Bidding bidding) throws SQLException {
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement(INSERT_BID_SQL)) {
            preparedStatement.setString(1, bidding.getBidderName());
            preparedStatement.setString(2, bidding.getBidderEmail());
            preparedStatement.setDouble(3, bidding.getBidAmount());
            preparedStatement.setString(4, bidding.getBidItem());
            preparedStatement.setString(5, bidding.getBidDate());
            preparedStatement.setString(6, bidding.getBidOutcome());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //Update an existing bid
    public boolean updateBid(Bidding bidding) throws SQLException {
        boolean rowUpdated;
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement(UPDATE_BID_SQL)) {
            preparedStatement.setString(1, bidding.getBidderName());
            preparedStatement.setString(2, bidding.getBidderEmail());
            preparedStatement.setDouble(3, bidding.getBidAmount());
            preparedStatement.setString(4, bidding.getBidItem());
            preparedStatement.setString(5, bidding.getBidDate());
            preparedStatement.setString(6, bidding.getBidOutcome());
            preparedStatement.setInt(7, bidding.getBidId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    //Get bid by its ID
    public Bidding selectBid(int bidId) {
        Bidding bidding = null;
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement(SELECT_BID_BY_ID_SQL)) {
            preparedStatement.setInt(1, bidId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String bidderName = rs.getString("bidderName");
                String bidderEmail = rs.getString("bidderEmail");
                double bidAmount = rs.getDouble("bidAmount");
                String bidItem = rs.getString("bidItem");
                String bidDate = rs.getString("bidDate");
                String bidOutcome = rs.getString("bidOutcome");

                bidding = new Bidding(bidId, bidderName, bidderEmail, bidAmount, bidItem, bidDate, bidOutcome);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bidding;
    }

    //Get all bids
    public List<Bidding> selectAllBids() {
        List<Bidding> biddings = new ArrayList<>();
        String query = SELECT_ALL_BIDS_SQL;

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement(query);
             ResultSet rs = preparedStatement.executeQuery()) {

            while (rs.next()) {
                int bidId = rs.getInt("bidId");
                String bidderName = rs.getString("bidderName");
                String bidderEmail = rs.getString("bidderEmail");
                double bidAmount = rs.getDouble("bidAmount");
                String bidItem = rs.getString("bidItem");
                String bidDate = rs.getString("bidDate");
                String bidOutcome = rs.getString("bidOutcome");

                biddings.add(new Bidding(bidId, bidderName, bidderEmail, bidAmount, bidItem, bidDate, bidOutcome));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return biddings;
    }


    // Delete a bid
    public boolean deleteBid(int bidId) throws SQLException {
        boolean rowDeleted;
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement(DELETE_BID_SQL)) {
            preparedStatement.setInt(1, bidId);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}
