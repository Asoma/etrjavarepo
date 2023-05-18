

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   RequestDispatcher rd =null;
	   HttpSession session;
       
 
    protected void doPost(HttpServletRequest request,
          HttpServletResponse response) throws ServletException, IOException {
       // TODO Auto-generated method stub
       response.setContentType("text/html");
       PrintWriter out = response.getWriter();
        
        session = request.getSession(false);
       // session.setAttribute("user", null);
        session.removeAttribute("user");
        session.getMaxInactiveInterval();
      out.println("Thanq you!!, You are successfully LoggedOut!!");
       
       rd=request.getRequestDispatcher("index.html");  
       rd.include(request,response);
       
    }
 }


