<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>


<%-- <c:out value="${sessionScope.MyAttribute}" /> --%>

 
    <% 
    Integer flightId = (Integer) session.getAttribute("flightId");
    String flightName = (String) session.getAttribute("flightName");
    String source = (String)session.getAttribute("source");
    // System.out.println(" Alhamdhulillaah");
    String flightTime =  (String) session.getAttribute("flightTime");
    double ticketPrice=  (Double) session.getAttribute("ticketPrice");
    int seats =  (Integer) session.getAttribute("seats");
  	String destination = (String)session.getAttribute("destination");
    String flight_day = (String)session.getAttribute("flight_day");
    String day = (String)session.getAttribute("day");
    double totalPrice = seats * ticketPrice;

  	String  firstName =	(String)session.getAttribute("firstName");
  	String  lastName =	(String)session.getAttribute("lastName");
	  String email= (String) session.getAttribute("email");
	  String phoneNumber = (String) session.getAttribute("phoneNumber");
	  String age = (String) session.getAttribute("age");
	  String gender = (String) session.getAttribute("gender");
	  String address = (String) session.getAttribute("address");
  //  out.print(address);
 
    
       %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLYAWAY || RECEIPT PAGE</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>

<style>
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color:#aebde1;
    }
    
 
    
    li:last-child {
      border-right: none;
    }
    
    li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;

    }
    
    li a:hover:not(.active) {
      background-color: #111;
    }
    
  * {
  box-sizing: border-box;
}

input[type=text], select, textarea, input[type=email]{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
    </style>
    </head>
    <body>
   
       <ul>
      <li style="text-align:center;"  ><h3>FLYAWAY</h3></li>
         </ul>

<h2 style= "margin-top:25px; text-align:center;"> Congrats!! Your Ticket has been booked successfully</h2>
<h3 style= "margin-top:5px; text-align:center;"> Ticket Details</h3>
<div style="border:1px black solid; width:80%; height:80%; margin-right:10%;margin-left:10%;margin-top:2%; " >

<%-- <p style = "width:100%; font-size:32px">Flight Id: <span>  <%=flightId%></span></p>  
<p style = "width:100%; font-size:32px">Flight Name:  <span>  <%=flightName%></span></p>
<p style = "width:100%; font-size:32px">Flight Day:  <span>  <%=flight_day%></span></p>
<p style = "width:100%; font-size:32px">Flight Time:  <span>  <%=flightTime%></span></p> --%>
<div>

 <table style='border:solid 1px black;width:75%;margin-left:auto;margin-right:auto;margin-top:20px;'>
 <h3 style = "text-align:center;"> Booked Flight Details</h3>
<tr style='border:solid 1px black;'>

<th style='border:solid 1px black;width:25vw;'> Flight Id </th>
<th style='border:solid 1px black;width:25vw;'> Flight Name </th>
<th style='border:solid 1px black;width:25vw;'> From </th>
<th style='border:solid 1px black;width:25vw;'> Destination </th>
<th style='border:solid 1px black;width:25vw;'> Flight Day </th>
<th style='border:solid 1px black;width:25vw;'> Flight Time </th>
<th style='border:solid 1px black;width:25vw;'> Ticket Price </th>
<th style='border:solid 1px black;width:25vw;'> No of Seats </th>
<th style='border:solid 1px black;width:25vw;'> Total Price </th>
</tr>

 			<tr style='border:solid 1px black;'>

<td style='border:solid 1px black; width:25vw;'> <%= flightId %></td>
<td style='border:solid 1px black; width:25vw;'><%= flightName %></td>
<td style='border:solid 1px black; width:25vw;'><%= source %></td>
<td style='border:solid 1px black; width:25vw;'><%= destination %></td>
<td style='border:solid 1px black; width:25vw;'><%= flight_day %></td>
<td style='border:solid 1px black; width:25vw;'><%= flightTime %></td>
<td style='border:solid 1px black; width:25vw;'><%= ticketPrice %></td>   
<td style='border:solid 1px black; width:25vw;'><%= seats %></td>        
<td style='border:solid 1px black; width:25vw;'><%= totalPrice %></td>             
         
   </table>   


</div>
<hr>
<br>

<hr>

<div>

<h3 style = "text-align:center;"> Passenger  Details</h3>
 <table style='border:solid 1px black;width:75%;margin-left:auto;margin-right:auto;margin-top:20px;'>
<tr style='border:solid 1px black;'>

<th style='border:solid 1px black;width:25vw;'> First Name</th>
<th style='border:solid 1px black;width:25vw;'> Last Name </th>
<th style='border:solid 1px black;width:25vw;'> Age </th>
<th style='border:solid 1px black;width:25vw;'> Gender</th>
 <th style='border:solid 1px black;width:25vw;'> Email </th>
<th style='border:solid 1px black;width:25vw;'> Phone number </th>
<%-- <th style='border:solid 1px black;width:25vw;'> Ticket Price </th>
<th style='border:solid 1px black;width:25vw;'> No of Seats </th>
<th style='border:solid 1px black;width:25vw;'> Total Price </th>  --%>
</tr>

 			<tr style='border:solid 1px black;'>

<td style='border:solid 1px black; width:25vw;'> <%= firstName %></td>
<td style='border:solid 1px black; width:25vw;'><%= lastName %></td>
<td style='border:solid 1px black; width:25vw;'><%= age %></td>
<td style='border:solid 1px black; width:25vw;'><%= gender %></td>
 <td style='border:solid 1px black; width:25vw;'><%= email %></td>
<td style='border:solid 1px black; width:25vw;'><%= phoneNumber %></td>
<%-- <td style='border:solid 1px black; width:25vw;'><%= ticketPrice %></td>   
<td style='border:solid 1px black; width:25vw;'><%= seats %></td>        
<td style='border:solid 1px black; width:25vw;'><%= totalPrice %></td>               --%>
         
   </table>   
</div>
<br>
<hr>
<div style="text-align:center;">
	
		<button type="button" class="btn btn-primary" onclick="window.print()">Print</button>

</div>



</div>



         
         

</body>
</html>