<%@page import="hp.jdbc_con"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page  import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
String Email = request.getParameter("Email");
String Password = request.getParameter("pwd");



//if(r.getString(1).equals(username) && r.getString(4).equals(password))
	


try{      
	
	


String driver =jdbc_con.load().getProperty("jdbc.driver");
String url=jdbc_con.load().getProperty("jdbc.url");
String user=jdbc_con.load().getProperty("jdbc.user");
String pass=jdbc_con.load().getProperty("jdbc.password");
        
            
	
	
	        Class.forName(driver).newInstance();
		
			Connection jdbc_con=DriverManager.getConnection(url,user,pass);
		
			Statement statement=jdbc_con.createStatement();
			
			String extract="select * from register where pwd='"+Password+"'";
			ResultSet r=statement.executeQuery(extract);
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
	out.println("Invalid user");
    e.printStackTrace();
}
			
%>
</body>
</html>
