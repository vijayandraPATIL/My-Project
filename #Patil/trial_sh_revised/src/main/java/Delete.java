package hp;

import java.io.*;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.jdbc.Statement;

import java.sql.*;


@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Delete() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		Connection jdbc;
		PreparedStatement st;
	ResultSet rs;
		try
		{
		
        

          
 
            PrintWriter out=res.getWriter();
			String Name = req.getParameter("name");
			//Class.forName("com.mysql.jdbc.Driver").newInstance();
			//Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/patil","root","patil");
			//Statement statement=(Statement) jdbc.createStatement();
			//@SuppressWarnings("unused")
			//int rs=statement.executeUpdate("delete from feedback1 where name='"+Name+"'");
			
			
			int i=DeleteValidation.test(Name);
			//out.println(Name);
			
			//out.println("deleted succefully");
		}
		catch(Exception e)
		{
			PrintWriter out=res.getWriter();
			out.println(e);
		}
			
			
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}}

