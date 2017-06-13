package hp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.sun.corba.se.pept.transport.Connection;

import java.sql.*;
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public login() {
        super();
        
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    		throws IOException{
    					
    		}	

	


	
	public   void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		


		//if(r.getString(1).equals(username) && r.getString(4).equals(password))
		


		try{  
			
			 
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String Email = request.getParameter("Email");
			String Password = request.getParameter("pwd");
		
		
					ResultSet r=LoginValidation.Validation(Password);
					
					RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
					RequestDispatcher rd2=request.getRequestDispatcher("error.jsp");
					out.println(Email);
					out.println(Password);
					
					if(r.next())
					{
						HttpSession sess=request.getSession(); 
						sess.setAttribute("name",Email);
						rd.forward(request,response);
						
				       		
					}
					else
					{
						rd2.forward(request,response);
					}
				
			
			       		
		    }
		catch(Exception e)
		{
			//System.out.println(e);
			//out.println("Invalid user");
		    //e.printStackTrace();
		    //out.println(e);
		}
		
		

	}}
