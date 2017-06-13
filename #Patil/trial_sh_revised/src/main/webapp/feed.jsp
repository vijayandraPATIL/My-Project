<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>feed.jsp</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
</head>
<body>
<% HttpSession sess= request.getSession(); 

if (sess.getAttribute("name")==null)
{
	response.sendRedirect("home.jsp");	
}%>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='menu.jsp'>Menu</a></li>
   <li><a href='amenities.jsp'>Amenities</a></li>
   <li><a href='hotelonline.jsp'>Hotel Online Book</a></li>
   <li><a href='about.jsp'>About Us</a></li>
    <li><a href='feedback.jsp'>Feed Back</a></li>
   <li><a href='fetch.jsp'>Prevoius Feed Backs</a>
   <li><a href='home.jsp'>Log out</a></li>
</ul>
</div>
<br><br><br>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<% 
String Name = request.getParameter("name");
String fb = request.getParameter("fb");



//for inserting


try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patil","root","patil"); 
Statement statement= con.createStatement(); 

    int i=statement.executeUpdate("insert into feedback1 values ('"+Name+"','"+fb+"')");
	//int j=statement.executeUpdate("insert into feedback1 values ('"+fb+"')");
  
	//String query="select email,pwd from Register";
	//ResultSet rs=statement.executeQuery(query);
 


	out.println("Thanks for your valuable feedback");

 }
catch(Exception e)
{
	out.println("give your feedback");
	//e.printStackTrace();
	//%>
	//<a href="home.jsp">Click back</a>
//<%
}
%>
</body>
</html>