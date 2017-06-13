<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Welcome</title>
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
</ul>
</div>

<table align="center" border="2">
<tr>
<th>
<td>ROOM</td>
 </th>
 <th>
 <td>PHOTO</td>
 </th>
 </tr>
 
 <tr>
 <th>
 <td>NON-AC DELUXE </td>
 </th>
 <th>
 <td><img src="nonac.jpg"/></td>
 </th>

<tr>
 <th>
 <td>AC DELUXE </td>
 </th>
 <th>
 <td><img src="ac.jpg" height="270"/></td>
 </th>
</table>




</body>
</html>
