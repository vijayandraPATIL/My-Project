<!DOCTYPE html>
<html>
<head>
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
<body background="book.jpg">
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




<div style="align:center">
<h3>Book us on </h3><br>
<a href="https://www.google.com"><img src="google-logo2.jpg"  height="75"></a>&nbsp;&nbsp;&nbsp;&nbsp;


<a href="https://www.makemytrip.com/"><img src="make.gif"  height="150"></a>&nbsp;&nbsp;&nbsp;&nbsp;

<a href="https://www.yatra.com/hotels.html"><img src="yatra.jpg"  height="150"></a>&nbsp;&nbsp;&nbsp;&nbsp;

<a href="https://www.goibibo.com/hotels/"><h2>Goibibo</h2></a>



</div>

</body>
</html>