<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
 marquee{
      font-size: 30px;
      font-weight: 800;
      color: red;
      font-family: sans-serif;
      }
p::first-letter {
  font-size: 200%;
  color: #8A2BE2;
}
.ad {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float:left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.ad a {
  float:right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.ad a:hover {
  background-color: #ddd;
  color: black;
  text-align: right;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
  text-align: right;
}
</style>
</head>
<body background="image4.jpg">
<%
String Customer_id=(String)session.getAttribute("cid");
String Customer_Name=(String)session.getAttribute("cnm");
%>
<h2><marquee>  Welcome Mr.<%=Customer_Name %></marquee></h2>

<div class="topnav">
 <p> <a class="active" href="demo.html">Home</a></p>
 <p><a class="active" href="demo.html">CONTACT US</a></p>

</div>
<div class="ad">
 <a href="front.html"><p style="text-align:right">LogOut</a></p>
</div>

<div style="padding-left:16px">
<center><h1>Welcome to Customer</h1></center>
<img src= "customer.jpeg" width="100" height="100">
 <center>
  <br>
 </center>
<h2><a href="Booking.jsp"><p align="left">plan my journey</p></a></h2><br>
<h2><a href="b.jsp"><p align="left">Booking</p></a></h2><br><br>

</div>
</body>
</html>
