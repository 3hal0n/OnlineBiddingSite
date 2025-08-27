package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/updateUserServletA"})
public class updateUserServletA extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public updateUserServletA() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String userId = request.getParameter("userId");
      String firstName = request.getParameter("firstName");
      String lastName = request.getParameter("lastName");
      String phoneNumber = request.getParameter("phoneNumber");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String createdAt = request.getParameter("createdAt");
      
      boolean isTrue = userControllerA.updateUser(userId, firstName, lastName, phoneNumber, email, password, createdAt);
      if (isTrue) {
         List<UserModelA> user = userControllerA.getById(userId);
         request.setAttribute("user", user);
         String alertMessage = "Data update Succesful";
         response.getWriter().println("<script> alert('" + alertMessage + "');window.location.href='admin.jsp'</script>");
      } else {
         System.out.println("Update failed for user: " + userId);
         RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
         dis2.forward(request, response);
      }

   }
}

