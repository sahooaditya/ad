<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration" %>
<%

int Booking_id=Integer.parseInt(request.getParameter("Booking_id"));
out.print(Booking_id);
String mob=(String)session.getAttribute("cmob");
String st="conform";
     
        try {
			
			 
	  
Class.forName("oracle.jdbc.driver.OracleDriver");
out.println( "Driverloaded" );
Connection connection = null;
PreparedStatement stmt=null;
connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin","admin");
out.println( "Database Connected" );
String sql ="update booking set STATUS=? , DRNO=? where BOOKING_ID=?";
 stmt = connection.prepareStatement(sql);
stmt.setString(1,st);
stmt.setString(2,mob);
stmt.setInt(3,Booking_id);
stmt.executeUpdate();
out.println( "status updated" );
}
	catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
        <%
        response.sendRedirect("c.jsp");
        %>
		<body bgcolor="#76b852">
		
			


