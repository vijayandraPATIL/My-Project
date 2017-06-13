<!DOCTYPE html>
<html>
<head>
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
<h1>We have lot of amenities for you</h1>

<ul>
<li>Free fast internet access</li>
<li>Transport desk</li>
<li> Hospitality </li>
<li> Swimming Pool </li>
</ul>

</body>
</html>