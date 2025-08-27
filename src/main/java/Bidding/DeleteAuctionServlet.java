package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteAuctionServlet")
public class DeleteAuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("aucID");
		
		int ID = Integer.parseInt(id);
		
		boolean isTrue = AuctionDBUtil.deleteCustomer(ID);
		
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
