

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Doctordao;

import model.Doctor;

/**
 * Servlet implementation class ShowDoctor
 */
@WebServlet("/showdoctor")
public class ShowDoctor extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  response.setContentType("text/html");  
	      PrintWriter out=response.getWriter();  
	        
	      String spageid=request.getParameter("page"); 
	      
	  int pageid=Integer.parseInt(spageid);  
	  int total=10;  
	  if(pageid==1){}  
	  else{  
	      pageid=pageid-1;  
	      pageid=pageid*total+1;  
	      }  
	  List<Doctor> list=Doctordao.getDocRecords(pageid,total); 
	  out.print("<html>");
	  out.print("<head>");
out.print(" <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>");  
out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js'></script>");	  
out.println("<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>");
out.print("</head><body>"); 
out.print("<div class='container'>"); 
	  out.print("<h1>Doctors Details</h1>");  
	  
	  out.print("<table border='1' cellpadding='4' width='60%'  class='table table-hover'>");  
	out.print("<tr><th>Id</th><th>Name</th><th>E-mail</th><th>Address</th><th>MobileNo</th><th>Qualifications</th><th>Username</th><th>Password</th></tr>");  
	  for(Doctor e1:list){  
	          out.print("<tr><td>"+e1.getD_id()+"</td><td>"+e1.getD_name()+"</td><td>"+e1.getD_email()+"</td><td>"+e1.getD_mob()+"</td><td>"+e1.getD_address()+"</td><td>"+e1.getD_qual()+"</td><td>"+e1.getDname()+"</td><td>"+e1.getDpass()+"</td></tr>");  
	      }  
	   out.print("</table>");  

	   out.print("</div>");
	        
	   out.print("</body></html>");
	        
	  out.close();  
	}

}
