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
/*p::first-letter {
  font-size: 200%;
  color: #8A2BE2;
}*/
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
	

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>

<%
String Customer_id=(String)session.getAttribute("cid");
String Customer_Name=(String)session.getAttribute("cnm");
%>
<h2><marquee> Welcome Mr.<%=Customer_Name%></marquee></h2>
<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
out.println( "" );
Connection con = null;
PreparedStatement stmt=null;
ResultSet resultSet = null;
%>
<body>
<div class="topnav">
 <p> <a class="active" href="customer.jsp">Home</a></p>
 <p><a class="active" href="demo.html">CONTACT US</a></p>
</div>
<div class="ad">
 <a href="front.html"><p style="text-align:right">LogOut</a></p>
</div>

<h2 align="center"><font><strong>BOOKING DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b> BOOKING_ID</b></td>
<td><b>CUSTOMER_ID</b></td>
<td><b>SOURCE</b></td>
<td><b>DESTINATION</b></td>
<td><b>DOJ</b></td>
<td><b>KM</b></td>
<td><b>PRICE</b></td>
<td><b>PASSENGER</b></td>
<td><b>VEHICLE</b></td>
<td><b>STATUS</b></td>
<td><b>DRNO</b></td>
<td><b>JT</b></td>

<%
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin","admin");
out.println( "" );
String sql ="SELECT * FROM booking where CUSTOMER_ID=?";
stmt = con.prepareStatement(sql);

stmt.setString(1,Customer_id);

resultSet=stmt.executeQuery();
out.println( "" );
while(resultSet.next()){
	
%>
<form name="myform" method="post" action="http://localhost:9090/examples/cr/app.jsp">
<tr bgcolor="#DEB887">
<td><input type="text" name="Booking_id" value="<%=resultSet.getInt(1)%>"  </td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getDate(5)   %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getString(8) %></td>
<td><%=resultSet.getString(9) %></td>

<td><%=resultSet.getString(10) %></td>
<td><%=resultSet.getString(11) %></td>
<td><%=resultSet.getString(12) %></td>
<td><input type="submit" value="cancle"></td>
</tr>
</form>
<% 
}
con.close();

} 
catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<button onclick="myFunction()">Print this page</button>

<script>
function myFunction() {
    window.print();
}
</script>


</body>