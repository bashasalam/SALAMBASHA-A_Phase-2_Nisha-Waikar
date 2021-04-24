<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>


<%-- <c:out value="${sessionScope.MyAttribute}" /> --%>

 
    <% 
    Integer flightId = (Integer) session.getAttribute("flightId");
    
    String flightName = (String) session.getAttribute("flightName");
    String source = (String)session.getAttribute("source");
   // String flightDay =  (String) session.getAttribute("flightDay");
    System.out.println(" Alhamdhulillaah");
    String flightTime =  (String) session.getAttribute("flightTime");
    double ticketPrice=  (Double) session.getAttribute("ticketPrice");
    int seats =  (Integer) session.getAttribute("seats");
	String destination = (String)session.getAttribute("destination");
String flight_day = (String)session.getAttribute("flight_day");
String day = (String)session.getAttribute("day");

double totalPrice = seats * ticketPrice;
 
   // System.out.println(ticketPrice);
  //  out.println("Ticket price is "+ticketPrice);
 //   out.println("flight_day is "+flight_day);

  //  out.println("day is "+day);
  //  System.out.println(flightName);
    //System.out.println(sss);
 
  
  // String flightName = (String) request.getAttribute("flightName");



     //   out.println(ticketPrice);
      //  out.println("no of seats are" + seats);
     //   out.println("Flight id is" + flightId);
    
 //   int noOfSeats = Integer.parseInt("seats");
 
  // double price = Double.parseDouble("Ticket_price");
    
// double totalPrice = noOfSeats * price;
    
       %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLYAWAY || BOOK FLIGHT</title>
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
    #background{
        background-image: url('salambasha.png');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
    position: fixed;
    width: 100%;
    max-width: 400px !important;
    
        margin-left: 700px;
    margin-top: 200px;
    
    word-break: break-word;

    }
    input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
  
    </style>
    </head>
    <body>
   
       <ul>
      <li style="text-align:center;"  ><h3>FLYAWAY</h3></li>
         </ul>
         
         <h3> Available Flight Detailss</h3>
 <table style='border:solid 1px black;width:75%;margin-left:auto;margin-right:auto;margin-top:20px;'>
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
         
       <div style='text-alight:center;margin-left:auto;margin-right:auto;width:100%;'>
       
       <a href="customer.jsp"><button class="btn btn-primary"> Book Flight </button></a>
              <button class="btn btn-danger"> Cancel </button>
       
       </div>  
         
         </body>
</html>