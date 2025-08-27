package Bidding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertContactServlet")
public class InsertContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String question = request.getParameter("question");
		
		boolean isTrue;
		
		isTrue = ContactUsControll.insertdata(email, name, question);
		
		if (isTrue) {
			String alertMessage = "Data insert Successfull!";
			
			// Fix the typo and ensure proper redirection
			response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='ContactUs.jsp';</script>");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}
}
