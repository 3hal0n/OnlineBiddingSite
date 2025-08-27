package Bidding;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/sellerDeleteServletA"})
public class sellerDeleteServletA extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public sellerDeleteServletA() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String userId = request.getParameter("userId");
      boolean isTrue = sellerControllerA.deleteData(userId);
      if (isTrue) {
         String alertMessage = "Data Deleted Succesfully";
         response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='admin.jsp'</script>");
      } else {
         List<sellerModelA> sellerDetails = sellerControllerA.getById(userId);
         request.setAttribute("sellerDetails", sellerDetails);
         RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
         dispatcher.forward(request, response);
      }

   }
}



