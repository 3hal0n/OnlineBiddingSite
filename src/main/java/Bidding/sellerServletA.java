package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/viewSellers"})
public class sellerServletA extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public sellerServletA() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      List<sellerModelA> allSellers = sellerControllerA.getAllSellers();
      request.setAttribute("allSellers", allSellers);
      RequestDispatcher dispatcher = request.getRequestDispatcher("viewSellers.jsp");
      dispatcher.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      this.doGet(request, response);
   }
}


