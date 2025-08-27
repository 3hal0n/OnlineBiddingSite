package Bidding;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/BiddingServlet")
public class BiddingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private BiddingDBUtil biddingDBUtil;

    public BiddingServlet() {
        super();
        this.biddingDBUtil = new BiddingDBUtil();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/bid_new":
                    showNewBidForm(request, response);
                    break;
                case "/bid_insert":
                    insertBid(request, response);
                    break;
                case "/bid_delete":
                    deleteBid(request, response);
                    break;
                case "/bid_edit":
                    showEditBidForm(request, response);
                    break;
                case "/bid_update":
                    updateBid(request, response);
                    break;
                default:
                    listBids(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showNewBidForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("bid-form.jsp");
        dispatcher.forward(request, response);
    }

    private void insertBid(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String bidderName = request.getParameter("bidder-name");
        String bidderEmail = request.getParameter("bidder-email");
        double bidAmount = Double.parseDouble(request.getParameter("bid-amount"));
        String bidItem = request.getParameter("bid-item");
        String bidDate = request.getParameter("bid-date");
        String bidOutcome = request.getParameter("bid-outcome");

        try {
            Bidding newBid = new Bidding(bidderName, bidderEmail, bidAmount, bidItem, bidDate, bidOutcome);
            biddingDBUtil.insertBid(newBid);
            response.sendRedirect("bid_list");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Bid insertion failed.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }

    private void deleteBid(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        biddingDBUtil.deleteBid(id);

        HttpSession session = request.getSession();
        session.setAttribute("deleteMessage", "Bid deleted successfully.");
        response.sendRedirect("bid_list?success=true");
    }

    private void showEditBidForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Bidding existingBid = biddingDBUtil.selectBid(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bid-form.jsp");
        request.setAttribute("bidInfo", existingBid);
        dispatcher.forward(request, response);
    }

    private void updateBid(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String bidderName = request.getParameter("bidder-name");
        String bidderEmail = request.getParameter("bidder-email");
        double bidAmount = Double.parseDouble(request.getParameter("bid-amount"));
        String bidItem = request.getParameter("bid-item");
        String bidDate = request.getParameter("bid-date");
        String bidOutcome = request.getParameter("bid-outcome");

        Bidding updatedBid = new Bidding(id, bidderName, bidderEmail, bidAmount, bidItem, bidDate, bidOutcome);
        biddingDBUtil.updateBid(updatedBid);
        response.sendRedirect("bid_list");
    }

    private void listBids(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Bidding> listBids = biddingDBUtil.selectAllBids();
        request.setAttribute("listBids", listBids);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bid-list.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
