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
 
    
       %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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


<div class="container">
 
    <div class="row">
      <div class="col-25">
        <label for="cname">Card Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="cname" name="cardName" placeholder="Your Card name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Card Number</label>
      </div>
      <div class="col-75">
        <input type="text" id="cardNumber" name="cardNumber" placeholder="Your Card Number..">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="cvv">CVV</label>
      </div>
      <div class="col-75">
        <input type="text" id="cvv" name="cvv" placeholder="Enter Cvv.">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="phoneNumber">Card Holder Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="cardHolderName" name="cardHolderName" placeholder="Your card holder name">
      </div>
    </div>


    <div class="row">
      <a href="receipt.jsp"><button class = btn btn-success style = "text-align:center; margin-right:35vw; margin-top:20px;"> Make Payment </button></a>
    </div>
  
</div>



</body>
</html>