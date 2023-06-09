

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.BedDao;

import model.Bed;

@WebServlet("/showbed")
public class ShowBed extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	      PrintWriter out=response.getWriter();  
	        
	      String spageid=request.getParameter("page");  
	  int pageid=Integer.parseInt(spageid);  
	  int total=25;  
	  if(pageid==1){}  
	  else{  
	      pageid=pageid-1;  
	      pageid=pageid*total+1;  
	      }  
	  List<Bed> list=BedDao.getBedRecords(pageid,total);  
	  out.print("<html>");
	  out.print("<head>");
out.print(" <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>");  
out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js'></script>");	  
out.println("<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>");
out.print("</head><body>"); 
out.print("<div class='container'>");
out.print("<h1>Beds Details</h1>");  
	  out.print("<table border='1' cellpadding='4' width='60%' class='table table-hover'>");  
	out.print("<tr><th>Bed Id.</th><th>Room No.</th><th>Bed no.</th><th>price</th><th>Status</th></tr>");  
	  for(Bed e3:list){  
	          out.print("<tr><td>"+e3.getB_id()+"</td><td>"+e3.getRoom_no()+"</td><td>"+e3.getBed_no()+"</td><td>"+e3.getPrice());
	        		  if(e3.getStatus().equals("booked")){
	        		 
	        			   out.print( "</td><td class='btn-danger'>"+e3.getStatus()+"</td></tr>");  
	        		  }
	        		  else
	        		  {
	        			  out.print("</td><td class='btn-success'>"+e3.getStatus()+"</td></tr>");  
	        		  }
	      }  
	   out.print("</table>");  
	   out.print("</div>");
	        
	   out.print("</body></html>");  
	        
	  out.close();  
	}

}
