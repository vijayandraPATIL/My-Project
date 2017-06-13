package hp;

import java.io.IOException;
import java.io.PrintWriter;
//import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.jdbc.Statement;
import java.sql.*;


@WebServlet("/FEED")
public class FEED extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FEED() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("name");
		String fb = request.getParameter("fb");
		
		
		try
		{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
		 
		     int i=FeedValidation.test(Name,fb);
			//int j=statement.executeUpdate("insert into feedback1 values ('"+fb+"')");
		  
			//String query="select email,pwd from Register";
			//ResultSet rs=statement.executeQuery(query);
		 


			out.println("Thanks for your valuable feedback");

		 }
		catch(Exception e)
		{
			//out.println("give your feedback");
			//e.printStackTrace();
			//%>
			
		}
		
		
	}

}
