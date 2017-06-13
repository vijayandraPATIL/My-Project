<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<title>Feedback.jsp</title>
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
    <li><a href='feedback.jsp'>Give Feed Back</a></li>
   <li><a href='fetch.jsp'>Prevoius Feed Backs</a>
   <li><a href='home.jsp'>Log out</a></li>
</ul>
</div>

<table  align="center">

<form action="FEED" name="feedback"  method="post" align="center">
<br><br><br><br><br><br>
<p style="color:red" >Give your valuable feedback here:</p><br>
<input type="text" name="name" placeholder="enter name"></input>
<textarea rows="4" column="50" autofocus="feedback.jsp" name="fb" method="post" maxlength="250" placeholder="Give your Feedback here"></textarea><br>
<input type="submit" value="Submit Feed Back"> </input>
</form>
<pre><form action="Delete1" method="post" name="feedback">
<input type="text" name="name" placeholder="enter name"></input>
<input type="submit" value="Want to delete feedback"/></a>
</form></pre>
</table>

<br><br>


</body>
</html>