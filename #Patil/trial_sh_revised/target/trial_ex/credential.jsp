<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>credential.jsp</title>
<meta charset="ISO-8859-1">
<title>Hotel Online</title>
<meta charset="ISO-8859-1">
<title>Amenities</title>
<meta charset="ISO-8859-1">
<title>menu.html</title>
 <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
</head>
<body>


<div id='cssmenu'>
<ul>
   <li class='active'><a>Menu</a></li>
   <li><a>Amenities</a></li>
   <li><a>Hotel Online Book</a></li>
   <li><a>About Us</a></li>
   <li><a>Feed Back</a></li>
   <li><a>Prevoius Feed Backs</a>
   <li><a>Log out</a></li>
</ul>
</div>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<% 
String Email = request.getParameter("email");
String dob = request.getParameter("dob");
String Place = request.getParameter("place");
String Password = request.getParameter("pwd");


//for inserting


try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patil","root","patil"); 
Statement statement= con.createStatement(); 


	int i=statement.executeUpdate("insert into Register values ('"+Email+"','"+dob+"','"+Place+"','"+Password+"')");
  
	String query="select email,pwd from Register";
	ResultSet rs=statement.executeQuery(query);
 


	out.println("We received your data successfylly");

 }
catch(Exception e)
{
	out.println("<script>alert('already exists')</script>");
	//e.printStackTrace();
	%>
	<a href="home.jsp">Click back</a>
<%
}
%>
<a href="home.jsp">click to login</a>
</body>
</html>