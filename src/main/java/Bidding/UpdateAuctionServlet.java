package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAuctionServlet")
public class UpdateAuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aucID = request.getParameter("id");
		String title = request.getParameter("item_title");
		String duration = request.getParameter("item_duration");
		String description = request.getParameter("item_description");
		String startPrice = request.getParameter("starting_bid");
		
		boolean isTrue;
		isTrue = AuctionDBUtil.updateAuctionDetails(aucID, title, duration, description, startPrice);
		
		if (isTrue == true) {
			
			List<Auctions> auctionList = AuctionDBUtil.getAllAuctionDetails();
			request.setAttribute("auctionList", auctionList);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("AuctionPage.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
