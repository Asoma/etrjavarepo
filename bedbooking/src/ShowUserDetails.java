
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import controller.UserDao;

/**
 * Servlet implementation class ShowUserDetails
 */
@WebServlet("/showuserdetails")
public class ShowUserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// List<User> list=UserDao.getUserRecords(pageid,total);
		String u_id = "1";
		User e2 = null;
		out.print("<html>");
		out.print("<head>");
		out.print(" <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>");
		out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js'></script>");
		out.println("<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>");
		out.print("</head><body>");
		out.print("<div class='container'>");

		out.print(" <link rel='stylesheet' href='../css/style.css'>");

		// u_id=request.getParameter(u_id);
		try {
			e2 = UserDao.UserSearch(Integer.parseInt(u_id));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		out.print("<h1>Users Schedule Details</h1>");
		out.print("<table border='1' cellpadding='4' width='60%'  class='table table-hover'>");
		//out.print("<tr><th>User Id</th>" 
			out.print("<tr><th>User Name</th><th>Age</th>"
				+ "<th>mobile no.</th><th>address</th>"
				+ "<th>gender</th><th>blood group</th>"
				+ "<th>Symptoms</th><th>Department</th>"
			 	+ "<th>Date Of Appointment</th></tr>");
			//	+ "<th>username</th><th>password</th></tr>"

		String uid = e2.getU_id();
		String uname = e2.getU_name();
		String age = e2.getU_age();
		String mobile = e2.getU_mob();
		String uadd = e2.getU_add();
		String ugender = e2.getU_gender();
		String ubgroup = e2.getU_bgroup();
		String usym = e2.getU_sym();
		String udprt = e2.getU_dprt();

		String udoa = e2.getU_doa();
	//	<td>" + uid + "</td><td>"
		out.print("<tr><td>" +uname + "</td><td>" + age
				+ "</td><td>" + mobile + "</td><td>" + uadd
				+ "</td><td>" + ugender + "</td><td>" + ubgroup 
				+ "</td><td>" + usym + "</td><td>" +  udprt 
				+ "</td><td>" + udoa + "</td></tr>");
		// out.print("<tr><td>"+e2.getU_id()+"</td><td>"+e2.getU_name()+"</td></tr>");

		out.print("</table>");

		out.print("</div>");

		out.print("</body></html>");

		out.close();

	}

}