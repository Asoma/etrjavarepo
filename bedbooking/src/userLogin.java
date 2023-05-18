

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.LoginDao;


@WebServlet("/userlogin")
public class userLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	 	 HttpSession session = null;
		 RequestDispatcher rd =null;
	    PrintWriter out = response.getWriter();  
	    String un=request.getParameter("uname");  
	    String p=request.getParameter("psw");
	    String q= "select * from reg_patient where username=? and password=?";
	    System.out.println("this is patient login");
	          
	    if(LoginDao.validate(un, p,q)){  
	    	  session = request.getSession(true); // reuse existing
             // session if exist
             // or create one
session.setAttribute("user", un);
//session.setAttribute("user", un);
//session.setMaxInactiveInterval(30); // 30 seconds
	         rd=request.getRequestDispatcher("user.jsp");  
	        rd.forward(request,response);  
	    }  
	    else{  
	        out.print("Sorry username or password error");  
	         rd=request.getRequestDispatcher("index.html");  
	        rd.include(request,response);  
	    }  
	          
	    out.close();

	}
	

}


