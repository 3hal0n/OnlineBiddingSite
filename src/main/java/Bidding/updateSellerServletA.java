package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/updateSellerServletA"})
public class updateSellerServletA extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public updateSellerServletA() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String firstName = request.getParameter("firstName");
      String lastName = request.getParameter("lastName");
      String phoneNumber = request.getParameter("phoneNumber");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String createdAt = request.getParameter("createdAt");
      String userId = request.getParameter("userId");
      boolean isTrue = sellerControllerA.updateSeller(firstName, lastName, phoneNumber, email, password, createdAt, userId);
      if (isTrue) {
         List<sellerModelA> seller = sellerControllerA.getById(userId);
         request.setAttribute("seller", seller);
         String alertMessage = "Data update Succesful";
         response.getWriter().println("<script> alert('" + alertMessage + "');window.location.href='admin.jsp'</script>");
      } else {
         System.out.println("Update failed for seller: " + userId);
         RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
         dis2.forward(request, response);
      }

   }
}

