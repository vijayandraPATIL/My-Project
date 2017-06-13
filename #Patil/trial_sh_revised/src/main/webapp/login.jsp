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
Class.forName("com.mysql.jdbc.Driver").newInstance();
		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/patil","root","patil");
		
			Statement statement=conn.createStatement();
			
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
