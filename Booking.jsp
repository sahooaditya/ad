<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration" %>
<%
String Customer_id=(String)session.getAttribute("cid");
String Customer_Name=(String)session.getAttribute("cnm");
%>
<body bgcolor="#A0636C">
<center>
<h2>Welcome Mr.<%=Customer_Name%></h2>
<h2>Plan Your Journey</h2>
<form name="myform" method="post" action="http://localhost:9090/examples/cr/bkcnfrm.jsp">
<table>
<tr><td>From:</td><td><select id="txt1" name="src" onchange="chkdist()">
<option value="bbsr">BBSR</option>
<option value="puri">PURI</option>
<option value="ctc">CTC</option>
<option value="rkl">RKL</option>
</select></td></tr>
<tr><td>To:</td><td><select id="txt2" name="dstn"onchange="chkdist()">
<option value="bbsr">BBSR</option>
<option value="puri">PURI</option>
<option value="ctc">CTC</option>
<option value="rkl">RKL</option>
</select></td></tr>
<tr><td>DOJ:</td><td><input type="date" name="doj" ><br><br></td></tr>
<tr><td>Persons:</td><td><input type="radio" name="sc" value="4" checked>4<br>
  <input type="radio" name="sc" value="6"> 4+<br>
 <tr><td>JourneyType:</td><td><input type="radio" name="jt" id="jt" value="O" checked >OneWay<br>
  <input type="radio" name="jt" id="jt" value="R" onclick="chkdist()"> RoundTrip<br>
  <tr><td>KM:</td><td><input type="text" name="km" id="txt3"></td></tr>
<tr><td>Price:</td><td><input type="text" name="price" id="txt4" >

</td></tr>
<tr><td></td><td><input type="submit" value="BOOK"></td></tr>
</table>
</form>
</center>
</body>
<script>
function chkdist() {
             var dist;
       var price;
       var src = document.getElementById("txt1").value;
       var dstn = document.getElementById("txt2").value;
      if((src=="puri" && dstn=="puri")||(src=="bbsr" && dstn=="bbsr")||(src=="ctc" && dstn=="ctc")||(src=="rkl" && dstn=="rkl"))
      {
       dist=0;
       price=0;
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value=price;
      }
      if((src=="bbsr" && dstn=="puri") ||(src=="puri" && dstn=="bbsr"))
      {
       dist=60;
       price=dist*11+300;
       if (jt=="R")
       {
      price=price*2;
       }
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value = price;
      }

        if((src=="bbsr" && dstn=="ctc") ||(src=="ctc" && dstn=="bbsr"))
      {
       dist=20;
       price=dist*11+300;
       if (jt=="R")
       {
       price=price*2;
       }
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value = price;
      }

if((src=="bbsr" && dstn=="rkl") ||(src=="rkl" && dstn=="bbsr"))
      {
       dist=200;
       price=dist*11+300;
       if (jt=="R")
       {
       price=price*2;
       }
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value = price;
      }
      if((src=="ctc" && dstn=="puri") ||(src=="puri" && dstn=="ctc"))
      {
       dist=50;
       price=dist*11+300;
       if (jt=="R")
       {
       price=price*2;
       }
       document.getElementById("txt3").value =dist;
             document.getElementById("txt4").value = price;
      }
      if((src=="ctc" && dstn=="rkl") ||(src=="rkl" && dstn=="ctc"))
      {
       dist=250;
       price=dist*11+300;
       if (jt=="R")
       {
       price=price*2;
       }
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value = price;
      }
      if((src=="puri" && dstn=="rkl") ||(src=="rkl" && dstn=="puri"))
      {
       dist=300;
       price=dist*11+300;
       if (jt=="R")
       {
       price=price*2;
       }
       document.getElementById("txt3").value = dist;
             document.getElementById("txt4").value = price;
      }
        }
</script>

    <center><a href="front.html"><img src="home.jpg"></a></center>