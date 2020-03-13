<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration" %>
<%
String Name=request.getParameter("Name");
String Email=request.getParameter("Email");
int Password=Integer.parseInt(request.getParameter("Password"));
String Mobile=request.getParameter("Mobile");
String User_type=request.getParameter("User_type");
String Address=request.getParameter("Address");
 try {
			
			
Class.forName("oracle.jdbc.driver.OracleDriver");
out.println("");
Connection connection = null;
PreparedStatement stmt=null;
ResultSet resultSet = null;  


connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
out.println("");
String sql ="insert into user12 (Name,Email,Password,Mobile,User_type,Address) values(?,?,?,?,?,?)";
stmt = connection.prepareStatement(sql);
stmt.setString(1,Name );
stmt.setString(2,Email );
stmt.setInt(3,Password );
stmt.setString(4,Mobile );
stmt.setString(5,User_type);
stmt.setString(6,Address);


stmt.executeUpdate();
out.println("");

		}
		catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
		<body bgcolor="#76b852">
		<h2 align="center"><font><strong>user registration successfully</strong></font></h2><br>
		<center><a href="front.html"><img src="home.jpg"></a></center>
		<!-- <p><a href="std.jsp">Report</a></p> -->