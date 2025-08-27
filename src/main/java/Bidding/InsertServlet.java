package Bidding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Item_Title = request.getParameter("Item_Title");
		String Duration = request.getParameter("Duration");
		String Description = request.getParameter("Description");
		String Start_Bid_Price = request.getParameter("Start_Bid_Price");
		
		boolean isTrue;
		
		isTrue = HistoryControll.insertdata(Item_Title, Duration, Description, Start_Bid_Price);
		
		if (isTrue) {
			String alertMessage = "Data insert Successfull broooooo!";
			
			// Fix the typo and ensure proper redirection
			response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='GetAllServlet';</script>");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}
}
