<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous feed backs</title>
<meta charset='utf-8'>
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
<%@ page  import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="hp.DB" %>

       <%   
            Connection co =DB.getConnection();
            Statement statement = co.createStatement();

            ResultSet r = statement.executeQuery("select * from feedback1") ; 

        %>
   <br><br><br><br><br>      <TABLE BORDER="3" align="center">
         
            <TR>
               <TH>Name</TH>
               <TH>Feedback</TH>
                    
             </TR>
           <TR>
           <% while (r.next()) {%>
           <tr>
            <TD> <%= r.getString(1) %> </TD>
            <TD><%= r.getString(2) %>
           
  </tr>
  <%}%>
</table>
<br>
</body>
</html>